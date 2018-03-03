
'************************* Playing Raga_Hanswadhani *************************'

SCREEN 1: COLOR 12, 0

LINE (0, 0)-(319, 199), , BF: LINE (8, 6)-(311, 193), 0, BF
LOCATE 4, 5: PRINT "ษออออออออออออออออออออออออออออออป"
LOCATE 5, 5: PRINT "บ CLASSICAL MUSICS ON COMPUTER บ"
LOCATE 6, 5: PRINT "ศออออออออออออออออออออออออออออออผ"
LOCATE 10, 12: PRINT "RAGA - HANSWADHANI"
LOCATE 11, 12: PRINT "฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿"
LOCATE 16, 13: PRINT "Programmed by :-": LOCATE 18, 14: PRINT "INDRAJIT GHOSH"
LOCATE 20, 11: PRINT "10/1, Goaltuli  Lane"
LOCATE 22, 12: PRINT "Calcutta - 700,013"

FOR K = 1 TO 3
L = 1: M = 1
1 READ X$
IF X$ = "A" THEN F = 392
IF X$ = "B" THEN F = 523.25
IF X$ = "C" THEN F = 587.33
IF X$ = "D" THEN F = 659.26
IF X$ = "E" THEN F = 783.99
IF X$ = "F" THEN F = 987.77
IF X$ = "G" THEN F = 1046.5
IF X$ = "H" THEN F = 1174.66
IF X$ = "I" THEN F = 1318.52
IF X$ = "J" THEN F = 1567.98
IF X$ = "P" THEN F = 32767
IF X$ = "Z" THEN 3
X = VAL(X$)
IF X > 0 THEN T = X: GOTO 1
SOUND F, T
2 DATA 2,G,F,E,F,G,H,G,F,1,F,3,E,4,D,1,B,3,C,4,B,A,1,B,3,C,2,C,2,D,C,B,C,8,D,2,Z
GOTO 1
3 L = L + 1: IF L > 2 THEN 4
RESTORE 2: GOTO 1
4 M = M + 1: IF M > 3 THEN 6
IF M > 2 THEN RESTORE 5
DATA 4,D,D,E,1,8,G,4,G,H,G,I,H,I,J,H,I,H,G
5 DATA I,H,G,8,F,2,8,E,4,D,2,E,F,G,H,G,F,E,F,G,F,4,E,2,D,D,4,B,2,4,Z
GOTO 1
6 RESTORE
NEXT K
SOUND 659.26, 10

SCREEN 0: WIDTH 80: SYSTEM

