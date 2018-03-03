100 REM Program to demonstrate animation with the
110 REM   XOR option to the PUT statement.
120 REM Initialize screen
130 SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
140 REM Draw a colored ball
150 CIRCLE(12,12),8,3:PAINT STEP(0,0),1,3
160 CIRCLE(12,12),6,3:PAINT STEP(0,0),2,3
170 CIRCLE(12,12),2,3:PAINT STEP(0,0),3,3
180 REM Save the image of the ball
190 DIM BALL(144):GET(0,0)-(23,23),BALL
200 REM Clear the ball from the screen
210 CLS
220 REM Draw a series of colored stripes for ball
230 REM   to move across
240 FOR I=4 TO 12
250   LINE(I*20,50)-(I*20+19,100),I MOD 4,BF
260 NEXT I
270 REM Put the image on the screen in its first
280 REM   location so that the next PUT will
290 REM   erase it
300 PUT(6,60),BALL,PSET
310 REM Repeatedly erase and then draw the ball
320 REM   moving it 2 pixels right each time
330 FOR X=8 TO 288 STEP 2
340   PUT(X-2,60),BALL,XOR:PUT(X,60),BALL,XOR
350   REM Wait to minimize flicker
360   FOR I=1 TO 30:NEXT I
370 NEXT X
380 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
390 A$=INKEY$:IF A$="" THEN 390 ELSE CLS
400 END
