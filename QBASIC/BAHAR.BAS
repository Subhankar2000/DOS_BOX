
'**************************** Playing Raga_Bahar ****************************'

SCREEN 1: COLOR 9, 1

LINE (0, 2)-(319, 197), 2, BF: LINE (8, 9)-(311, 190), 0, BF
LOCATE 2, 2: PRINT STRING$(38, 127);
FOR K = 3 TO 23
    LOCATE K, 2: PRINT CHR$(127); SPC(36); CHR$(127);
NEXT K
LOCATE 24, 2: PRINT STRING$(38, 127);
LOCATE 4, 5: PRINT "ษออออออออออออออออออออออออออออออป"
LOCATE 5, 5: PRINT "บ CLASSICAL MUSICS ON COMPUTER บ"
LOCATE 6, 5: PRINT "ศออออออออออออออออออออออออออออออผ"
LOCATE 10, 15: PRINT "RAGA - BAHAR"
LOCATE 11, 15: PRINT "฿฿฿฿฿฿฿฿฿฿฿฿"
LOCATE 16, 13: PRINT "Programmed by :-": LOCATE 18, 14: PRINT "INDRAJIT GHOSH"
LOCATE 20, 11: PRINT "10/1, Goaltuli  Lane"
LOCATE 22, 12: PRINT "Calcutta - 700,013"

A$ = "T200AA#G#FD#FC#D#G#G#G#GAAA#A#"
FOR j = 1 TO 2: PLAY A$: NEXT j
PLAY "A#A#AFD#D#C#C#C#C#D#D#CCO3A#A#A#A#O4D#D#D#FC#D#G#G#G#GAAA#A#"
PLAY A$: PLAY "O5CD#CO4A#AA#GG#O5CC#CO4A#AA#G#G": PLAY A$
PLAY "O3A#A#O4D#D#D#D#D#D#D#FFFC#C#D#D#G#G#G#GAAAAA#A#A#A#"
FOR j = 1 TO 2: PLAY A$: NEXT j
FOR j = 1 TO 3: PLAY "AA#G#FD#FC#D#": NEXT j
PLAY "G#G#G#G#G#G#GGAAAAA#A#A#A#"

SCREEN 0: WIDTH 80: SYSTEM

