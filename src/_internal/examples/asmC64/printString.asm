        .org $1000
start:  LDA #$15
        STA $D018          ; Upper/Graphics (empfohlen)

        LDX #$00
loop:   LDA msg,X          ; nächstes Zeichen (PETSCII!)
        BEQ done           ; 0 = Ende
        JSR $FFD2          ; ausgeben
        INX
        BNE loop
done:   RTS

msg:    .byte $48,$45,$4C,$4C,$4F,$2C,$20,$43,$36,$34,$21,0
;               H   E   L   L   O    ,<SP>  C   6   4   !