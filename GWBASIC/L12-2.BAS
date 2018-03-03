100 REM Program to demonstrate animation based on rotations
110 REM   with the DRAW statement.
120 SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
130 REM Define image to be rotated
140 IMAGE$="bm+6,-5 d10 l12 u10 r4 br4 r4 bl6 bd3 m+0,0"
150 REM Draw and GET image rotation #0
160 DRAW "c3 a0 bm10,10"+IMAGE$
170 DIM ANGLE0(100):GET(0,0)-(20,20),ANGLE0
180 REM Draw and GET image rotation #1
190 DRAW "c3 a1 bm30,10"+IMAGE$
200 DIM ANGLE1(100):GET(20,0)-(40,20),ANGLE1
210 REM Draw and GET image rotation #2
220 DRAW "c3 a2 bm50,10"+IMAGE$
230 DIM ANGLE2(100):GET(40,0)-(60,20),ANGLE2
240 REM Draw and GET image rotation #3
250 DRAW "c3 a3 bm70,10"+IMAGE$
260 DIM ANGLE3(100):GET(60,0)-(80,20),ANGLE3
270 REM Draw across screen in alternating rotations.
280 REM   Rotations #1 and #3 are transposed in sequence
290 REM   so that the rotation is in the correct direction
300 FOR I=0 TO 280 STEP 8
310   PUT(I,90),ANGLE0:FOR J=1 TO 80:NEXT J:PUT(I,90),ANGLE0
320   PUT(I+2,90),ANGLE3:FOR J=1 TO 80:NEXT J:PUT(I+2,90),ANGLE3
330   PUT(I+4,90),ANGLE2:FOR J=1 TO 80:NEXT J:PUT(I+4,90),ANGLE2
340   PUT(I+6,90),ANGLE1:FOR J=1 TO 80:NEXT J:PUT(I+6,90),ANGLE1
350 NEXT I
360 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
370 A$=INKEY$:IF A$="" THEN 370 ELSE CLS
380 END
