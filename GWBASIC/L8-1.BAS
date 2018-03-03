100 REM Program to demonstrate the PAINT statement.
110 SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
120 REM Draw three circles and PAINT starting at
130 REM the centers with three different colors
140 CIRCLE (120,80),40,3        'Draw first circle
150 PAINT STEP(0,0),3,3         'Fill in with white
160 CIRCLE (150,120),40,3       'Draw second circle
170 PAINT STEP(0,0),1,3         'Fill in with blue
180 CIRCLE (180,80),40,3        'Draw third circle
190 PAINT STEP(0,0),2,3         'Fill in with purple
200 LOCATE 24,8:PRINT "PRESS ANY KEY TO CONTINUE";
210 A$=INKEY$:IF A$="" THEN 210 ELSE CLS
220 END
