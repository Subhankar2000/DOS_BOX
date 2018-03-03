100 REM Program to test whether the display is
110 REM   on the graphics screen.
120 CLS                 'Clear the screen
130 KEY OFF             'Keys off
140 DEF SEG=0           'Prepare to check the current screen
150 IF (PEEK(1040) AND 48)<>48 GOTO 200                  'If not
160 LOCATE 10,27:PRINT "YOU ARE ON THE WRONG SCREEN!"    '  say so
170 LOCATE 25,30:PRINT "PRESS ANY KEY TO EXIT";          '  and make a
180 A$=INKEY$:IF A$="" THEN 180 ELSE CLS                 '  proper exit
190 END
200 SCREEN 0,1          'Set COLOR TEXT MODE
210 WIDTH 40            'Set to 40  characters/line
220 LOCATE ,,0          'Turn cursor off
230 FOR I=1 TO 15       'Display 15 lines
240   LOCATE I+5,I+5    '  starting at 15 locations
250   COLOR I,0,0       '  in 15 different colors
260   PRINT "It works!!!"
270 NEXT I
280 COLOR 7,0,0         'Set screen to white and black
290 LOCATE 25,10:PRINT "PRESS ANY KEY TO EXIT";    'Make a proper
300 A$=INKEY$:IF A$="" THEN 300 ELSE CLS           '  exit
310 END                 'Return to control BASIC
