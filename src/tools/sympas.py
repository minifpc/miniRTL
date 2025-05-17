# ---------------------------------------------------------------------------------------
# Copyright(c) 2025 @paule32 & @fibodev
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy of this
# software and associated documentation files(the "Software"), to deal in the Software
# without restriction, including without limitation the rights to use, copy, modify,
# merge, publish, distribute, sublicense, and /or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to the following
# conditions :
#
# The above copyright notice and this permission notice shall be included in all copies
# or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
# CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
# OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# ---------------------------------------------------------------------------------------
import sys
import os
import subprocess
import re
from PyQt5.QtWidgets import (
    QApplication, QWidget, QVBoxLayout, QHBoxLayout, QListWidget, QComboBox,
    QPushButton, QFileDialog, QPlainTextEdit, QLabel, QLineEdit, QSplitter
)
from PyQt5.QtCore import Qt

class PascalSymbolBrowser(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Pascal Symbol Browser")
        self.resize(1000, 750)

        # Layouts
        main_layout = QVBoxLayout()
        control_layout = QHBoxLayout()
        bottom_layout = QVBoxLayout()
        button_layout = QHBoxLayout()

        # Combobox für .ppu-Dateien und Verzeichniswahl
        self.combo_ppu = QComboBox()
        self.combo_ppu.currentIndexChanged.connect(self.load_symbols)
        self.btn_choose_dir = QPushButton("Select Directory")
        self.btn_choose_dir.clicked.connect(self.choose_directory)
        control_layout.addWidget(QLabel(".ppu File:"))
        control_layout.addWidget(self.combo_ppu)
        control_layout.addWidget(self.btn_choose_dir)

        # Listboxen mit Labels
        self.label_ppu = QLabel(".ppu Symbols")
        self.list_ppu = QListWidget()
        self.list_ppu.itemClicked.connect(self.generate_code_for_selection)

        self.label_o = QLabel(".o Symbols")
        self.list_o = QListWidget()
        self.list_o.itemClicked.connect(self.generate_code_for_selection)

        list_layout_left = QVBoxLayout()
        list_layout_left.setContentsMargins(2, 2, 2, 2)
        list_layout_left.addWidget(self.label_ppu)
        list_layout_left.addWidget(self.list_ppu)
        list_container_left = QWidget()
        list_container_left.setLayout(list_layout_left)

        list_layout_right = QVBoxLayout()
        list_layout_right.setContentsMargins(2, 2, 2, 2)
        list_layout_right.addWidget(self.label_o)
        list_layout_right.addWidget(self.list_o)
        list_container_right = QWidget()
        list_container_right.setLayout(list_layout_right)

        list_splitter = QSplitter(Qt.Horizontal)
        list_splitter.addWidget(list_container_left)
        list_splitter.addWidget(list_container_right)

        # Zwei Editoren mit Labels unter den Listboxen
        self.label_pascal = QLabel("Pascal Code")
        self.editor_pascal = QPlainTextEdit()
        editor_layout_left = QVBoxLayout()
        editor_layout_left.setContentsMargins(2, 2, 2, 2)
        editor_layout_left.addWidget(self.label_pascal)
        editor_layout_left.addWidget(self.editor_pascal)
        editor_container_left = QWidget()
        editor_container_left.setLayout(editor_layout_left)

        self.label_asm = QLabel("Assembler Code")
        self.editor_asm = QPlainTextEdit()
        editor_layout_right = QVBoxLayout()
        editor_layout_right.setContentsMargins(2, 2, 2, 2)
        editor_layout_right.addWidget(self.label_asm)
        editor_layout_right.addWidget(self.editor_asm)
        editor_container_right = QWidget()
        editor_container_right.setLayout(editor_layout_right)

        editor_splitter = QSplitter(Qt.Horizontal)
        editor_splitter.addWidget(editor_container_left)
        editor_splitter.addWidget(editor_container_right)

        # Horizontaler Splitter über Listboxen und Editoren
        vertical_splitter = QSplitter(Qt.Vertical)
        vertical_splitter.addWidget(list_splitter)
        vertical_splitter.addWidget(editor_splitter)
        
        self.label_pascal_export_import = QLabel("Pascal Export, Import:")
        self.editor_pascal_left = QPlainTextEdit()
        editor_pascal_eximp_layout = QVBoxLayout()
        editor_pascal_eximp_layout.setContentsMargins(2, 2, 2, 2)
        editor_pascal_eximp_layout.addWidget(self.label_pascal_export_import)
        editor_pascal_eximp_layout.addWidget(self.editor_pascal_left)
        editor_pascal_container_left = QWidget()
        editor_pascal_container_left.setLayout(editor_pascal_eximp_layout)
        
        editor_splitter_pascal = QSplitter(Qt.Horizontal)
        editor_splitter_pascal.addWidget(editor_pascal_container_left)
        
        # Eingabezeile und Speichern-Button für ASM
        self.asm_save_line = QLineEdit()
        self.btn_save_asm = QPushButton("Assembler speichern unter")
        self.btn_save_asm.clicked.connect(self.save_asm_code)
        extra_layout = QHBoxLayout()
        extra_layout.addWidget(self.asm_save_line)
        extra_layout.addWidget(self.btn_save_asm)

        # Buttons unten
        self.btn_load = QPushButton("Reset")
        self.btn_load.clicked.connect(self.load_symbols)
        self.btn_save = QPushButton("Pascal speichern unter")
        self.btn_save.clicked.connect(self.save_code)
        button_layout.addWidget(self.btn_load)
        button_layout.addWidget(self.btn_save)

        # Layout zusammensetzen
        main_layout.addLayout(control_layout)
        main_layout.addWidget(vertical_splitter)
        main_layout.addWidget(editor_splitter_pascal)
        
        main_layout.addLayout(extra_layout)
        bottom_layout.addLayout(button_layout)
        main_layout.addLayout(bottom_layout)
        self.setLayout(main_layout)

        # Initiales Verzeichnis
        self.current_dir = os.getcwd()
        self.update_combo()

        # Aktuelle Zuordnung
        self.mangled_names = []
        self.o_symbols = []

    def choose_directory(self):
        dir_ = QFileDialog.getExistingDirectory(self, "Verzeichnis wählen", self.current_dir)
        if dir_:
            self.current_dir = dir_
            self.update_combo()

    def update_combo(self):
        self.combo_ppu.clear()
        files = [f for f in os.listdir(self.current_dir) if f.endswith('.ppu')]
        self.combo_ppu.addItems(files)
        if files:
            self.load_symbols()
            self.generate_code_for_selection()
            self.generate_pascal_code()

    def load_symbols(self):
        self.list_ppu.clear()
        self.list_o.clear()
        self.editor_pascal.clear()
        self.editor_asm.clear()
        selected_file = self.combo_ppu.currentText()
        if not selected_file:
            return

        ppu_path = os.path.join(self.current_dir, selected_file)

        # O-Datei suchen (gleicher Name wie .ppu, aber .o)
        o_file = os.path.splitext(selected_file)[0] + '.o'
        o_path = os.path.join(self.current_dir, o_file)
        self.o_symbols = []

        if os.path.exists(o_path):
            try:
                seen = set()
                result = subprocess.run(["nm", "-g", o_path], capture_output=True, text=True)
                for line in result.stdout.splitlines():
                    match = re.search(r'([_A-Z]+\$[\w\$]*)', line)
                    if match:
                        symbol = match.group(1)
                        if symbol not in seen:
                            seen.add(symbol)
                            self.list_o.addItem(symbol)
                            self.o_symbols.append(symbol)
            except Exception as e:
                self.list_o.addItem(f"Fehler: {e}")

        # PPU Symbole (via ppudump)
        self.mangled_names = []
        seen = set()
        try:
            output = subprocess.check_output(['ppudump', ppu_path], text=True)
            for line in output.splitlines():
                if 'Alias names :' in line:
                    parts = line.split(':', 1)[1].strip().split(',')
                    for name in parts:
                        name = name.strip().replace('$', '')
                        if name and name not in seen:
                            seen.add(name)
                            self.list_ppu.addItem(name)
                            self.mangled_names.append(name)
                elif 'Mangled name :' in line:
                    name = line.split(':', 1)[1].strip().replace('$', '')
                    if name and name not in seen:
                        seen.add(name)
                        self.list_ppu.addItem(name)
                        self.mangled_names.append(name)
                elif 'Procedure symbol' in line and '$' not in line:
                    symbol = line.split('symbol', 1)[1].strip().replace('$', '')
                    if symbol and symbol not in seen:
                        seen.add(symbol)
                        self.list_ppu.addItem(symbol)
                        self.mangled_names.append(symbol)
        except Exception as e:
            self.list_ppu.addItem(f"Error: {e}")

        self.generate_asm_code()
        self.generate_pascal_exports()
        self.generate_pascal_code()

    def generate_asm_code(self):
        asm_lines = []
        for name, symbol in zip(self.mangled_names, self.o_symbols):
            asm_lines.append(f"global {name}")
            asm_lines.append(f"{name}:")
            asm_lines.append(f"    call {symbol}")
            asm_lines.append(f"    ret")
            asm_lines.append("")
        self.editor_asm.setPlainText("\n".join(asm_lines))

    def generate_pascal_exports(self):
        export_lines = ["library wrapperlib;", "", "exports"]
        for name, symbol in zip(self.mangled_names, self.o_symbols):
            export_lines.append(f"  {name} name '{symbol}',")
        if len(export_lines) > 2:
            export_lines[-1] = export_lines[-1].rstrip(',') + ';'
        export_lines.append("")
        export_lines.append("begin")
        export_lines.append("end.")
        self.editor_pascal.setPlainText("\n".join(export_lines))

    def generate_pascal_code(self):
        pascal_code = (""
        + "unit wrapper;\n"
        + "interface\n" )
        for i in range(self.list_ppu.count()):
            item = self.list_ppu.item(i)
            name = item.text()
            pascal_code += (""
            + "{$ifdef DLLEXPORT}\n"
            + "procedure " + name + "; stdcall export\n"
            + "{$endif DLLEXPORT}\n"
            + "{$ifdef DLLIMPORT}\n"
            + "procedure " + name + "; stdcall external RTLDLL;\n"
            + "{$endif DLLIMPORT}\n\n"
            )
        pascal_code += (""
        + "implementation\n"
        + "end.")
        self.editor_pascal_left.setPlainText(pascal_code);

    def generate_code_for_selection(self):
        current_mangled = self.list_ppu.currentItem()
        current_symbol = self.list_o.currentItem()
        
        if current_mangled and current_symbol:
            name = current_mangled.text()
            symbol = current_symbol.text()
            
            code = f"global {name}\n{name}:\n    call {symbol}\n    ret"
            self.editor_asm.setPlainText(code)
            self.editor_pascal.setPlainText(f"exports {name} name '{symbol}';")

    def save_code(self):
        file_path, _ = QFileDialog.getSaveFileName(self, "Pascal-Datei speichern", self.current_dir, "*.pas")
        if file_path:
            if not file_path.endswith(".pas"):
                file_path += ".pas"
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(self.editor_pascal.toPlainText())

    def save_asm_code(self):
        file_path, _ = QFileDialog.getSaveFileName(self, "Assembler-Datei speichern", self.current_dir, "*.asm")
        if file_path:
            if not file_path.endswith(".asm"):
                file_path += ".asm"
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(self.editor_asm.toPlainText())

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = PascalSymbolBrowser()
    window.show()
    sys.exit(app.exec_())
