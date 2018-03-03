100 REM Program to demonstrate the BSAVE and BLOAD
110 REM   statements in med-res graphics mode.
120 SCREEN 1,0:COLOR 0,1:CLS:KEY OFF    'Set screen
130 REM Loop to draw concentric circles
140 FOR I=90 TO 10 STEP -10
150   CIRCLE(160,100),I
160   REM Draw band with cyan or magenta
170   PAINT STEP(0,0),(I\10 MOD 2)+1,3
180 NEXT I
190 REM Save to disk file "circles"
200 DEF SEG=&HB800      'Point segment to color screen
210 BSAVE "circles",0,&H4000    'Save 16K file
220 REM Now clear the screen and reload old screen
230 CLS
240 LOCATE 10,15:PRINT "RELOADING..."
250 FOR I=1 TO 1000:NEXT I:CLS
260 BLOAD "circles",0   'Load display back in
270 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
280 A$=INKEY$:IF A$="" THEN 280 ELSE CLS
290 END
