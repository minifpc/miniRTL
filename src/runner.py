# runner.py
from __future__ import annotations
import os, subprocess, shutil
from settings import Settings

def ensure_build_dir(s: Settings):
    os.makedirs(s.build_dir(), exist_ok=True)

def write_prg_file(path: str, data: bytes):
    with open(path, "wb") as f:
        f.write(data)

def make_d64_and_run(s: Settings) -> tuple[int, str]:
    """
    Baut ein frisches D64 via c1541 und startet VICE mit -autostart.
    Rückgabe: (returncode, cmdline_string)
    """
    c1541 = s.c1541()
    x64sc = s.x64sc()
    d64   = s.d64_file()
    prg   = s.prg_file()
    disk  = s.disk_name()
    name  = s.prg_name()

    # sanity
    for p in (c1541, x64sc):
        if not shutil.which(p) and not os.path.isfile(p):
            raise FileNotFoundError(f"Tool nicht gefunden: {p}")

    # Alte D64 löschen
    if os.path.exists(d64):
        os.remove(d64)

    # D64 formatieren & PRG schreiben
    cmd1 = [c1541, "-format", disk, "d64", d64]
    cmd2 = [c1541, "-attach", d64, "-write", prg, f"{name},p"]

    r1 = subprocess.run(cmd1, capture_output=True, text=True)
    if r1.returncode != 0:
        raise RuntimeError(f"c1541 format Fehler:\n{r1.stdout}\n{r1.stderr}")

    r2 = subprocess.run(cmd2, capture_output=True, text=True)
    if r2.returncode != 0:
        raise RuntimeError(f"c1541 write Fehler:\n{r2.stdout}\n{r2.stderr}")

    # VICE starten
    cmd3 = [x64sc, "-autostart", d64]
    r3 = subprocess.Popen(cmd3)  # nicht blockieren
    return (0, " ".join(cmd3))
