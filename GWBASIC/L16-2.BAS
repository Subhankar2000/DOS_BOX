100 REM Program to demonstrate text-mode graphics with
110 REM   a simple graphing program.
120 SCREEN 0,1:COLOR 1,0,0:WIDTH 40:KEY OFF:CLS
130 LOCATE ,,0            'Cursor off
140 REM Draw axes
150 FOR I=1 TO 20:LOCATE I,6:PRINT "I":NEXT I
160 LOCATE 10,7,0:PRINT STRING$(33,"_")
170 REM Label axes
180 COLOR 2
190 LOCATE 8,3:PRINT "S":LOCATE 9,3:PRINT "I"
200 LOCATE 10,3:PRINT "N":LOCATE 11,3:PRINT "E"
210 LOCATE 13,2:PRINT "(x)"
220 LOCATE 12,22:PRINT "x (Radians)"
230 REM Plot a number of sine points
240 COLOR 4
250 FOR X=0 TO 12 STEP .4
260   COLUMN=X*2.5+7      'Column to plot in
270   SINEX=SIN(X)        'Calc sine value
280   REM Calc row that sine value plots in
290   ROW=15-(SINEX+1!)*5
300   LOCATE ROW,COLUMN:PRINT "*";
310 NEXT X
320 COLOR 7:LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
330 A$=INKEY$:IF A$="" THEN 330
340 COLOR 7,0,0:CLS       'Reset screen
350 END
