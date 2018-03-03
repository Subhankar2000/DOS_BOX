100 REM Demonstrate animation using the PUT statement with
110 REM   the PSET option to repeatedly draw and erase.
120 SCREEN 1,0:COLOR 0,1:KEY OFF:CLS    'Set med-res screen
130 REM Draw a concentric colored ball
140 CIRCLE(12,12),8,3:PAINT STEP(0,0),1,3
150 CIRCLE(12,12),6,3:PAINT STEP(0,0),2,3
160 CIRCLE(12,12),2,3:PAINT STEP(0,0),3,3
170 REM Save the image of the ball
180 DIM BALL(144):GET (0,0)-(23,23),BALL
190 REM Save a black area the size of the saved ball image
200 DIM BLANK(144):GET (50,50)-(73,73),BLANK
210 REM Clear the ball off the screen
220 CLS
230 REM Repeatedly erase and draw ball at slightly changed
240 REM   positions to create the illusion of motion
250 FOR X=8 TO 288 STEP 2
260   PUT (X-2,60),BLANK,PSET:PUT (X,60),BALL,PSET
270   FOR I=1 TO 30:NEXT I      'Wait to minimize flicker
280 NEXT X
290 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
300 A$=INKEY$:IF A$="" THEN 300 ELSE CLS
310 END
