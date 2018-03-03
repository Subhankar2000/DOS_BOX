
'********************** Converts Numbres into Words *************************'

DEFLNG S-Z: DEFINT A-K: DEFSTR L-R: DIM L(10): COLOR , 14: CLS
1 DATA   ,one,two,three,four,five,six,seven,eight,nine
2 DATA ten,eleven,twelve,thirteen,fourteen,fifteen
  DATA sixteen,seventeen,eighteen,nineteen
3 DATA   ,  ,twenty,thirty,fourty,fifty,sixty,seventy
  DATA eighty,ninty

start:
LOCATE 1, 2: COLOR 10, 14: PRINT CHR$(201); STRING$(76, 205); CHR$(187)
FOR K = 2 TO 24
    LOCATE K, 2: PRINT CHR$(186);
    LOCATE K, 79: PRINT CHR$(186);
NEXT K
LOCATE 25, 2: PRINT CHR$(200); STRING$(76, 205); CHR$(188);
PLAY "MBO3L4CL6DL4C": LOCATE 3, 15: COLOR 15
PRINT "Type the sum, which you want be converted into words"
LOCATE 5, 18: COLOR 0
PRINT "( positive integer only, maximum nine digits )"
LOCATE 8, 37: COLOR 15: INPUT "", Q
IF LEN(Q) <= 9 THEN
    S = VAL(Q): LOCATE 11, 24: PRINT SPC(33);
ELSE
    LOCATE 8, 37: PRINT SPC(40);
    LOCATE 11, 24: COLOR 31
    PRINT "Not more than 9 digits, Please !!"
    GOTO start
END IF

T = S \ 100: A = S MOD 100
U = T \ 10: B = T MOD 10
V = U \ 100: C = U MOD 100
W = V \ 100: D = V MOD 100
X = W \ 100: E = W MOD 100

Q = "": R = ""
IF E > 0 THEN H = E: GOSUB word: Q = Q + M + " crore" + P
IF D > 0 THEN H = D: GOSUB word: Q = Q + M + " lakh" + P
IF C > 0 THEN H = C: GOSUB word: Q = Q + M: R = R + "thousand" + P
IF B > 0 THEN H = B: GOSUB word: R = R + M + " hundred" + P
IF A > 0 THEN H = A: GOSUB word: R = R + M
R = R + " only"

I = LEN(Q): J = LEN(R)
IF I <> 0 THEN
Q = CHR$(ASC(LEFT$(Q, 1)) - 32) + RIGHT$(Q, I - 1)
ELSE R = CHR$(ASC(LEFT$(R, 1)) - 32) + RIGHT$(R, J - 1)
END IF
O = STR$(E) + STR$(D) + STR$(C) + STR$(B) + STR$(A)
A = LEN(O): B = 40 - A / 2
LOCATE 11, B: PRINT O
LOCATE 12, B: COLOR 0: PRINT STRING$(A, "-"): COLOR 15
LOCATE 15, 40 - I / 2: PRINT Q
LOCATE 17, 40 - J / 2: PRINT R
PLAY "MBO3L6CCDEDCC"

choice:
  LOCATE 23, 32: COLOR 7: PRINT "Do You Want More ?"
  LOCATE 24, 36: PRINT "Yes  /  No";
  DO: M$ = UCASE$(INKEY$)                    'ignore cases of key pressed
  LOOP WHILE M$ = ""                         'wait until y or n aren't pressed
  IF M$ = "Y" THEN CLS : GOTO start          'if y, then repeat
  IF M$ = "N" THEN COLOR 7, 0: CLS : SYSTEM  'on direct run, exit to DOS
  IF M$ <> "Y" AND M$ <> "N" THEN
    PLAY "O3L8C": GOTO choice                'warnning on mis-typing
  END IF

word:
  G = H \ 10: F = H MOD 10
  IF G = 1 THEN
    RESTORE 2
    FOR K = 0 TO 9: READ L(K): NEXT K
    M = L(F)
  ELSE
    RESTORE 3
    FOR K = 0 TO 9: READ L(K): NEXT K
    N = L(G): H = F: GOSUB units: M = N + M
  END IF
  IF H > 1 THEN P = "s " ELSE P = " "
  RETURN

units:
  RESTORE 1
  FOR K = 0 TO 9: READ L(K): NEXT K
  M = L(H)
  IF H > 1 THEN P = "s " ELSE P = " "
  RETURN

