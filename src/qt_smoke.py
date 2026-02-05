from PyQt5 import QtWidgets
import sys

print(">>> entering main")
app = QtWidgets.QApplication(sys.argv)
w = QtWidgets.QWidget()
w.setWindowTitle("Qt Smoke Test")
w.resize(300, 120)
w.show()
print(">>> shown window")
sys.exit(app.exec_())
