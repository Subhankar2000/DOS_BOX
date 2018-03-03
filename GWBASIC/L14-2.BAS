100 REM Program to demonstrate the POINT function in
110 REM   high-resolution mode.
120 SCREEN 2:KEY OFF:CLS        'Set hi-res screen
130 REM Draw vertical line
140 FOR I=50 TO 150
150   PSET(300,I)
160 NEXT I
170 REM Starting in column 50, draw a line to the right
180 REM   until it hits the first line
190 COLUMN=50
200 COLUMN=COLUMN+1
210 IF POINT (COLUMN,100)<>0 THEN 240
220 PSET(COLUMN,100):PRESET(COLUMN-1,100)
230 GOTO 200
240 LOCATE 24,27:PRINT "PRESS ANY KEY TO CONTINUE";
250 A$=INKEY$:IF A$="" THEN 250
260 SCREEN 0,1:WIDTH 40        'Reset screen
270 END
