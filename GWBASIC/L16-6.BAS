100 REM Program to demonstrate complete text character set.
110 REM Initialize text mode screen
120 SCREEN 0,1:COLOR 7,0,0:WIDTH 40:LOCATE ,,0:KEY OFF:CLS
130 REM Run through ASCII values 1-255 (full char set)
140 FOR I=1 TO 255
150   REM Print char with selected ASCII value
160   PRINT CHR$(I);" ";:IF POS(X)>=38 THEN PRINT:PRINT
170   FOR J=1 TO 100:NEXT J        'Short delay
180 NEXT I
190 PRINT:LOCATE 25,8:PRINT "PRESS ANY KEY TO CONTINUE";
200 A$=INKEY$:IF A$="" THEN 200 ELSE CLS
210 END
