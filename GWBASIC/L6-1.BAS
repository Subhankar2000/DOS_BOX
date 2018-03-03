100 REM Program that demonstrates the capabilities
110 REM   of the LINE statement.
120 SCREEN 1,0          'Set medium-res color mode
130 COLOR 0,1           'Select palette 1 for color
140 KEY OFF:CLS         'Clear the screen
150 LINE (110,50)-(210,150),2,B   'Head
160 LINE (130,70)-(150,90),1,BF   'Left eye
170 LINE (135,75)-(145,85),0,BF   'Left pupil
180 LINE (170,70)-(190,90),1,BF   'Right eye
190 LINE (175,75)-(185,85),0,BF   'Right pupil
200 LINE (125,110)-(140,125),3    'Left side of mouth
210 LINE -STEP(40,0)              'Center of mouth
220 LINE -STEP(15,-15)            'Right side of mouth
230 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
240 A$=INKEY$:IF A$="" THEN 240 ELSE CLS
250 END
