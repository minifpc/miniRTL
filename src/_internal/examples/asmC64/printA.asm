; stellt ein "A" auf dem Bildschirm dar

        .org $1000         ; dein Code ab $1000
start:  LDA #$15           ; optional: Upper/Graphics einschalten
        STA $D018          ; damit $41..$5A wirklich A..Z sind

        LDA #$41           ; PETSCII 'A'
        JSR $FFD2          ; KERNAL: CHROUT
        RTS