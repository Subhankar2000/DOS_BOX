100 REM Program to demonstrate a scroll window
110 REM   in medium-resolution graphics mode.
120 REM   Text is displayed only on rows 22 thru 24.
130 SCREEN 1,0:COLOR 0,1:CLS:KEY OFF    'Set screen
140 DEF SEG             'Point segment to BASIC interpreter
150 POKE 91,22          'Set top of window to row 23
160 LOCATE 23,1         'Put cursor inside window
170 REM Loop to prompt for figure to draw
180 FOR I=40 TO 280 STEP 40
190   GOSUB 270         'Prompt for figure & draw it
200 NEXT I
210 PRINT:PRINT:PRINT   'Clear the window
220 REM Reset window
230 POKE 91,1
240 LOCATE 24,8:PRINT "PRESS ANY KEY TO CONTINUE";
250 A$=INKEY$:IF A$="" THEN 250 ELSE CLS
260 END
270 REM Subroutine to prompt for figure type
280 REM   and then draw it
290 PRINT:PRINT "PRESS 1 FOR CIRCLE, 2 FOR SQUARE";
300 A$=INKEY$:IF A$="" THEN 300 ELSE A=VAL(A$)
310 REM Try again if not a valid selection
320 IF A<>1 AND A<>2 THEN PRINT "INCORRECT-TRY AGAIN":                              GOTO 290
330 REM Draw a circle
340 IF A=1 THEN CIRCLE (I,100),15,2:PAINT STEP(0,0),2:                              PRINT "CIRCLE DRAWN."
350 REM Draw a square
360 IF A=2 THEN LINE(I-15,85)-STEP(30,30),1,BF:                                     PRINT "SQUARE DRAWN."
370 RETURN
