100 REM Program to demonstrate the CIRCLE statement
110 REM   in high-resolution graphics mode.
120 SCREEN 2:KEY OFF:CLS        'Set hi-res screen
130 REM Draw concentric ellipses
140 FOR RADIUS=10 TO 250 STEP 15
150   CIRCLE(320,100),RADIUS,1,,,.3
160 NEXT RADIUS
170 LOCATE 24,28:PRINT "PRESS ANY KEY TO CONTINUE";
180 A$=INKEY$:IF A$="" THEN 180
190 SCREEN 0,1:WIDTH 40         'Reset screen
200 END
