100 REM Program to demonstrate the PSET statement in
110 REM   high-resolution mode.
120 SCREEN 2:KEY OFF:CLS        'Set hi-res screen
130 REM Diagonal line down & right
140 FOR I=50 TO 150
150   PSET(I,I)
160 NEXT I
170 REM Diagonal line up & right
180 FOR I=50 TO 150
190   PSET(I*2+50,200-I)
200 NEXT I
210 LOCATE 24,27:PRINT "PRESS ANY KEY TO CONTINUE";
220 A$=INKEY$:IF A$="" THEN 220
230 SCREEN 0,1:WIDTH 40          'Reset screen
240 END
