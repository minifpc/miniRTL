# ----------------------------------------------------------------
# Copyright(c) 2025 @paule32 and @fibonacci
# all rights reserved.
#
# This file converts xml data between the Pascal commands into a
# xml format that can be used to create documentation of Pascal
# Souce Code.
# ----------------------------------------------------------------
import os
import re

from xml.etree import ElementTree as ET
from xml.dom   import minidom

# Konfiguration
quellverzeichnis = "./"  # <-- Pfad anpassen
unterverzeichnisse_durchsuchen = True

# Alle .pas-Dateien finden
def finde_pascal_dateien(basisverzeichnis):
    for wurzel, _, dateien in os.walk(basisverzeichnis):
        for datei in dateien:
            if datei.lower().endswith(".pas"):
                yield os.path.join(wurzel, datei)
        if not unterverzeichnisse_durchsuchen:
            break

# XML aus Kommentaren extrahieren (alle Kommentararten)
def extrahiere_xml_aus_code(code: str):
    xml_blöcke = []

    # 1. Einzelzeilige // Kommentare mit XML
    matches = re.findall(r'//\s*<.*?>[\s\S]*?//\s*</.*?>', code)
    for block in matches:
        lines = block.splitlines()
        cleaned = '\n'.join(line.lstrip('/ ').strip() for line in lines)
        xml_blöcke.append(cleaned)

    # 2. Blockkommentare mit { ... }
    matches = re.findall(r'\{\s*<.*?>[\s\S]*?\s*</.*?>\s*\}', code)
    for block in matches:
        cleaned = block.strip('{}').strip()
        xml_blöcke.append(cleaned)

    # 3. Blockkommentare mit (* ... *)
    matches = re.findall(r'\(\*\s*<.*?>[\s\S]*?\s*</.*?>\s*\*\)', code)
    for block in matches:
        cleaned = block.strip('(*').strip('*)').strip()
        xml_blöcke.append(cleaned)

    return xml_blöcke

# XML-Datei speichern
def speichere_xml(blöcke, zieldatei):
    if not blöcke:
        return
    xml_inhalt = "<root>\n" + "\n".join(blöcke) + "\n</root>"
    try:
        ET.fromstring(xml_inhalt)  # Validierung
        os.makedirs(os.path.dirname(zieldatei), exist_ok=True)
        with open(zieldatei, "w", encoding="utf-8") as f:
            f.write(xml_inhalt)
        print(f"Gespeichert: {zieldatei}")
    except ET.ParseError as e:
        print(f"Fehler in XML in {zieldatei}: {e}")

# Hauptschleife
def hauptprogramm():
    for dateipfad in finde_pascal_dateien(quellverzeichnis):
        with open(dateipfad, "r", encoding="utf-8") as f:
            code = f.read()

        xml_blöcke = extrahiere_xml_aus_code(code)
        if not xml_blöcke:
            continue

        basisverzeichnis = os.path.dirname(dateipfad)
        dateiname = os.path.splitext(os.path.basename(dateipfad))[0] + ".xml"
        zielverzeichnis = os.path.join(basisverzeichnis, "xml")
        zieldatei = os.path.join(zielverzeichnis, dateiname)

        speichere_xml(xml_blöcke, zieldatei)

def zusammenfassen_aller_xml(basisverzeichnis, ausgabedatei):
    zusammengeführt = ['<all_files>']
    for wurzel, _, dateien in os.walk(basisverzeichnis):
        if os.path.basename(wurzel) != "xml":
            continue  # Nur die "xml"-Ordner beachten
        for datei in dateien:
            if not datei.endswith(".xml"):
                continue
            pfad = os.path.join(wurzel, datei)
            try:
                with open(pfad, "r", encoding="utf-8") as f:
                    inhalt = f.read()
                # Inhalt ohne äußere <root> Hülle extrahieren
                match = re.search(r"<root>([\s\S]*)</root>", inhalt)
                if match:
                    inhalt_ohne_root = match.group(1).strip()
                else:
                    inhalt_ohne_root = inhalt.strip()

                relativname = os.path.relpath(pfad, basisverzeichnis).replace('\\', '/')
                zusammengeführt.append(f'  <file name="{relativname}">')
                zusammengeführt.append(inhalt_ohne_root)
                zusammengeführt.append('  </file>')
            except Exception as e:
                print(f"Fehler beim Lesen von {pfad}: {e}")

    zusammengeführt.append('</all_files>')
    try:
        with open(ausgabedatei, "w", encoding="utf-8") as f:
            f.write('\n'.join(zusammengeführt))
        print(f"Zusammengefasst in: {ausgabedatei}")
    except Exception as e:
        print(f"Fehler beim Schreiben der Zusammenfassung: {e}")

def pretty_print_xml(eingabepfad, ausgabepfad=None):
    try:
        with open(eingabepfad, "r", encoding="utf-8") as f:
            raw_xml = f.read()
        dom = minidom.parseString(raw_xml)
        schöner_xml = dom.toprettyxml(indent="  ")

        if ausgabepfad is None:
            ausgabepfad = eingabepfad  # Überschreibt die Datei

        with open(ausgabepfad, "w", encoding="utf-8") as f:
            f.write(schöner_xml)
        print(f"Pretty Print abgeschlossen: {ausgabepfad}")
    except Exception as e:
        print(f"Fehler beim Pretty Print: {e}")

if __name__ == "__main__":
    hauptprogramm()
    
    # Schritt 1: Zusammenführen
    zielpfad = os.path.join(quellverzeichnis, "all_data.xml")
    zusammenfassen_aller_xml(quellverzeichnis, zielpfad)

    # Schritt 2: Schön formatieren
    pretty_print_xml(zielpfad)
