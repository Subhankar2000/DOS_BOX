100 REM Program to demonstrate color generation in
110 REM   hi-res mode by artifacting.
120 REM Set screen to hi-res mode
130 SCREEN 2:KEY OFF:CLS
140 REM Enable color burst so TV will display color
150 OUT &H3D8,26
160 REM Label column that color numbers will go in
170 LOCATE 1,38:PRINT "COLOR #"
180 REM Draw using each of the 16 colors in turn
190 FOR I=0 TO 15
200   REM Set point at which to begin drawing colored area
210   PRESET(120,I*8+16)
220   REM Draw columns 100 to 250
230   FOR K=100 TO 250 STEP 4
240     REM Draw set of 4 pixels, producing one
250     REM   artifacted colored pixel.  Color is based
260     REM   on the 4-bit pattern in I
270     FOR L=3 TO 0 STEP -1
280       REM Draw one column in white, if bit is 1, or
290       REM   in black, if bit is 0
300       LINE -STEP(0,7),SGN(I AND 2^L):PRESET STEP(1,-7)
310     NEXT L
320   NEXT K
330   REM Label color number
340   LOCATE I+3,40:PRINT I
350 NEXT I
360 LOCATE 24,27:PRINT "PRESS ANY KEY TO CONTINUE";
370 A$=INKEY$:IF A$="" THEN 370
380 SCREEN 0,1:WIDTH 40 'Reset screen
390 END
