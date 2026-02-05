# ----------------------------------------------------------------------
# Qt5-Übersetzer-GUI (Python + PyQt5 + SQLite)
# - Hash-basierte IDs (64-bit aus SHA-256) für Terms
# - Tabellenansicht links (Hash | src | dst)
# - Oben: Quell-/Zielsprache, Wörterbuch-Pfad, Laden/Neu
# - Mitte: Quelltext (oben) -> Übersetzter Text (unten, editierbar)
# - Unten: Schnell-Eingabe + "Translate"-Button
# - Buttons: Reset, Undo(10), Redo(10), Speichern
# ----------------------------------------------------------------------
import sys, os, sqlite3, hashlib, unicodedata, re
from collections     import deque
from dataclasses     import dataclass
from typing          import Optional, List, Tuple

from PyQt5.QtCore    import Qt, QItemSelectionModel
from PyQt5.QtGui     import QFont, QTextOption
from PyQt5.QtGui     import QTextCursor
from PyQt5.QtWidgets import (
    QApplication, QMainWindow, QWidget, QFileDialog, QMessageBox,
    QVBoxLayout, QHBoxLayout, QFormLayout, QLabel, QComboBox,
    QLineEdit, QPushButton, QTextEdit, QTableWidget, QTableWidgetItem,
    QSplitter, QFrame, QCheckBox
)

# ---------- DB-Teil ----------
def norm(txt: str) -> str:
    return unicodedata.normalize("NFC", txt).strip().lower()

def term_hash64(lang: str, text: str) -> int:
    n = norm(text)
    h = hashlib.sha256((lang + "\0" + n).encode("utf-8")).digest()
    # WICHTIG: als signed int64 interpretieren → passt in SQLite INTEGER
    return int.from_bytes(h[:8], "big", signed=True)

def to_hex64(x: int) -> str:
    return f"{(x & ((1 << 64) - 1)):016x}"

SCHEMA = """
PRAGMA journal_mode=WAL;
CREATE TABLE IF NOT EXISTS terms(
    term_id     INTEGER PRIMARY KEY,
    lang        TEXT NOT NULL,
    text        TEXT NOT NULL,
    norm_text   TEXT NOT NULL,
    UNIQUE(lang, norm_text)
);
CREATE TABLE IF NOT EXISTS translations(
    src_term_id INTEGER NOT NULL,
    tgt_term_id INTEGER NOT NULL,
    confidence  REAL DEFAULT 1.0,
    source      TEXT,
    number      TEXT CHECK (number IN ('Singular','Plural')),
    is_noun     INTEGER DEFAULT 0,
    is_adj      INTEGER DEFAULT 0,
    is_verb     INTEGER DEFAULT 0,
    is_fem      INTEGER DEFAULT 0,
    is_mask     INTEGER DEFAULT 0,
    PRIMARY KEY (src_term_id, tgt_term_id),
    FOREIGN KEY (src_term_id) REFERENCES terms(term_id),
    FOREIGN KEY (tgt_term_id) REFERENCES terms(term_id)
);
CREATE INDEX IF NOT EXISTS idx_terms_lang_norm ON terms(lang, norm_text);
"""

@dataclass
class Term:
    term_id: int
    lang: str
    text: str
    norm_text: str

class TranslatorDB:
    def __init__(self):
        self.conn: Optional[sqlite3.Connection] = None
        self.path: Optional[str] = None

    def connect(self, path: str, create_if_missing: bool = True):
        # wenn laden ohne Erstellen, Datei muss existieren
        if not create_if_missing and not os.path.exists(path):
            raise FileNotFoundError(f"Datei nicht gefunden: {path}")

        init_needed = (not os.path.exists(path)) and create_if_missing
        self.conn = sqlite3.connect(path)
        self.conn.execute("PRAGMA foreign_keys=ON;")
        # Schema sicherstellen (bei Neu ebenso wie bei vorhandenen DBs)
        if init_needed:
            self.conn.executescript(SCHEMA)
        else:
            self.conn.executescript(SCHEMA)
            
        cols = {row[1] for row in self.conn.execute("PRAGMA table_info(translations)")}
        need_alter = []
        if "number" not in cols:
            need_alter.append("ALTER TABLE translations ADD COLUMN number TEXT CHECK (number IN ('Singular','Plural'))")
        for cname in ("is_noun","is_adj","is_verb","is_fem","is_mask"):
            if cname not in cols:
                need_alter.append(f"ALTER TABLE translations ADD COLUMN {cname} INTEGER DEFAULT 0")
        for sql in need_alter:
            self.conn.execute(sql)
        
        self.conn.commit()
        self.path = path
    
    def close(self):
        if self.conn:
            self.conn.close()
            self.conn = None
            self.path = None
        
    def ensure(self):
        if self.conn is None:
            raise RuntimeError("Keine Datenbank geladen.")

    def upsert_term(self, lang: str, text: str) -> int:
        self.ensure()
        nid = term_hash64(lang, text)
        try:
            self.conn.execute(
                "INSERT INTO terms(term_id, lang, text, norm_text) VALUES (?, ?, ?, ?)",
                (nid, lang, text, norm(text)),
            )
            self.conn.commit()
        except sqlite3.IntegrityError:
            pass  # existiert bereits
        return nid

    def get_term_text(self, term_id: int) -> Optional[Term]:
        self.ensure()
        cur = self.conn.execute("SELECT term_id, lang, text, norm_text FROM terms WHERE term_id=?", (term_id,))
        row = cur.fetchone()
        if not row: return None
        return Term(*row)

    def get_or_create_term(self, lang: str, text: str) -> Term:
        tid = self.upsert_term(lang, text)
        t = self.get_term_text(tid)
        assert t is not None
        return t

    def add_translation(self, src_lang: str, src_text: str, dst_lang: str, dst_text: str,
        confidence: float = 1.0, source: Optional[str] = None,
        number: Optional[str] = None,
        is_noun: int = 0, is_adj: int = 0, is_verb: int = 0,
        is_fem: int = 0, is_mask: int = 0):
        self.ensure()
        s_id = self.upsert_term(src_lang, src_text)
        t_id = self.upsert_term(dst_lang, dst_text)
        self.conn.execute(
            """INSERT OR REPLACE INTO translations
               (src_term_id, tgt_term_id, confidence, source, number,
                is_noun, is_adj, is_verb, is_fem, is_mask)
               VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)""",
            (s_id, t_id, confidence, source, number,
             int(is_noun), int(is_adj), int(is_verb), int(is_fem), int(is_mask))
        )
        self.conn.commit()
        return s_id, t_id

    def get_translation_meta(self, src_lang: str, src_text: str, dst_lang: str, dst_text: str):
        self.ensure()
        s_id = self.upsert_term(src_lang, src_text)
        t_id = self.upsert_term(dst_lang, dst_text)
        cur = self.conn.execute(
            """SELECT number, is_noun, is_adj, is_verb, is_fem, is_mask
               FROM translations WHERE src_term_id=? AND tgt_term_id=?""",
            (s_id, t_id)
        )
        return cur.fetchone()  # Tuple or None
    
    def best_translation(self, src_lang: str, src_text: str, dst_lang: str) -> Optional[str]:
        """Gibt die beste Zieltext-Variante zurück (oder None)."""
        self.ensure()
        s_id = self.upsert_term(src_lang, src_text)  # sorgt für konsistente ID
        cur = self.conn.execute("""
            SELECT t.text, tr.confidence
            FROM translations tr
            JOIN terms t ON t.term_id = tr.tgt_term_id
            WHERE tr.src_term_id=? AND t.lang=?
            ORDER BY tr.confidence DESC
            LIMIT 1
        """, (s_id, dst_lang))
        row = cur.fetchone()
        return row[0] if row else None

    def fetch_pairs(self, src_lang: str, dst_lang: str) -> List[Tuple[int, str, str]]:
        """Liste aller (hash, src, dst) für die aktuelle Sprachrichtung."""
        self.ensure()
        cur = self.conn.execute("""
            SELECT s.term_id, s.text AS src_text, t.text AS dst_text
            FROM translations tr
            JOIN terms s ON s.term_id = tr.src_term_id
            JOIN terms t ON t.term_id = tr.tgt_term_id
            WHERE s.lang=? AND t.lang=?
            ORDER BY s.norm_text ASC
        """, (src_lang, dst_lang))
        return [(row[0], row[1], row[2]) for row in cur.fetchall()]

    def candidates(self, src_lang: str, src_text: str, dst_lang: str, limit: int = 100):
        """Alle Ziel-Kandidaten für ein Quell-Wort/-Phrase, absteigend nach confidence."""
        self.ensure()
        s_id = self.upsert_term(src_lang, src_text)
        cur = self.conn.execute("""
            SELECT t.text, tr.confidence, IFNULL(tr.source, '')
            FROM translations tr
            JOIN terms t ON t.term_id = tr.tgt_term_id
            WHERE tr.src_term_id=? AND t.lang=?
            ORDER BY tr.confidence DESC
            LIMIT ?
        """, (s_id, dst_lang, limit))
        return cur.fetchall()  # List[Tuple[str,float,str]]
        
    def delete_translation(self, src_lang: str, src_text: str, dst_lang: str, dst_text: str):
        self.ensure()
        s_id = self.upsert_term(src_lang, src_text)
        t_id = self.upsert_term(dst_lang, dst_text)
        self.conn.execute(
            "DELETE FROM translations WHERE src_term_id=? AND tgt_term_id=?",
            (s_id, t_id)
        )
        self.conn.commit()

    def cleanup_orphan_terms(self):
        self.ensure()
        self.conn.execute("""
            DELETE FROM terms
            WHERE term_id NOT IN (SELECT src_term_id FROM translations)
              AND term_id NOT IN (SELECT tgt_term_id FROM translations)
        """)
        self.conn.commit()
        
# ---------- Hilfsfunktionen Übersetzung (einfaches Token-Mapping) ----------
TOKEN_RE = re.compile(r"\s+|[\w'-]+|[^\w\s]", re.UNICODE)

# ---------------------------------------------------------------------------
# Sehr einfache tokenbasierte Übersetzung:
# - Splittet in Wörter, Whitespaces und Satzzeichen
# - Für jedes *Wort*-Token DB-Lookup; fällt nichts an -> Original behalten
# - Groß-/Kleinschreibung des Quellworts wird auf das Ziel gemappt
# - Whitespace & Satzzeichen werden 1:1 übernommen (Spaces bleiben erhalten)
# ---------------------------------------------------------------------------
def translate_string_simple(db: TranslatorDB, src_lang: str, dst_lang: str, text: str) -> str:
    def preserve_case(src_word: str, dst_word: str) -> str:
        if not dst_word: return dst_word
        if src_word.istitle(): return dst_word[:1].upper() + dst_word[1:]
        if src_word.isupper(): return dst_word.upper()
        return dst_word

    tokens = TOKEN_RE.findall(text)
    out = []
    for tok in tokens:
        if tok.isspace():
            out.append(tok); continue
        if not tok[0].isalnum():
            out.append(tok); continue
        best = db.best_translation(src_lang, tok, dst_lang)
        out.append(preserve_case(tok, best if best else tok))
    return "".join(out)
    
# ---------- GUI ----------
LANG_CHOICES = ["DEU", "ENU", "FRE"]  # German, English, French (de/en/fr)
LANG_PLACEHOLDER = {
        "DEU": "Text auf Deutsch hier eintippen …",
        "ENU": "Text auf Englisch hier eintippen …",
        "FRE": "Texte en français ici …",
    }
class MainWindow(QMainWindow):
    def _update_quick_placeholder(self):
        lang = self.src_combo.currentText()
        self.quick_input.setPlaceholderText(
            LANG_PLACEHOLDER.get(
            lang, "Text hier eintippen …"))
            
    def _word_under_cursor(self) -> str:
        cursor = self.src_edit.textCursor()
        if cursor.hasSelection():
            text = cursor.selectedText()
        else:
            cursor.select(QTextCursor.WordUnderCursor)
            text = cursor.selectedText()
        # Nur alphanumerische Wörter (bindestrich/apostroph optional)
        text = text.strip()
        if not text:
            return ""
        # optional: exakt wie der Tokenizer
        if not re.match(r"^[\w'-]+$", text, re.UNICODE):
            return ""
        return text
    
    def _labeled_panel(self, label_text: str, inner_widget: QWidget) -> QWidget:
        w = QWidget()
        v = QVBoxLayout(w)
        v.setContentsMargins(0, 0, 0, 0)
        v.addWidget(QLabel(label_text))
        v.addWidget(inner_widget)
        return w
    
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Hash-Translator (Qt5)")
        self.resize(1100, 700)

        self.db = TranslatorDB()

        # Undo/Redo für Zieltext (10 Schritte)
        self.undo_stack: deque[str] = deque(maxlen=10)
        self.redo_stack: deque[str] = deque(maxlen=10)
        self._baseline_target: str = ""  # für Reset

        # --- Layout: Splitter links Tabelle | rechts Formular/Edits ---
        splitter = QSplitter(Qt.Horizontal, self)
        left = QWidget(self)
        right = QWidget(self)
        splitter.addWidget(left)
        splitter.addWidget(right)
        splitter.setStretchFactor(0, 1)
        splitter.setStretchFactor(1, 2)
        self.setCentralWidget(splitter)

        # Linke Tabelle
        left_layout = QVBoxLayout(left)
        self.table = QTableWidget(0, 3, left)
        self.table.setHorizontalHeaderLabels(["Hash", "Source", "Target"])
        self.table.horizontalHeader().setStretchLastSection(True)
        self.table.setSelectionBehavior(QTableWidget.SelectRows)
        self.table.setEditTriggers(QTableWidget.NoEditTriggers)
        left_layout.addWidget(self.table)

        self.del_btn = QPushButton("Löschen")
        left_layout.addWidget(self.del_btn)
        self.del_btn.clicked.connect(self.on_delete_selected)

        # Rechte Seite: Form + Edits + Buttons
        right_layout = QVBoxLayout(right)

        # Formular oben
        form = QFormLayout()
        self.src_combo = QComboBox(); self.src_combo.addItems(LANG_CHOICES)
        self.dst_combo = QComboBox(); self.dst_combo.addItems(LANG_CHOICES); self.dst_combo.setCurrentIndex(1)
        form.addRow(QLabel("Quelle:"), self.src_combo)
        form.addRow(QLabel("Ziel:"), self.dst_combo)

        path_row = QHBoxLayout()
        self.db_path = QLineEdit()
        self.db_path.setPlaceholderText("Pfad zur Wörterbuch-DB (SQLite) …")
        browse_btn = QPushButton("…")
        load_btn = QPushButton("Laden")
        new_btn = QPushButton("Neu anlegen")
        path_row.addWidget(self.db_path, 1)
        path_row.addWidget(browse_btn)
        path_row.addWidget(load_btn)
        path_row.addWidget(new_btn)
        form.addRow(QLabel("Wörterbuch:"), path_row)
        right_layout.addLayout(form)

        # Quell- und Zieltext
        mono = QFont("DejaVu Sans Mono"); mono.setPointSize(10)

        self.src_edit = QTextEdit()
        self.src_edit.setPlaceholderText("Quelltext hier eingeben …")
        self.src_edit.setFont(mono)
        self.src_edit.setWordWrapMode(QTextOption.WrapAtWordBoundaryOrAnywhere)

        self.tgt_edit = QTextEdit()
        self.tgt_edit.setPlaceholderText("Übersetzter Text (editierbar) …")
        self.tgt_edit.setFont(mono)
        self.tgt_edit.setWordWrapMode(QTextOption.WrapAtWordBoundaryOrAnywhere)

        # Panels mit Labeln
        src_panel = self._labeled_panel("Quelltext (oben):", self.src_edit)
        tgt_panel = self._labeled_panel("Übersetzter Text (unten):", self.tgt_edit)

        # VERTIKAL-SPLITTER für die zwei Eingabeboxen
        self.edits_splitter = QSplitter(Qt.Vertical)
        self.edits_splitter.addWidget(src_panel)
        self.edits_splitter.addWidget(tgt_panel)
        self.edits_splitter.setStretchFactor(0, 1)
        self.edits_splitter.setStretchFactor(1, 1)

        # Vorschlags-StringGrid rechts
        self.sugg_table = QTableWidget(0, 3, self)
        self.sugg_table.setHorizontalHeaderLabels(["Quelle", "Vorschlag", "Conf"])
        self.sugg_table.horizontalHeader().setStretchLastSection(True)
        self.sugg_table.setSelectionBehavior(QTableWidget.SelectRows)
        self.sugg_table.setEditTriggers(QTableWidget.NoEditTriggers)
        self.sugg_table.setMinimumWidth(320)

        sugg_panel = QWidget()
        sugg_layout = QVBoxLayout(sugg_panel)
        sugg_layout.setContentsMargins(0, 0, 0, 0)
        sugg_layout.addWidget(QLabel("Vorschläge (Wort unter Cursor)"))
        sugg_layout.addWidget(self.sugg_table, 1)

        # HORIZONTAL-SPLITTER: links Edits, rechts Vorschläge
        self.right_splitter = QSplitter(Qt.Horizontal)
        self.right_splitter.addWidget(self.edits_splitter)
        self.right_splitter.addWidget(sugg_panel)
        self.right_splitter.setStretchFactor(0, 3)
        self.right_splitter.setStretchFactor(1, 2)

        # In das rechte Haupt-Layout einsetzen
        right_layout.addWidget(self.right_splitter, 1)

        # Buttons unter dem Zieltext
        vlayout = QVBoxLayout()
        btn_row = QHBoxLayout()
        self.reset_btn = QPushButton("Reset")
        self.undo_btn  = QPushButton("Undo (10)")
        self.redo_btn  = QPushButton("Redo (10)")
        self.save_btn  = QPushButton("Speichern")
        
        btn_row.addWidget(self.reset_btn)
        btn_row.addWidget(self.undo_btn )
        btn_row.addWidget(self.redo_btn )
        btn_row.addStretch(1)
        
        self.save_btn.setMaximumWidth(120)
        
        vlayout.addLayout(btn_row)
        
        chk_row = QHBoxLayout()
        self.number_combo = QComboBox()
        self.number_combo.addItems(["", "Singular", "Plural"])  # "" = nicht gesetzt/egal
        self.chk_noun = QCheckBox("Substantiv")
        self.chk_adj  = QCheckBox("Adjektiv")
        self.chk_verb = QCheckBox("Verb")
        self.chk_fem  = QCheckBox("feminin")
        self.chk_mask = QCheckBox("maskulin")

        vlayout.addWidget(self.save_btn)
        
        chk_row.addWidget(QLabel("Wortart:"))
        chk_row.addWidget(self.number_combo)
        chk_row.addWidget(self.chk_noun)
        chk_row.addWidget(self.chk_adj )
        chk_row.addWidget(self.chk_verb)
        chk_row.addWidget(self.chk_fem )
        chk_row.addWidget(self.chk_mask)
        chk_row.addStretch(1)
        
        vlayout.addLayout(chk_row)
        right_layout.addLayout(vlayout)

        # Untere Schnell-Übersetzung
        sep = QFrame(); sep.setFrameShape(QFrame.HLine); sep.setFrameShadow(QFrame.Sunken)
        right_layout.addWidget(sep)

        quick_row = QHBoxLayout()
        self.quick_input = QLineEdit()
        self.quick_input.setPlaceholderText("Vokabeln/Sätze hier eintippen …")
        self.quick_btn = QPushButton("Translate")
        self.quick_btn.setMaximumWidth(140)
        quick_row.addWidget(self.quick_input, 1)
        
        right_layout.addLayout(quick_row)
        right_layout.addWidget(self.quick_btn)

        # --- Signals ---
        browse_btn.clicked.connect(self.on_browse)
        load_btn.clicked.connect(self.on_load)
        new_btn.clicked.connect(self.on_new)
        self.save_btn.clicked.connect(self.on_save)
        self.reset_btn.clicked.connect(self.on_reset)
        self.undo_btn.clicked.connect(self.on_undo)
        self.redo_btn.clicked.connect(self.on_redo)
        self.quick_btn.clicked.connect(self.on_quick_translate)
        self.table.itemSelectionChanged.connect(self.on_table_select)
        self.src_combo.currentIndexChanged.connect(self.refresh_table)
        self.dst_combo.currentIndexChanged.connect(self.refresh_table)
        self.src_edit.textChanged.connect(self.on_source_changed)
        self.tgt_edit.textChanged.connect(self.on_target_changed_user)
        self.src_edit.cursorPositionChanged.connect(self.on_source_cursor_changed)
        self.sugg_table.itemDoubleClicked.connect(self.on_suggestion_double_clicked)
        
        # Initial-States
        self.update_buttons_enabled(False)
        
        self._update_quick_placeholder()
        self.src_combo.currentIndexChanged.connect(self._update_quick_placeholder)
        
        self.number_combo.currentIndexChanged.connect(self.on_attrs_changed)
        for w in (
            self.chk_noun ,
            self.chk_adj  ,
            self.chk_verb ,
            self.chk_fem  ,
            self.chk_mask):
            w.toggled.connect(self.on_attrs_changed)

    def on_attrs_changed(self):
        if not self.db.conn:
            return
        # wir brauchen aktuelle src/dst-Texte aus den Edits
        src_text = self.src_edit.toPlainText().strip()
        dst_text = self.tgt_edit.toPlainText().strip()
        if not src_text or not dst_text:
            return
        src_lang = self.src_combo.currentText()
        dst_lang = self.dst_combo.currentText()
        number = self.number_combo.currentText() or None
        self.db.add_translation(
            src_lang, src_text, dst_lang, dst_text,
            confidence=1.0, source="gui",
            number  = number,
            is_noun = self.chk_noun.isChecked(),
            is_adj  = self.chk_adj .isChecked(),
            is_verb = self.chk_verb.isChecked(),
            is_fem  = self.chk_fem .isChecked(),
            is_mask = self.chk_mask.isChecked()
        )
        # Tabelle ggf. aktualisieren, falls du später Spalten für Merkmale anzeigst
        # self.refresh_table()
        
    def on_delete_selected(self):
        if not self.db.conn:
            return
        rows = self.table.selectionModel().selectedRows()
        if not rows:
            QMessageBox.information(self, "Hinweis", "Bitte eine oder mehrere Zeilen wählen.")
            return

        src_lang = self.src_combo.currentText()
        dst_lang = self.dst_combo.currentText()
        count = 0

        for idx in rows:
            r = idx.row()
            src_text = self.table.item(r, 1).text()
            dst_text = self.table.item(r, 2).text()
            try:
                self.db.delete_translation(src_lang, src_text, dst_lang, dst_text)
                count += 1
            except Exception as e:
                QMessageBox.warning(self,
                "Löschen fehlgeschlagen",
                f"{src_text} → {dst_text}: {e}")
        # optional aufräumen & refresh
        try:
            self.db.cleanup_orphan_terms()
        finally:
            self.refresh_table()
            self.statusBar().showMessage(f"{count} Eintrag/Einträge gelöscht.", 3000)

    def on_source_cursor_changed(self):
        if not self.db.conn:
            self.sugg_table.setRowCount(0); return
        src_word = self._word_under_cursor()
        if not src_word:
            self.sugg_table.setRowCount(0); return

        src_lang = self.src_combo.currentText()
        dst_lang = self.dst_combo.currentText()
        if src_lang == dst_lang:
            self.sugg_table.setRowCount(0); return

        rows = self.db.candidates(src_lang, src_word, dst_lang, limit=100)

        # Tabelle füllen
        self.sugg_table.setRowCount(len(rows))
        for r, (tgt_text, conf, source) in enumerate(rows):
            self.sugg_table.setItem(r, 0, QTableWidgetItem(src_word))
            self.sugg_table.setItem(r, 1, QTableWidgetItem(tgt_text))
            self.sugg_table.setItem(r, 2, QTableWidgetItem(f"{conf:.2f}"))
    
    def on_suggestion_double_clicked(self, item):
        r = item.row()
        if r < 0:
            return
        tgt = self.sugg_table.item(r, 1).text() if self.sugg_table.item(r, 1) else ""
        if not tgt:
            return

        # In der unteren Edit-Box an Cursorposition einfügen oder Auswahl ersetzen
        cursor = self.tgt_edit.textCursor()
        # falls noch keine Position gesetzt, ans Ende
        if not cursor:
            self.tgt_edit.moveCursor(QTextCursor.End)
            cursor = self.tgt_edit.textCursor()

        # Undo/Redo sauber behandeln
        prev = self.tgt_edit.toPlainText()
        cursor.insertText(tgt)
        self._last_tgt_text = self.tgt_edit.toPlainText()
        if prev != self._last_tgt_text:
            self.undo_stack.append(prev)
            if len(self.undo_stack) > self.undo_stack.maxlen:
                self.undo_stack.popleft()
            self.redo_stack.clear()
    
    # ---------- Button-/UI-Handler ----------
    def update_buttons_enabled(self, has_db: bool):
        self.save_btn.setEnabled(has_db)
        self.reset_btn.setEnabled(has_db)
        self.undo_btn.setEnabled(has_db)
        self.redo_btn.setEnabled(has_db)
        self.quick_btn.setEnabled(has_db)

    def on_browse(self):
        path, _ = QFileDialog.getSaveFileName(self,
        "Wörterbuch-Datei wählen/erstellen", "",
        "SQLite DB (*.db *.sqlite);;Alle Dateien (*)")
        if path:
            self.db_path.setText(path)

    def on_load(self):
        # Open-Dialog, unabhängig vom Pfadfeld
        start_dir = os.path.dirname(self.db.path) if getattr(self.db, "path", None) else ""
        path, _ = QFileDialog.getOpenFileName(
            self, "Wörterbuch laden", start_dir,
            "SQLite DB (*.db *.sqlite);;Alle Dateien (*)"
        )
        if not path:
            return
        try:
            # echte „laden“-Semantik: nicht neu anlegen
            # (optional) vorherige Verbindung schließen
            if self.db.conn:
                self.db.close()
            self.db.connect(path, create_if_missing=False)
            self.db_path.setText(path)  # Feld nur zur Anzeige aktualisieren
            self.update_buttons_enabled(True)
            self.refresh_table()
            self.statusBar().showMessage(f"Geladen: {path}", 5000)
        except FileNotFoundError as e:
            QMessageBox.warning(self, "Datei nicht gefunden", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Fehler beim Laden", str(e))

    def on_new(self):
        start_dir = os.path.dirname(self.db.path) if getattr(self.db, "path", None) else ""
        path, _ = QFileDialog.getSaveFileName(
            self, "Neue Wörterbuch-DB anlegen", start_dir,
            "SQLite DB (*.db *.sqlite);;Alle Dateien (*)"
        )
        if not path:
            return
        try:
            if os.path.exists(path):
                r = QMessageBox.question(
                    self, "Überschreiben?",
                    "Datei existiert bereits. Neu initialisieren (Schema prüfen/setzen)?",
                    QMessageBox.Yes | QMessageBox.No, QMessageBox.No
                )
                if r != QMessageBox.Yes:
                    return
            if self.db.conn:
                self.db.close()
            self.db.connect(path, create_if_missing=True)
            self.db_path.setText(path)
            self.update_buttons_enabled(True)
            self.refresh_table()
            self.statusBar().showMessage(f"Neu/Initialisiert: {path}", 5000)
        except Exception as e:
            QMessageBox.critical(self, "Fehler", str(e))
            
    def on_save(self):
        if not self.db.conn:
            QMessageBox.warning(self, "Hinweis", "Kein Wörterbuch geladen.")
            return
            
        src_lang = self.src_combo.currentText()
        dst_lang = self.dst_combo.currentText()
        
        src_text = self.src_edit.toPlainText().strip()
        dst_text = self.tgt_edit.toPlainText().strip()
        
        if not src_text:
            QMessageBox.information(self, "Hinweis", "Quelltext ist leer.")
            return
        if src_lang == dst_lang:
            QMessageBox.information(self, "Hinweis", "Quelle und Ziel sind identisch.")
            return
        
        number  = self.number_combo.currentText() or None
        is_noun = self.chk_noun.isChecked()
        is_adj  = self.chk_adj.isChecked()
        is_verb = self.chk_verb.isChecked()
        is_fem  = self.chk_fem.isChecked()
        is_mask = self.chk_mask.isChecked()
        
        try:
            self.db.add_translation(
                src_lang, src_text, dst_lang, dst_text,
                confidence=1.0, source="gui",
                number=number,
                is_noun=is_noun, is_adj=is_adj, is_verb=is_verb,
                is_fem=is_fem, is_mask=is_mask
            )
            self._baseline_target = dst_text
            self.undo_stack.clear()
            self.redo_stack.clear()
            self.refresh_table()
            self.statusBar().showMessage("Gespeichert.", 3000)
            
        except Exception as e:
            QMessageBox.critical(self, "Fehler beim Speichern", str(e))

    def on_reset(self):
        self.set_target_text(self._baseline_target)
        self.undo_stack.clear()
        self.redo_stack.clear()

    def on_undo(self):
        if not self.undo_stack:
            return
        cur = self.tgt_edit.toPlainText()
        last = self.undo_stack.pop()
        self.redo_stack.append(cur)
        self.set_target_text(last)

    def on_redo(self):
        if not self.redo_stack:
            return
        cur = self.tgt_edit.toPlainText()
        nxt = self.redo_stack.pop()
        self.undo_stack.append(cur)
        self.set_target_text(nxt)

    def on_quick_translate(self):
        if not self.db.conn:
            QMessageBox.information(self, "Hinweis", "Bitte zuerst ein Wörterbuch laden/anlegen.")
            return

        src = self.quick_input.text()
        if not src.strip():
            return

        src_lang = self.src_combo.currentText()
        dst_lang = self.dst_combo.currentText()
        if src_lang == dst_lang:
            QMessageBox.information(self, "Hinweis", "Quelle und Ziel sind identisch.")
            return

        exact = self.db.best_translation(src_lang, src.strip(), dst_lang)
        translated = exact if exact is not None else translate_string_simple(self.db, src_lang, dst_lang, src)

        self._baseline_target = translated or ""
        self.set_target_text(self._baseline_target)
        self.undo_stack.clear()
        self.redo_stack.clear()
        
    def on_table_select(self):
        rows = self.table.selectionModel().selectedRows()
        if not rows: return
        r = rows[0].row()
        src_text = self.table.item(r, 1).text()
        dst_text = self.table.item(r, 2).text()
        self.set_source_text(src_text)
        self._baseline_target = dst_text
        self.set_target_text(dst_text)
        self.undo_stack.clear()
        self.redo_stack.clear()
        
        src_lang = self.src_combo.currentText()
        dst_lang = self.dst_combo.currentText()
        meta = self.db.get_translation_meta(src_lang, src_text, dst_lang, dst_text)
        if meta:
            number, is_noun, is_adj, is_verb, is_fem, is_mask = meta
            # Anzahl
            idx = self.number_combo.findText(number or "", Qt.MatchFixedString)
            self.number_combo.setCurrentIndex(idx if idx >= 0 else 0)
            # Checks
            self.chk_noun.setChecked(bool(is_noun))
            self.chk_adj.setChecked (bool(is_adj ))
            self.chk_verb.setChecked(bool(is_verb))
            self.chk_fem.setChecked (bool(is_fem ))
            self.chk_mask.setChecked(bool(is_mask))
        else:
            self.number_combo.setCurrentIndex(0)
            for w in (self.chk_noun, self.chk_adj, self.chk_verb, self.chk_fem, self.chk_mask):
                w.setChecked(False)

    def on_source_changed(self):
        # Nur arbeiten, wenn DB aktiv und oben tatsächlich Inhalt steht
        if not self.db.conn:
            return
        txt = self.src_edit.toPlainText()
        if not txt.strip():
            return

        src_lang = self.src_combo.currentText()
        dst_lang = self.dst_combo.currentText()
        if src_lang == dst_lang:
            return

        # Satzgenaue Übersetzung versuchen:
        best = self.db.best_translation(src_lang, txt.strip(), dst_lang)
        suggestion = best if best else translate_string_simple(self.db, src_lang, dst_lang, txt)

        # Zieltext nur dann überschreiben, wenn User ihn noch nicht verändert hat
        if self.tgt_edit.toPlainText().strip() == self._baseline_target:
            self._baseline_target = suggestion or ""
            self.set_target_text(self._baseline_target)
            self.undo_stack.clear()
            self.redo_stack.clear()
    
    def on_target_changed_user(self):
        """Wenn User den Zieltext ändert: in Undo-Stack aufnehmen."""
        # Diese Methode wird auch von set_target_text ausgelöst – dort temporär blockieren
        if getattr(self, "_block_target_change", False):
            return
        # Push current state to undo stack, clear redo
        cur = self.tgt_edit.toPlainText()
        # Nur sinnvoll pushen, wenn Änderung nicht identisch zur letzten ist
        if not self.undo_stack or self.undo_stack[-1] != cur:
            # Wir wollen den Zustand VOR der Änderung speichern – dafür bräuchten wir das vorige.
            # Vereinfachung: wir merken uns einfach den vorherigen Text in einem Attribut.
            # Um das sauber zu machen, halten wir uns den letzten Text.
            prev = getattr(self, "_last_tgt_text", self._baseline_target)
            if prev != cur:
                self.undo_stack.append(prev)
                if len(self.undo_stack) > self.undo_stack.maxlen:
                    self.undo_stack.popleft()
                self.redo_stack.clear()
        self._last_tgt_text = cur

    # ---------- Utility ----------
    def set_source_text(self, text: str):
        self.src_edit.blockSignals(True)
        self.src_edit.setPlainText(text)
        self.src_edit.blockSignals(False)

    def set_target_text(self, text: str):
        self._block_target_change = True
        self.tgt_edit.blockSignals(True)
        self.tgt_edit.setPlainText(text)
        self.tgt_edit.blockSignals(False)
        self._block_target_change = False
        self._last_tgt_text = text

    def refresh_table(self):
        if not self.db.conn:
            self.table.setRowCount(0)
            return
        src_lang = self.src_combo.currentText()
        dst_lang = self.dst_combo.currentText()
        try:
            rows = self.db.fetch_pairs(src_lang, dst_lang)
        except Exception as e:
            QMessageBox.critical(self, "DB-Fehler", str(e))
            return
        self.table.setRowCount(len(rows))
        for r, (hid, s, t) in enumerate(rows):
            self.table.setItem(r, 0, QTableWidgetItem(to_hex64(hid)))
            self.table.setItem(r, 1, QTableWidgetItem(s))
            self.table.setItem(r, 2, QTableWidgetItem(t))
        if rows:
            self.table.selectRow(0)
        else:
            self.table.clearSelection()

def main():
    app = QApplication(sys.argv)
    win = MainWindow()
    win.show()
    sys.exit(app.exec_())

if __name__ == "__main__":
    main()
