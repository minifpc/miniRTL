; ----- BASIC-Stub bei $0801: 10 SYS 4096 -----
        .org $0801
        .word next         ; pointer zur nächsten Zeile
        .word 10           ; Zeilennummer 10
        .byte $9E          ; Token "SYS"
        .byte "4096",0     ; Zieladresse als Dezimal + 0
next:   .word 0            ; Programmende

; ----- eigentlicher Code ab $1000 -----
        .org $1000
start:
        ; Speicher-Layout sicherstellen: KERNAL & I/O einblenden
        LDA #$37           ; %00110111: RAM with I/O & KERNAL visible (Reset-Default)
        STA $01

        ; (optional) Upper/Graphics einstellen, damit $41..$5A Großbuchstaben sind
        LDA #$15
        STA $D018

        ; Clear Screen (PETSCII $93) – optional, aber nett
        LDA #$93
        JSR $FFD2

        ; String ausgeben (0-terminiert, PETSCII!)
        LDX #$00
.loop:  LDA msg,X
        BEQ .done
        JSR $FFD2          ; KERNAL CHROUT: gibt A (PETSCII) aus
        INX
        BNE .loop
.done:  RTS

; PETSCII-String "HELLO, C64!"
msg:    .byte $48,$45,$4C,$4C,$4F,$2C,$20,$43,$36,$34,$21,0