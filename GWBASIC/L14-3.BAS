100 REM Program to demonstrate the LINE statement in
110 REM   high-resolution mode.
120 SCREEN 2:KEY OFF:CLS        'Set hi-res screen
130 REM Draw right-angle lines
140 LINE (10,50)-(10,100)
150 LINE (10,100)-STEP(629,0)
160 LINE (10,50)-(150,100)
170 REM Draw angled lines down to the base line
180 LINE (10,50)-(300,100)
190 LINE (10,50)-(450,100)
200 LINE (10,50)-(639,100)
210 REM Draw a box
220 LINE (10,110)-STEP(160,80),,B
230 REM Draw a solid box
240 LINE (340,130)-(460,170),,BF
250 LOCATE 24,27:PRINT "PRESS ANY KEY TO CONTINUE";
260 A$=INKEY$:IF A$="" THEN 260
270 SCREEN 0,1:WIDTH 40       'Reset screen
280 END
