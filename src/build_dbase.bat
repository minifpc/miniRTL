python -m PyInstaller --onefile --clean --noconfirm ^
  --hidden-import=antlr4 ^
  --collect-submodules=antlr4 ^
  dBaseRunner.py
