100 REM Program to demonstrate text mode color shading.
110 SCREEN 0,1:COLOR ,0,0:WIDTH 40:LOCATE ,,0:KEY OFF:CLS
120 REM Select each of colors 1-7 in turn
130 FOR I=1 TO 7
140   COLOR I
150   REM Select each of 25%, 50%, & 75% shading characters
160   FOR J=176 TO 178
170     REM Draw a strip across the screen in each shading
180     REM   and color
190     FOR COLUMN=5 TO 35
200       LOCATE ,COLUMN:PRINT CHR$(J);
210     NEXT COLUMN
220     PRINT
230   NEXT J
240 NEXT I
250 LOCATE 24,8:PRINT "PRESS ANY KEY TO CONTINUE";
260 A$=INKEY$:IF A$="" THEN 260 ELSE CLS
270 END
