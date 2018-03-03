100 REM Program to demonstrate printing all 255
110 REM   PC characters in color.
120 SCREEN 0,1:WIDTH 40:LOCATE ,,0:COLOR 7,0,0:CLS:KEY OFF  'Set screen
130 DEF SEG                      'Point segment to BASIC interpreter
140 REM Machine-language subroutine will be stored
150 REM   in SUBRT$
160 SUBRT$=""
170 REM Store machine-language subroutine in SUBRT$
180 FOR J=1 TO 26:READ I:SUBRT$=SUBRT$+CHR$(I):NEXT J
190 DATA &h55,&h8B,&hEC,&h8B,&h5E,&h08,&h8A,&h07,&h8B
200 DATA &h5E,&h06,&h8A,&h1F,&hB4,&h09,&h28,&hFF,&hB9
210 DATA &h01,&h00,&hCD,&h10,&h5D,&hCA,&h04,&h00
220 REM Get descriptor address for SUBRT$
230 A=VARPTR(SUBRT$)
240 REM Get string content's address (where machine-
250 REM   language subroutine is) from descriptor
260 ADDR=PEEK(A+1)+PEEK(A+2)*256
270 REM Loop through ASCII values for all 255 characters
280 FOR CHAR%=1 TO 255
290   REM Pause in the middle so characters can be studied
300   IF CHAR%=126 THEN LOCATE 24,8:PRINT "PRESS ANY KEY TO SEE MORE";
310   IF CHAR%=126 THEN IF INKEY$="" THEN 310 ELSE CLS
320   REM Select in turn all 16 colors except black
330   COLR%=CHAR% MOD 15 +1
340   CALL ADDR(CHAR%,COLR%)               'Print colored character
350   REM Move two columns to the right, move to left margin
360   REM   and advance two lines if at right margin
370   IF POS(X)+2>40 THEN PRINT:PRINT ELSE LOCATE ,POS(X)+2
380 NEXT CHAR%
390 LOCATE 24,8:PRINT "PRESS ANY KEY TO CONTINUE";
400 A$=INKEY$:IF A$="" THEN 400 ELSE CLS
410 END
