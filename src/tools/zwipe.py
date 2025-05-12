# ---------------------------------------------------------------------------------------
# Copyright(c) 2025 @paule32 & @fibodev
# ---------------------------------------------------------------------------------------
import sys
import os
import subprocess
from PyQt5.QtWidgets import (
    QApplication, QWidget, QVBoxLayout, QHBoxLayout, QPushButton, QComboBox,
    QFileDialog, QTextEdit, QLineEdit, QSplitter,
    QMessageBox, QPlainTextEdit
)
from PyQt5.QtGui  import QPainter, QColor, QFont, QTextFormat
from PyQt5.QtCore import Qt, QRect, QSize

# CUSTOMIZED THE TWO ITEMS !!!
FPC = "C:\\fpcupdeluxe\\fpc\\bin\\x86_64-win64\\fpc.exe"
ASM = "T:\\msys64\\mingw64\\bin\\nasm.exe"

MAC_EXPORT = "-dDLLEXPORT"
MAC_LANG   = "-dLANGDEU"

class LineNumberArea(QWidget):
    def __init__(self, editor):
        super().__init__(editor)
        self.code_editor = editor

    def sizeHint(self):
        return QSize(self.code_editor.line_number_area_width(), 0)

    def paintEvent(self, event):
        self.code_editor.line_number_area_paint_event(event)


class CodeEditor(QPlainTextEdit):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.lineNumberArea = LineNumberArea(self)

        self.blockCountChanged.connect(self.update_line_number_area_width)
        self.updateRequest.connect(self.update_line_number_area)
        self.cursorPositionChanged.connect(self.highlight_current_line)

        self.update_line_number_area_width(0)
        self.highlight_current_line()

    def line_number_area_width(self):
        digits = len(str(self.blockCount()))
        space = 3 + self.fontMetrics().horizontalAdvance('9') * digits
        return space

    def update_line_number_area_width(self, _):
        self.setViewportMargins(self.line_number_area_width(), 0, 0, 0)

    def update_line_number_area(self, rect, dy):
        if dy:
            self.lineNumberArea.scroll(0, dy)
        else:
            self.lineNumberArea.update(0, rect.y(), self.lineNumberArea.width(), rect.height())

        if rect.contains(self.viewport().rect()):
            self.update_line_number_area_width(0)

    def resizeEvent(self, event):
        super().resizeEvent(event)
        cr = self.contentsRect()
        self.lineNumberArea.setGeometry(QRect(cr.left(), cr.top(), self.line_number_area_width(), cr.height()))

    def line_number_area_paint_event(self, event):
        painter = QPainter(self.lineNumberArea)
        painter.fillRect(event.rect(), QColor(240, 240, 240))

        block = self.firstVisibleBlock()
        block_number = block.blockNumber()
        top = int(self.blockBoundingGeometry(block).translated(self.contentOffset()).top())
        bottom = top + int(self.blockBoundingRect(block).height())

        while block.isValid() and top <= event.rect().bottom():
            if block.isVisible() and bottom >= event.rect().top():
                number = str(block_number + 1)
                painter.setPen(Qt.black)
                painter.drawText(0, top, self.lineNumberArea.width() - 5, self.fontMetrics().height(),
                                 Qt.AlignRight, number)

            block = block.next()
            top = bottom
            bottom = top + int(self.blockBoundingRect(block).height())
            block_number += 1

    def highlight_current_line(self):
        extraSelections = []

        if not self.isReadOnly():
            selection = QTextEdit.ExtraSelection()
            lineColor = QColor(220, 240, 255)
            selection.format.setBackground(lineColor)
            selection.format.setProperty(QTextFormat.FullWidthSelection, True)
            #selection.format.setProperty(QTextEdit.ExtraSelection.FullWidthSelection, True)
            selection.cursor = self.textCursor()
            selection.cursor.clearSelection()
            extraSelections.append(selection)

        self.setExtraSelections(extraSelections)

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
        self.editor_pascal = CodeEditor(self)
        self.editor_asm = CodeEditor(self)

        splitter = QSplitter(Qt.Horizontal)
        splitter.addWidget(self.editor_pascal)
        splitter.addWidget(self.editor_asm)
        main_layout.addWidget(splitter)

        # Bottom Buttons
        bottom_layout = QHBoxLayout()

        self.btn_compile_fpc = QPushButton("Compile with FPC")
        self.btn_compile_fpc.clicked.connect(self.compile_fpc)
        bottom_layout.addWidget(self.btn_compile_fpc)

        self.btn_compile_nasm = QPushButton("compile with NASM")
        self.btn_compile_nasm.clicked.connect(self.compile_nasm)
        bottom_layout.addWidget(self.btn_compile_nasm)

        main_layout.addLayout(bottom_layout)
        self.setLayout(main_layout)

    def select_directory(self):
        directory = QFileDialog.getExistingDirectory(self, "Select Directory")
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

        name_path = self.current_dir
        full_path = os.path.join(self.current_dir, file_name)
        full_path = full_path.replace('/','\\')
        
        #args = self.args_line.text()
        
        result = subprocess.run(
        [FPC, MAC_EXPORT, MAC_LANG,"-n","-B","-O3","-Os","-a","-al","-Anasmwin64","-CD","-FE",
        name_path, " ", full_path ],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True)
        if result.returncode == 0:
            QMessageBox.information(self, "Success", "Assembly file written.")
        else:
            QMessageBox.critical(self, "Failed", "Error: " + result.stderr + result.stdout)
        
        # Nach .s-Datei suchen
        base_name = os.path.splitext(file_name)[0]
        asm_file = os.path.join(self.current_dir, base_name + ".s")
        asm_file = asm_file.replace('/','\\')
        
        if os.path.exists(asm_file):
            with open(asm_file, "r", encoding="utf-8") as f:
                asm_content = f.read()
                self.editor_asm.setPlainText(asm_content)

    def compile_nasm(self):
        # Beispielhafter NASM-Befehl, passe dies ggf. an
        file_name = self.combo_box.currentText()
        base_name = os.path.splitext(file_name)[0]
        asm_file = os.path.join(self.current_dir, base_name + ".s")
        asm_file = asm_file.replace('/','\\')

        if not os.path.exists(asm_file):
            print("assembly file missing")
            return

        output_file = os.path.join(self.current_dir, base_name + ".obj")
        output_file = output_file.replace('/','\\')
        
        #cmd = (ASM + " -fwin64 " + asm_file + " -o " + output_file)
        
        result = subprocess.run(
        [ASM, "-fwin64", asm_file, "-o", output_file],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True)
        if result.returncode == 0:
            QMessageBox.information(self, "Success", "Object file written.")
        else:
            QMessageBox.critical(self, "Failed", "Error: could not write object file.")

if __name__ == "__main__":
    app = QApplication(sys.argv)
    gui = PascalAssemblerGUI()
    gui.show()
    sys.exit(app.exec_())
