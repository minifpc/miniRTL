:: ---------------------------------------------------------------------------
:: Datei:  ziponly.bat - Windows MS-DOS Batch file
:: Author: Jens Kallup - paule32
::
:: Rechte: (c) 2024, 2ß25 by kallup non-profit software
::         all rights reserved
:: ---------------------------------------------------------------------------
@echo off
setlocal
set BUILD=__pycache__\build
set DIST=__pycache__\dist
set APPNAME=app.pyz

set BASEDIR=%cd%

:: === create new directory tree ===
if exist "%BUILD%" rmdir /s /q "%BUILD%"
if exist "%DIST%"  rmdir /s /q "%DIST%"
mkdir "%BUILD%"
mkdir "%DIST%"

cd %BASEDIR%

copy __pycache__\client-windows.cpython-313.pyc %BUILD%\__main__.pyc
copy __pycache__\resources_rc.cpython-313.pyc   %BUILD%\resources.pyc
copy __pycache__\app.pyz                        %BUILD%\app.pyz

echo %BUILD%\__main__.pyc
if not exist "%BUILD%\__main__.pyc" (
  echo %BUILD%\__main__.pyc fehlt Bitte zuerst kompilieren.
  cd %BASEDIR%
  exit /b 1
)
echo %BUILD%\resources.pyc
if not exist "%BUILD%\resources.pyc" (
  echo %BUILD%\resources.pyc fehlt Bitte zuerst kompilieren.
  cd %BASEDIR%
  exit /b 1
)
echo %BUILD%\app.pyz
python -m zipfile -c "%DIST%\%APPNAME%" "__main__.pyc" "resources.pyc"

if errorlevel 1 (
  echo Fehler beim Erstellen von %BUILD%\%APPNAME%.
  cd %BASEDIR%
  exit /b 1
)

echo Fertig: %DIST%\%APPNAME%
cd %BASEDIR%
