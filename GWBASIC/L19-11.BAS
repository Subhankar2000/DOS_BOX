100 REM Program to demonstrate printing all 255
110 REM   PC characters.
120 SCREEN 0,1:WIDTH 40:LOCATE ,,0:COLOR 7,0,0:CLS:KEY OFF    'Set screen
130 DEF SEG                          'Point segment to BASIC interpreter
140 REM String SUBRT$ will hold machine-language routine
150 SUBRT$=""
160 REM Loop to load machine-language routine
170 REM   into SUBRT$
180 FOR J=1 TO 26:READ I:SUBRT$=SUBRT$+CHR$(I):NEXT J
190 DATA &h55,&h8B,&hEC,&h8B,&h5E,&h08,&h8A,&h07,&h8B
200 DATA &h5E,&h06,&h8A,&h1F,&hB4,&h09,&h28,&hFF,&hB9
210 DATA &h01,&h00,&hCD,&h10,&h5D,&hCA,&h04,&h00
220 COLR%=7                          'Print characters in white
230 A=VARPTR(SUBRT$)                 'Get SUBRT$ descriptor address
240 REM Get address of string contents (where machine-
250 REM   language routine is stored) from descriptor
260 SPECPRINT=PEEK(A+1)+PEEK(A+2)*256
270 REM Loop to call routine with all ASCII values from
280 REM   1 to 255, to print all characters
290 FOR CHAR%=1 TO 255
300   REM Pause in the middle so the characters can be studied
310   IF CHAR%=126 THEN LOCATE 24,8:PRINT "PRESS ANY KEY TO SEE MORE";
320   IF CHAR%=126 THEN IF INKEY$="" THEN 320 ELSE CLS
330   CALL SPECPRINT(CHAR%,COLR%)      'Call routine to print
340   REM Space over two columns, drop to left edge &
350   REM   advance two lines ifat right margin
360   IF POS(X)+2>40 THEN PRINT:PRINT ELSE LOCATE ,POS(X)+2
370 NEXT CHAR%
380 LOCATE 24,8:PRINT "PRESS ANY KEY TO CONTINUE";
390 A$=INKEY$:IF A$="" THEN 390 ELSE CLS
400 END
