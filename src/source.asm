LDA #$15      ; Standard: Screen @ $0400, CharROM Upper/Graphics
STA $D018

  LDX #$00  ; X-Register auf 0 initialisieren (für Schleifenzähler)
  LDA #$41  ; ASCII-Code für 'A' in A laden
  STA $0400 ; A an den Bildschirm speichern
  LDA #$42  ; ASCII-Code für 'B' in A laden
  STA $0401 ; A an den Bildschirm speichern
  LDA #$43  ; ASCII-Code für 'C' in A laden
  STA $0402 ; A an den Bildschirm speichern
  RTS       ; Rückkehr aus dem Programm