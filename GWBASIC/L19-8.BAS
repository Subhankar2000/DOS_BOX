100 REM Program to monitor the states of the
110 REM   CapsLock and NumLock keys.
120 SCREEN 1,0:COLOR 0,1:CLS:KEY OFF
130 REM Print labels
140 LOCATE 3,10:PRINT "CAPSLOCK STATE"
150 LOCATE 8,10:PRINT "NUMLOCK STATE"
160 LOCATE 15,8:PRINT "PRESS THE = KEY TO END"
170 REM Point segment to BIOS variables
180 DEF SEG=0
190 REM Loop to keep checking until the
200 REM   = key hit
210 IF INKEY$="=" THEN CLS:END
220   REM CapsLock state
230   LOCATE 5,15:IF PEEK(&H417) AND &H40 THEN                                        PRINT "UPPERCASE" ELSE PRINT "LOWERCASE"
240   REM NumLock state
250   LOCATE 10,15:IF PEEK(&H417) AND &H20 THEN                                       PRINT "NUMERIC   " ELSE PRINT "NONNUMERIC"
260 GOTO 210
