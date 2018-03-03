100 REM Program to demonstrate DRAW statement movement
110 REM   subcommands by drawing a kite.
120 SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
130 DRAW "m240,40"              'Draw string
140 DRAW "u20 d40 u20 l20 r40"  'Draw cross
150 DRAW "g20 h20 e20 f20"      'Draw outline
160 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
170 A$=INKEY$:IF A$="" THEN 170 ELSE CLS
180 END
