100 REM Program to switch display to color/graphics adapter
110 REM   if one exists.  If not, program will notify user
120 REM   that the graphics screen does not exist.
130 REM
140 REM First, check if display is already on color/
150 REM   adapter.  If so, then we're done
160 DEF SEG=0   'Point segment to BIOS variables
170 REM Check current screen
180 IF PEEK(1040) AND 48<>48 THEN GOTO 390
190 REM Display is not on color/graphics adapter.  Check if
200 REM   color/graphics adapter exists.
210 DEF SEG=&HB800      'Point segment to graphics screen
220 REM Modify first memory location in screen
230 A=PEEK(0):POKE 0,(A+1) MOD 256
240 REM If it stays modified, then adapter exists
250 IF PEEK(0)=(A+1) MOD 256 THEN 320
260 REM Notify that color/graphics adapter doesn't exist
270 CLS:KEY OFF:LOCATE 10,20
280 PRINT "Color/graphics adapter does not exist!"
290 LOCATE 21,27:PRINT "PRESS ANY KEY TO CONTINUE";
300 A$=INKEY$:IF A$="" THEN 300 ELSE CLS
310 END
320 REM Color/graphics adapter exists-switch display from
330 REM   the monochrome screen to the graphics screen
340 REM Clear the monochrome screen
350 KEY OFF:CLS
360 DEF SEG=0:A=PEEK(1040):POKE 1040,(A AND 207) OR 32
370 SCREEN 0:LOCATE 1,1,1,6,7
380 KEY ON:WIDTH 40
390 REM *
400 REM * Program continues here if display is
410 REM *   sucessfully on the color/graphics adapter
420 REM *
430 END
