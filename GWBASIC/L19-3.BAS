100 REM Program to demonstrate the three color
110 REM   palettes available on the IBM PC.
120 REM   The last palette does not work on
130 REM   TV's.
140 SCREEN 1,0:CLS:KEY OFF     'Set screen
150 COLOR 0                    'Black background
160 REM Do palette 0 first
170 COLOR ,0                   'Select palette 0
180 REM Set label & label location
190 LBL$="Palette 0":COL=17
200 GOSUB 310                  'Draw circles in colors 1,2,3
210 REM Palette 1
220 COLOR ,1                   'Select palette 1
230 LBL$="Palette 1":COL=17    'Set label/loc
240 GOSUB 310                  'Circles in three colors
250 REM Unoffical palette
260 SCREEN ,1                  'Disable color burst
270 LBL$="Unofficial Palette":COL=12
280 GOSUB 310                  '3 circles
290 SCREEN 0,1:WIDTH 40        'Reset screen
300 END
310 REM Subroutine to draw circles in
320 REM   colors 1, 2, and 3.  Screen is
330 REM   labelled with sting in LBL$
340 CLS
350 CIRCLE(80,100),30,1:PAINT STEP(0,0),1
360 CIRCLE(160,100),30,2:PAINT STEP(0,0),2
370 CIRCLE(240,100),30,3:PAINT STEP(0,0),3
380 REM Label screen
390 LOCATE 21,COL:PRINT LBL$
400 LOCATE 24,8:PRINT "PRESS ANY KEY TO CONTINUE";
410 A$=INKEY$:IF A$="" THEN 410
420 RETURN
