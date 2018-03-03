100 REM Program to determine which display
110 REM   adapters are installed in PC.
120 CLS:KEY OFF
130 REM Check for color/graphics adapter
140 REM Point segment to graphics screen
150 DEF SEG=&HB800
160 LOCATE 10,10:PRINT "COLOR/GRAPHICS ADAPTER: ";
170 A=PEEK(0):POKE 0,(A+1) MOD 256
180 IF PEEK(0)<>(A+1) MOD 256 THEN PRINT "NO" ELSE                                  PRINT "YES"
190 REM Check for monochrome adapter
200 REM Point segment to monochrome screen
210 DEF SEG=&HB000
220 LOCATE 15,10:PRINT "MONOCHROME ADAPTER: ";
230 A=PEEK(0):POKE 0,(A+1) MOD 256
240 IF PEEK(0)<>(A+1) MOD 256 THEN PRINT "NO" ELSE                                  PRINT "YES"
250 LOCATE 20,10:PRINT "PRESS ANY KEY TO CONTINUE";
260 A$=INKEY$:IF A$="" THEN 260
270 SCREEN 0,1 :CLS          'Reset screen
280 END
