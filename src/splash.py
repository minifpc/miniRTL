# ===== splash.py =====
# PyQt5-Splash-Screen mit Steuerkommandos über stdout der 2. Anwendung:
# PROGRESS <0-100>, TEXT <msg>, HIDE, SHOW, DONE, FAIL <msg>
#
# Aufrufbeispiele:
#   python splash.py                       -> startet client_showhide.py (Demo)
#   python splash.py gui --config cfg.json -> startet client_showhide.py gui --config cfg.json
#   python splash.py python -u client.py gui --config cfg.json  -> explizites Programm
#
# Hinweis: Für Python-Worker empfiehlt sich -u (ungepuffert) oder print(..., flush=True)

import sys
import os
import html
from PyQt5 import QtCore, QtGui, QtWidgets

class SplashWindow(QtWidgets.QWidget):
    def __init__(self, image_path: str = None, parent=None):
        super().__init__(parent)
        # Optik/Verhalten
        self.setWindowFlag(QtCore.Qt.SplashScreen, True)
        self.setWindowFlag(QtCore.Qt.FramelessWindowHint, True)
        self.setAttribute(QtCore.Qt.WA_TranslucentBackground, True)
        self.setWindowModality(QtCore.Qt.ApplicationModal)

        self._build_ui(image_path)
        self._apply_style()
        QtCore.QTimer.singleShot(0, self._center_on_screen)

        # Prozess/Parser
        self.proc = None
        self._buffer = b""
        self._finished = False  # via DONE/_on_finished
        self._anims = []        # Animationen am Leben halten

    # --- UI ---
    def _build_ui(self, image_path):
        outer = QtWidgets.QVBoxLayout(self)
        outer.setContentsMargins(20, 20, 20, 20)

        card = QtWidgets.QFrame(objectName="card")
        v = QtWidgets.QVBoxLayout(card)
        v.setContentsMargins(24, 24, 24, 24)
        v.setSpacing(16)

        self.image = QtWidgets.QLabel(alignment=QtCore.Qt.AlignCenter, objectName="image")
        if image_path and os.path.exists(image_path):
            pix = QtGui.QPixmap(image_path)
            self.image.setPixmap(pix.scaled(420, 220, QtCore.Qt.KeepAspectRatio, QtCore.Qt.SmoothTransformation))
        else:
            self.image.setText("<i>(kein Bild gefunden)</i>")
        v.addWidget(self.image)

        self.status = QtWidgets.QLabel("Starte…", alignment=QtCore.Qt.AlignCenter, objectName="status")
        v.addWidget(self.status)

        self.progress = QtWidgets.QProgressBar()
        self.progress.setRange(0, 100)
        self.progress.setValue(0)
        self.progress.setTextVisible(True)
        v.addWidget(self.progress)

        outer.addWidget(card)

    def _apply_style(self):
        self.setFixedSize(520, 380)
        self.setStyleSheet(
            """
            #card { background: rgba(30,30,34, 230); border-radius: 16px; }
            QLabel#status { color: #EAEAEA; font-size: 14px; }
            QLabel#image { color: #B0B0B0; }
            QProgressBar { height: 16px; border-radius: 8px; background: #2c2c2f; color: #EAEAEA; }
            QProgressBar::chunk { border-radius: 8px; background: #4C8BF5; }
            """
        )

    def _center_on_screen(self):
        screen = QtWidgets.QApplication.primaryScreen()
        if screen:
            geo = screen.availableGeometry()
            self.move(geo.center() - self.rect().center())

    # --- Utilities: Fade/Show/Hide ---
    def _animate_opacity(self, start, end, duration_ms, finished_cb=None):
        anim = QtCore.QPropertyAnimation(self, b"windowOpacity", self)
        anim.setDuration(duration_ms)
        anim.setStartValue(start)
        anim.setEndValue(end)
        def _on_finished():
            try:
                if finished_cb:
                    finished_cb()
            finally:
                # aufräumen
                if anim in self._anims:
                    self._anims.remove(anim)
        anim.finished.connect(_on_finished)
        self._anims.append(anim)
        anim.start(QtCore.QAbstractAnimation.DeleteWhenStopped)

    def show_with_fade(self, text: str = None):
        if text:
            self.status.setText(text)
        self.setWindowOpacity(0.0)
        self.show()
        self.raise_()
        self.activateWindow()
        self._animate_opacity(0.0, 1.0, 250)

    def hide_with_fade(self):
        def _after():
            self.hide()
            self.setWindowOpacity(1.0)  # zurücksetzen für späteres SHOW
        self._animate_opacity(1.0, 0.0, 250, _after)

    def exit_with_fade(self):
        self._animate_opacity(1.0, 0.0, 250, QtWidgets.QApplication.quit)

    # --- QProcess verknüpfen ---
    def start_process(self, cmd_args):
        if not cmd_args:
            raise RuntimeError("Keine Kommandozeile für die 2. Anwendung übergeben.")
        self.show_with_fade("Starte Anwendung…")

        self.proc = QtCore.QProcess(self)
        self.proc.setProcessChannelMode(QtCore.QProcess.MergedChannels)
        self.proc.readyReadStandardOutput.connect(self._on_ready_read)
        self.proc.finished.connect(self._on_finished)
        self.proc.errorOccurred.connect(self._on_error)

        env = QtCore.QProcessEnvironment.systemEnvironment()
        env.insert("SPLASH_PID", str(os.getpid()))
        self.proc.setProcessEnvironment(env)

        self.proc.start(cmd_args[0], cmd_args[1:])
        if not self.proc.waitForStarted(5000):
            self._fail(f"Start fehlgeschlagen: {self.proc.errorString()}")

    def _on_ready_read(self):
        self._buffer += self.proc.readAllStandardOutput().data()
        while b"\n" in self._buffer:
            line, self._buffer = self._buffer.split(b"\n", 1)
            self._handle_command(line.decode("utf-8", errors="replace").strip())

    def _on_finished(self, code, status):
        # Falls Kind ohne DONE endete -> Splash trotzdem sauber schließen (kein Freeze-Gefühl)
        if not self._finished:
            self.status.setText("Beende…")
            self.exit_with_fade()

    def _on_error(self, err):
        self._fail(f"Prozessfehler: {self.proc.errorString()}")

    # --- Protokoll ---
    def _handle_command(self, line: str):
        if not line:
            return
        parts = line.split(" ", 1)
        cmd = parts[0].upper()
        arg = parts[1] if len(parts) > 1 else ""

        if cmd == "PROGRESS":
            try:
                val = max(0, min(100, int(arg)))
                self.progress.setValue(val)
            except ValueError:
                self.status.setText(f"Ungültiger PROGRESS: {arg}")

        elif cmd == "TEXT":
            self.status.setText(arg)

        elif cmd == "HIDE":
            self.hide_with_fade()

        elif cmd == "SHOW":
            self.show_with_fade(arg or None)

        elif cmd == "DONE":
            self._finished = True
            if arg:
                self.status.setText(arg)
            self.progress.setValue(100)
            self.exit_with_fade()

        elif cmd == "FAIL":
            self._fail(arg or "Fehler gemeldet")

        else:
            # Unbekanntes Kommando -> zeige als Text
            self.status.setText(line)

    def _fail(self, message: str):
        self.status.setText(f"<span style='color:#ff6b6b'>Fehler: {html.escape(message)}</span>")
        QtCore.QTimer.singleShot(1200, self.exit_with_fade)


def build_cmd(default_script: str):
    """
    Übergibt alle Args von splash.py an die 2. Anwendung.
    - Wenn kein explizites Programm übergeben wurde, benutze default_script.
    - Wenn erstes Arg wie Programm aussieht (.py/.exe/Pfad/existiert), nutze es unverändert.
    """
    extra = sys.argv[1:]
    first = extra[0] if extra else ""
    is_prog = (first.endswith(".py") or first.endswith(".exe") or os.path.sep in first or os.path.exists(first))
    if not extra or not is_prog:
        return [sys.executable, "-u", default_script] + extra
    return extra


def main():
    app = QtWidgets.QApplication(sys.argv)
    image_path = os.environ.get("SPLASH_IMAGE")
    splash = SplashWindow(image_path=image_path)

    demo_worker = os.path.join(os.path.dirname(__file__), "client_showhide.py")
    cmd = build_cmd(demo_worker)
    splash.start_process(cmd)
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
