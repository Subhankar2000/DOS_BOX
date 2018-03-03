100 REM Program to demonstrate use of the
110 REM   SCREEN function.
120 REM Set text mode screen
130 SCREEN 0,1:COLOR 7,0,0:WIDTH 40:KEY OFF:CLS:LOCATE ,,0
140 REM Draw walls, each in a different color
150 COLOR 1:FOR I=10 TO 30:LOCATE 2,I:PRINT CHR$(219):NEXT
160 COLOR 2:FOR I=10 TO 30:LOCATE 22,I:PRINT CHR$(219):NEXT
170 COLOR 3:FOR I=3 TO 21:LOCATE I,10:PRINT CHR$(219):NEXT
180 COLOR 4:FOR I=3 TO 21:LOCATE I,30:PRINT CHR$(219):NEXT
190 REM Initialize the ball
200 COLOR 7,0,0
210 BX=20:BY=5
220 BXINC=1:BYINC=1
230 LOCATE BY,BX:PRINT "O"
240 REM Loop to move ball
250 FOR I=1 TO 200
260   REM save old location
270   BXOLD=BX:BYOLD=BY
280   REM Move in x direction
290   BX=BX+BXINC
300   REM Check for collision & reverse if needed
310   IF SCREEN(BY,BX) = 32 THEN 360  'If space, then didn't hit
320   IF (SCREEN(BY,BX,1) AND 15) = 3 THEN BXINC=1      'Hit left
330   IF (SCREEN(BY,BX,1) AND 15) = 4 THEN BXINC=-1     'Hit right
340   BX=BX+2*BXINC     'Undo old move & make new one
350   REM Move in y direction
360   BY=BY+BYINC
370   REM Check for collision & reverse if needed
380   IF SCREEN(BY,BX) = 32 THEN 420  'If space, then didn't hit
390   IF (SCREEN(BY,BX,1) AND 15) = 1 THEN BYINC=1      'Hit top
400   IF (SCREEN(BY,BX,1) AND 15) = 2 THEN BYINC=-1     'Hit bottom
410   BY=BY+2*BYINC     'Undo old move & make new one
420   LOCATE BYOLD,BXOLD:PRINT " ";     'Blank old ball off
430   LOCATE BY,BX:PRINT "O";           'New ball on
440 NEXT I
450 LOCATE 24,8:PRINT "PRESS ANY KEY TO CONTINUE";
460 A$=INKEY$:IF A$="" THEN 460 ELSE CLS
470 END
