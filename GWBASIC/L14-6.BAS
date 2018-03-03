100 REM Program to demonstrate the DRAW statement in
110 REM   high-resolution mode.
120 SCREEN 2:KEY OFF:CLS        'Set hi-res screen
130 REM Define rectangle
140 RECT$="u30 r15 d30 l15"
150 REM Draw rectangle in all four rotations
160 FOR I=0 TO 3
170   COL=I*150+50        'Select column to draw box at
180   DRAW "bm=col;,100 a=i; x rect$;"
190 NEXT I
200 LOCATE 24,27:PRINT "PRESS ANY KEY TO CONTINUE";
210 A$=INKEY$:IF A$="" THEN 210
220 SCREEN 0,1:WIDTH 40         'Reset screen
230 END
