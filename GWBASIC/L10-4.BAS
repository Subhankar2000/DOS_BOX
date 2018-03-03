100 REM Program to demonstrate animation using the PUT
110 REM   statement with the PSET option and a border
120 REM   around the image to erase the old image.
130 REM Initialize the screen
140 SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
150 REM Draw a ball
160 CIRCLE(12,12),8,3:PAINT STEP(0,0),1,3
170 CIRCLE(12,12),6,3:PAINT STEP(0,0),2,3
180 CIRCLE(12,12),2,3:PAINT STEP(0,0),3,3
190 REM Save the image of the ball and some of
200 REM   the black border
210 DIM BALL(144):GET(0,0)-(23,23),BALL
220 CLS         'Remove ball from screen
230 REM Draw a series of colored bars for ball to
240 REM   move across
250 FOR I=4 TO 12
260   LINE(I*20,50)-(I*20+19,100),I MOD 4,BF
270 NEXT I
280 REM Repeatedly move the ball right by 2 pixel
290 REM   postions allowing the black border to
300 REM   wipe out the part of the old ball image
310 REM   not covered by the new image
320 FOR X=8 TO 288 STEP 2
330   PUT(X,60),BALL,PSET
340   FOR I=1 TO 30:NEXT I      'Delay a bit
350 NEXT X
360 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
370 A$=INKEY$:IF A$="" THEN 370 ELSE CLS
380 END
