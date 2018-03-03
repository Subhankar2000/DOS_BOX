100 REM Program to demonstrate the GET and PUT graphics
110 REM   statements in high-resolution graphics mode.
120 SCREEN 2:KEY OFF:CLS        'Set hi-res screen
130 DIM BALL(100)
140 REM Draw and save ball image
150 CIRCLE (2,2),2
160 PAINT STEP(0,0)
170 GET (0,0)-(4,4),BALL
180 CLS
190 REM Draw barriers
200 LINE (200,10)-(210,100),,BF
210 LINE (400,10)-(410,100),,BF
220 REM Set initial location & direction
230 BX=300:BDIR=-2
240 REM Put ball on screen at initial location
250 PUT (BX,50),BALL
260 REM Move the bouncing ball 300 times
270 FOR I=1 TO 300
280   BXOLD=BX
290   REM Trial move ball
300   BX=BX+BDIR
310   REM If hit barrier, reverse direction
320   IF POINT(BX+2,50)<>0 THEN BDIR=-BDIR:BX=BX+2*BDIR
330   REM Old ball off
340   PUT (BXOLD,50),BALL
350   REM New ball on
360   PUT (BX,50),BALL
370 NEXT I
380 LOCATE 24,27:PRINT "PRESS ANY KEY TO CONTINUE";
390 A$=INKEY$:IF A$="" THEN 390
400 SCREEN 0,1:WIDTH 40         'Reset screen
410 END
