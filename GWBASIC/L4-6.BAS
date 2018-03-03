100 REM Program to demonstrate absolute and relative
110 REM   screen addressing.
120 SCREEN 1,0           'Set medium-res color mode
130 COLOR 0,1            'Select palette 1 for color
140 CLS:KEY OFF          'Clear the screen
150 FOR I=1 TO 200       '200 times
160   PSET(50+I,50),1    '  draw moving dots
170   PSET STEP(20,30),2 '  in three
180   PSET STEP(20,30),3 '  colors
190 NEXT I
200 LOCATE 24,8:PRINT "PRESS ANY KEY TO CONTINUE";
210 A$=INKEY$:IF A$="" THEN 210 ELSE CLS
220 END
