CLS : SCREEN 12: COLOR 2
LINE (0, 0)-(639, 465), , B
LINE (0, 240)-(640, 240)
LINE (213, 0)-(213, 465)
LINE (426, 0)-(426, 465)
P = 3.141593

COLOR 15
FOR A = 0 TO 2 * P STEP .01
  R = 100 * COS(2 * A)
  X = R * COS(A) + 106
  Y = R * SIN(A) + 110
  PSET (X, Y)
NEXT A
LOCATE 15, 2: COLOR 7: PRINT "Lemniscate  R = A"; CHR$(249); "Cos2"; CHR$(233)

COLOR 15
FOR A = 0 TO 2 * P STEP .01
  R = 80 * (1 + COS(A))
  X = R * COS(A) + 250
  Y = R * SIN(A) + 110
  PSET (X, Y)
NEXT A
LOCATE 15, 28: COLOR 7: PRINT "Cardioide R = A"; CHR$(249); "(1 + Cos"; CHR$(233); ")"

COLOR 15
FOR A = 0 TO 2 * P STEP .01
  X = 100 * COS(A) ^ 3 + 532
  Y = 100 * SIN(A) ^ 3 + 110
  PSET (X, Y)
NEXT A
LOCATE 14, 55: COLOR 7: PRINT "Asteroid"
LOCATE 15, 59: PRINT "X^2/3 + Y^2/3 = A^2/3"

COLOR 15
FOR A = 0 TO 11 * P STEP .02
  R = 3 * A
  X = R * COS(A) + 110
  Y = R * SIN(A) + 340
  PSET (X, Y)
NEXT A
LOCATE 29, 5: COLOR 3: PRINT "Spiral   R = A "; CHR$(249); " "; CHR$(233);

LINE (219, 340)-(420, 340): COLOR 15
FOR X = 0 TO 200 STEP .08
  Y = 340 - 80 * SIN(2 * P / 100 * X)
  PSET (X + 219, Y)
NEXT X
LOCATE 29, 29: COLOR 7: PRINT "Sinusoidal Y = A"; CHR$(249); "Sin(wt)";

COLOR 15
FOR X = -100 TO 100 STEP .1
 Y = X ^ 2 / 150 * SQR((100 + X) / 40)
  IF Y > -90 AND Y < 90 THEN
    PSET (550 + X, 340 + Y)
    PSET (550 + X, 340 - Y)
  END IF
NEXT X
LOCATE 28, 55: COLOR 7: PRINT "Witch of Agnesi";
LOCATE 29, 63: PRINT "Y = A"; CHR$(249); "X"; CHR$(253); CHR$(249); CHR$(251); "(B + X)";

DO WHILE INKEY$ = "": LOOP
CLS : SYSTEM

