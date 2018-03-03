100 REM Program to demonstrate use of substring subcommands
110 REM   with the DRAW statement.
120 SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
130 REM Set substring to draw a square
140 S$="r24 d20 l24 u20"
150 DRAW "c3"                         'Set color to white
160 REM Draw some scaled squares
170 DRAW "bm10,10"                    'Upper left corner
180 FOR I=1 TO 16 STEP 2              '8 sizes
190   DRAW "s=i; x s$;"
200 NEXT I
210 DRAW "s4"                         'Reset scale
220 REM Animate the square
230 PRESET(10,140):DRAW "x s$;"       'Draw initial square
240 FOR I=10 TO 260 STEP 10           'Move square 26 times
250   DRAW "bm=i;,140 c0 x s$;"       'Erase old square
260   IAHEAD=I+10                     'Point to new square
270   DRAW "bm=iahead;,140 c3 x s$;"  'Draw new square
280 NEXT I
290 REM Rotate the square
300 DRAW "bm240,50"                   'Common corner of squares
310 FOR I=0 TO 3                      'Draw all 4 rotations
320   DRAW "a=i; x s$;"               'Draw the rotated square
330 NEXT I
340 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
350 A$=INKEY$:IF A$="" THEN 350 ELSE CLS
360 END
