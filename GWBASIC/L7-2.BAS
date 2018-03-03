100 REM Example of varying the aspect ratio with
110 REM   the CIRCLE statement.
120 REM Initialize screen
130 KEY OFF:CLS:SCREEN 1,0:COLOR 0,1
140 REM Draw ellipses of different widths
150 FOR ASPECT=10 TO 1 STEP -1  'Use 10 aspect ratios
160   GOSUB 260                 'Draw ellipse
170 NEXT ASPECT
180 REM Draw ellipses of different heights
190 FOR ASPECT=1 TO .1 STEP -.1  'Use 10 aspect ratios
200   GOSUB 260                  'Draw ellipse
210 NEXT ASPECT
220 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
230 A$=INKEY$:IF A$="" THEN 230 ELSE CLS
240 END
250 REM Subroutine to draw new ellipse
260 CIRCLE (160,100),60,3,,,ASPECT      'Draw new ellipse
270 REM Wait a bit so the new ellipse can be viewed
280 FOR PAUSE=1 TO 500:NEXT PAUSE
290 RETURN
