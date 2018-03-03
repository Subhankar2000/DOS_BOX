100 REM Program to demonstrate color in high-resolution
110 REM   graphics mode on RGB monitors only.
120 SCREEN 2:KEY OFF:CLS         'Set screen
130 REM We will make the circle each color in turn
140 CIRCLE (320,100),50:PAINT STEP(0,0)
150 LOCATE 18,34:PRINT "COLORED CIRCLE" 'Label it
160 REM Do all 15 colors but black
170 FOR I=1 TO 15
180   OUT &H3D9,I                'Select color
190   FOR J=1 TO 1000:NEXT J     'Delay for viewing
200 NEXT I
210 REM Wait to end
215 LOCATE 21,28:PRINT "PRESS ANY KEY TO CONTINUE"
220 A$=INKEY$:IF A$="" THEN 220
230 SCREEN 0,1:WIDTH 40          'Reset screen
240 END
