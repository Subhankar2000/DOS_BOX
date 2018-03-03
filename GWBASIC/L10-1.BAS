100 REM Demonstration of the five options to the
110 REM   PUT statement.
120 REM Initialize screen
130 SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
140 REM Draw concentric circles of different colors
150 CIRCLE(25,25),25,3:PAINT STEP(0,0),3
160 CIRCLE(25,25),20,2:PAINT STEP(0,0),2
170 CIRCLE(25,25),15,1:PAINT STEP(0,0),1
180 CIRCLE(25,25),10,0:PAINT STEP(0,0),0
190 REM Save the image of the circles just drawn
200 DIM IMAGE(364):GET(0,0)-(50,50),IMAGE
210 REM Clear the screen
220 CLS
230 REM Put in labels for the five options
240 LOCATE 14,1
250 PRINT "****PSET***PRESET**XOR*****AND*****OR***"
260 REM Set up a background of different colors so that
270 REM   the various color effects can be observed
280 FOR I=0 TO 62
290   LINE(I*5,120)-(I*5+5,180),I MOD 4,BF
300 NEXT I
310 REM Draw the saved image on a black background and
320 REM   on the colored background using each of the
330 REM   options to the PUT statement
340 PUT(20,125),IMAGE,PSET:PUT(20,50),IMAGE,PSET
350 PUT(80,125),IMAGE,PRESET:PUT(80,50),IMAGE,PRESET
360 PUT(140,125),IMAGE,XOR:PUT(140,50),IMAGE,XOR
370 PUT(200,125),IMAGE,AND:PUT(200,50),IMAGE,AND
380 PUT(260,125),IMAGE,OR:PUT(260,50),IMAGE,OR
390 LOCATE 25,9:PRINT "PRESS ANY KEY TO CONTINUE";
400 IF INKEY$="" GOTO 400 ELSE CLS
410 END
