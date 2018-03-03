100 REM Program to demonstrate controlling the
110 REM   CapsLock and NumLock states.  CapsLock
120 REM   is kept LOWERCASE, and NumLock is kept
130 REM   NUMERIC.
140 SCREEN 1,0:COLOR 0,1:CLS:KEY OFF
150 LOCATE ,,1               'Set cursor on
160 DEF SEG=0                'Point segment to BIOS variables
170 REM Initial prompts
180 PRINT "TYPE AT THE KEYBOARD, AND TRY TO CHANGE"
190 PRINT "   THE CAPSLOCK AND NUMLOCK STATES."
200 PRINT "       PRESS THE = KEY TO EXIT.":PRINT
210 REM Loop to input characters & set key states
220   REM Set CapsLock lowercase
230   POKE &H417,PEEK(&H417) AND (NOT &H40)
240   REM Set NumLock numeric
250   POKE &H417,PEEK(&H417) OR &H20
260   A$=INKEY$              'Get character, if any
270   REM Check for character, end if =
280   IF A$="" THEN 230 ELSE IF A$="=" THEN 310
290   PRINT A$;              'Echo character to keyboard
300 GOTO 210
310 REM Turn NumLock back to nonnumeric to end
320 POKE &H417,PEEK(&H417) AND (NOT &H20)
330 CLS:END
