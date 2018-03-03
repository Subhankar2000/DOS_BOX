100 REM Program to demonstrate use of text in
110 REM   medium-resolution graphics mode.
120 SCREEN 1,0          'Set medium-res color mode
130 COLOR 0,1           'Select palette 1 for color
140 CLS:KEY OFF         'Clear the screen
150 LOCATE 17,14        'Set location and
160 PRINT "MOVING LINE" '  print title
170 LOCATE 15,1         'Set location and
180 PRINT "START"       '  print one label
190 LOCATE 15,33        'Set location and
200 PRINT "FINISH"      '  print second label
210 FOR X=10 TO 300     'Draw moving line 291 times
220   PSET(X,100),2       'Put lead dot on screen
230   PRESET (X-5,100)    'Remove tail end of line
240 NEXT X
250 LOCATE 24,8:PRINT "PRESS ANY KEY TO CONTINUE";
260 A$=INKEY$:IF A$="" THEN 260 ELSE CLS
270 END
