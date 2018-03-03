100 REM Program to demonstrate use of PSET & PRESET
110 REM   in medium-resolution graphics mode.
120 SCREEN 1,0           'Set medium-res color mode
130 COLOR 0,1            'Select palette 1 for color
140 CLS:KEY OFF          'Clear the screen
150 FOR X=10 TO 300      'Draw moving line 291 times
160   PSET(X,100),2        'Put lead dot on screen
170   PRESET (X-5,100)     'Remove tail end of line
180 NEXT X
190 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
200 A$=INKEY$:IF A$="" THEN 200 ELSE CLS
210 END
