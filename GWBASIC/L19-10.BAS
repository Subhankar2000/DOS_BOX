100 REM Program to demonstrate the use of INKEY$
110 REM   to clear the key buffer
120 REM Print 100 numbers, clearing buffer
130 REM   in between PRINTS
140 SCREEN 1,0:COLOR 0,1:CLS:KEY OFF
150 FOR I=1 TO 100
160   PRINT I
170   REM Read characters out of buffer until empty
180   IF INKEY$<>"" THEN 180
190 NEXT I
200 LOCATE 24,8:PRINT "PRESS ANY KEY TO CONTINUE";
210 A$=INKEY$:IF A$="" THEN 210 ELSE CLS
220 END
