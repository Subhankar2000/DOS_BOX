100 REM Program to demonstrate the CIRCLE statement.
110 SCREEN 1,0:COLOR 0,1        'Set screen
120 KEY OFF:CLS                 'Clear screen
130 REM Draw circles of various sizes and colors
140 FOR R=1 TO 90 STEP 5        'Step through 18 radiuses
150   CIRCLE(160,100),R,R MOD 4 'Color based on radius
160 NEXT R
170 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
180 IF INKEY$="" GOTO 180 ELSE CLS
190 END
