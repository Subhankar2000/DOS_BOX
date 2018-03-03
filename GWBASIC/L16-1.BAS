100 REM A program that demonstrates the color text modes.
110 REM   80 character text mode may be illegible on TV's
120 REM   and low-quality monitors.  This program is useful
130 REM   for testing the quality of a color monitor.
140 SCREEN 0,1:COLOR ,0:KEY OFF:CLS 'Set COLOR TEXT MODE
150 DIM A$(40)                  'Set aside memory
160 A$="40 CHARACTER COLOR TEXT MODE"
170 WIDTH 40                    'Set to 40 characters on line
180 LOCATE ,,0                  'Turn cursor off
190 X=5                         'Set printing location
200 GOSUB 290                   'Display text on screen
210 A$="80 CHARACTER COLOR TEXT MODE"
220 COLOR ,0:WIDTH 80           '80 columns/black background
230 LOCATE ,,0                  'Turn cursor off
240 X=25                        'Set printing location
250 GOSUB 290                   'Display text on screen
260 WIDTH 40                    'Set back to 40 columns
270 COLOR 7,0,0:KEY ON:CLS      'Restore screen
280 END                         'Return control to BASIC
290 FOR BG=0 TO 7               'Each line is printed in
300   LOCATE 5+BG,X             '  a different color
310   FOR FG=1 TO LEN(A$)       'Characters will be 16
320     COLOR FG MOD 32,BG,4    '  different characters
330     PRINT MID$(A$,FG,1);    'Display the next character
340   NEXT FG                   'Display characters until
350   PRINT                     '  done displaying all
360 NEXT BG                     '  eight lines
370 COLOR 7,0:LOCATE 18,X:PRINT "PRESS ANY KEY TO CONTINUE"
380 A$=INKEY$:IF A$="" THEN 380    'Wait for key to continue
390 RETURN                      'Finished with this string
