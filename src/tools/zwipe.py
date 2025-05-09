# ---------------------------------------------------------------------------------------
# Copyright(c) 2025 @paule32 & @fibodev
# ---------------------------------------------------------------------------------------
import sys
import os
from PyQt5.QtWidgets import (
    QApplication, QWidget, QVBoxLayout, QHBoxLayout, QPushButton, QComboBox,
    QFileDialog, QTextEdit, QLineEdit, QSplitter,
    QMessageBox
)
from PyQt5.QtCore import Qt, QProcess

FPC_DIR = "C:\\fpcupdeluxe\\fpc\\bin\\x86_64-win64\\"

class PascalAssemblerGUI(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Pascal zu Assembler GUI")
        self.resize(1200, 800)
        self.current_dir = ""
        self.files = []

        self.init_ui()

    def init_ui(self):
        main_layout = QVBoxLayout()

        # Top: ComboBox + Button
        top_layout = QHBoxLayout()
        self.combo_box = QComboBox()
        self.combo_box.currentIndexChanged.connect(self.load_pascal_file)
        top_layout.addWidget(self.combo_box)

        self.btn_open_dir = QPushButton("select directory")
        self.btn_open_dir.clicked.connect(self.select_directory)
        top_layout.addWidget(self.btn_open_dir)

        main_layout.addLayout(top_layout)

        # Extra FPC Arguments
        self.args_line = QLineEdit("-dDLLEXPORT -dLANGDEU")
        main_layout.addWidget(self.args_line)

        # Split Editor: Pascal | Assembler
        self.editor_pascal = QTextEdit()
        self.editor_asm = QTextEdit()

        splitter = QSplitter(Qt.Horizontal)
        splitter.addWidget(self.editor_pascal)
        splitter.addWidget(self.editor_asm)
        main_layout.addWidget(splitter)

        # Bottom Buttons
        bottom_layout = QHBoxLayout()

        self.btn_compile_fpc = QPushButton("Compile with FPC")
        self.btn_compile_fpc.clicked.connect(self.compile_fpc)
        bottom_layout.addWidget(self.btn_compile_fpc)

        self.btn_compile_nasm = QPushButton("Mit NASM kompilieren")
        self.btn_compile_nasm.clicked.connect(self.compile_nasm)
        bottom_layout.addWidget(self.btn_compile_nasm)

        main_layout.addLayout(bottom_layout)
        self.setLayout(main_layout)

    def select_directory(self):
        directory = QFileDialog.getExistingDirectory(self, "Verzeichnis auswählen")
        if directory:
            self.current_dir = directory
            self.files = [f for f in os.listdir(directory)
                          if f.endswith((".pas", ".pp", ".inc"))]
            self.combo_box.clear()
            self.combo_box.addItems(self.files)

    def load_pascal_file(self):
        file_name = self.combo_box.currentText()
        if file_name:
            path = os.path.join(self.current_dir, file_name)
            with open(path, "r", encoding="utf-8") as f:
                content = f.read()
                self.editor_pascal.setPlainText(content)
            self.editor_asm.clear()

    def compile_fpc(self):
        file_name = self.combo_box.currentText()
        if not file_name:
            return

        full_path = os.path.join(self.current_dir, file_name)
        full_path = full_path.replace('/','\\')
        args = self.args_line.text()
        cmd = f"{FPC_DIR}fpc {args} -n -B -O3 -Os -CD -Xe -sh -a \"{full_path}\""
        print(cmd)

        process = QProcess(self)
        process.setProgram("cmd.exe")
        process.setArguments(["/c ", cmd])
        process.setWorkingDirectory(self.current_dir)
        process.start()
        process.waitForFinished()
        
        # Nach .s-Datei suchen
        base_name = os.path.splitext(file_name)[0]
        asm_file = os.path.join(self.current_dir, base_name + ".s")
        asm_file = asm_file.replace('/','\\')
        print(asm_file)
        if os.path.exists(asm_file):
            with open(asm_file, "r", encoding="utf-8") as f:
                asm_content = f.read()
                self.editor_asm.setPlainText(asm_content)

    def compile_nasm(self):
        # Beispielhafter NASM-Befehl, passe dies ggf. an
        file_name = self.combo_box.currentText()
        base_name = os.path.splitext(file_name)[0]
        asm_file = os.path.join(self.current_dir, base_name + ".s")

        if not os.path.exists(asm_file):
            return

        output_file = os.path.join(self.current_dir, base_name + ".obj")
        cmd = f"nasm -f win64 \"{asm_file}\" -o \"{output_file}\""

        process = QProcess(self)
        process.setProgram("cmd.exe")
        process.setArguments(["/c", cmd])
        process.setWorkingDirectory(self.current_dir)
        process.start()
        process.waitForFinished()


if __name__ == "__main__":
    app = QApplication(sys.argv)
    gui = PascalAssemblerGUI()
    gui.show()
    sys.exit(app.exec_())
