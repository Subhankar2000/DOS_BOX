100 REM Program to demonstrate intensity effects
110 REM   in medium-resolution graphics mode.
120 SCREEN 1,0:CLS:KEY OFF      'Set screen
130 REM Do palette 0 first
140 COLOR 0,0   'Select palette 0-normal intensity
150 REM Draw circles in colors 1, 2, and 3
160 CIRCLE(80,100),30,1:PAINT STEP(0,0),1
170 CIRCLE(160,100),30,2:PAINT STEP(0,0),2
180 CIRCLE(240,100),30,3:PAINT STEP(0,0),3
190 REM Label screen
200 LOCATE 23,17:PRINT "PALETTE 0"
210 GOSUB 360                   'Delay for viewing
220 REM Now show high-intensity
230 COLOR 8:LOCATE 22,14:PRINT "HIGH INTENSITY"
240 GOSUB 360                   'Delay for viewing
250 REM Palette 1
260 COLOR 0,1   'Select palette 1-normal intensity
270 LOCATE 23,17:PRINT "PALETTE 1"
280 REM Clear old label
290 LOCATE 22,14:PRINT SPC(14)
300 GOSUB 360                   'Delay for viewing
310 REM Now show high-intensity
320 COLOR 8:LOCATE 22,14:PRINT "HIGH INTENSITY"
330 GOSUB 360                   'Delay for viewing
340 CLS:COLOR 0,1
350 END
360 LOCATE 25,9:PRINT "PRESS ANY KEY TO CONTINUE";
370 A$=INKEY$:IF A$="" THEN 370
380 RETURN
