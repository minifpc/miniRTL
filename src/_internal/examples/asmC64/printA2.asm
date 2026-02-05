        .org $0801
        .word next
        .word 10
        .byte $9E,"2061",0   ; "SYS 2061"
next:   .word 0              ; exakt ZWEI Nullbytes (Ende)
        ; KEIN weiteres 00 hier!

        .org $080D           ; Code beginnt genau bei 2061 ($080D)
start:
        LDA #$37
        STA $01
        LDA #$93
        JSR $FFD2
        LDA #$41
        JSR $FFD2
        RTS
