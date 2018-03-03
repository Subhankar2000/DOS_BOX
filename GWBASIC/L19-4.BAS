100 REM Program to switch to color/graphics adapter,
110 REM   draw graphics, then return to the monochrome
120 REM   screen with the graphics intact.
130 REM   May be started on either screen--always ends
140 REM   on the monochrome screen.
150 REM *
160 REM * Will work *only* with two-adapter systems!!!
170 REM *
180 DEF SEG=0   'Point segment to BIOS variables
190 REM Switch to color/graphics adapter
200 REM First clear old screen before switching
210 KEY OFF:CLS
220 A=PEEK(1040):POKE 1040,(A AND 207) OR 32
230 REM Set medium-resolution graphics screen
240 REM   with palette 0
250 SCREEN 1,0:COLOR 0,2:CLS:KEY OFF
260 REM Draw circles in three colors
270 CIRCLE(80,100),80,3:PAINT STEP(0,0),3
280 CIRCLE(160,100),80,2:PAINT STEP(0,0),2
290 CIRCLE(240,100),80,1:PAINT STEP(0,0),1
300 REM Label the artwork
310 LOCATE 24,9:PRINT "Circles in graphics mode";
320 REM Switch to monochrome adapter
330 A=PEEK(1040):POKE 1040,A OR 48
340 REM Set monochrome screen mode & cursor
350 SCREEN 0,0:COLOR 7,0:LOCATE 1,1,1,12,13
360 KEY ON:WIDTH 80
370 END
