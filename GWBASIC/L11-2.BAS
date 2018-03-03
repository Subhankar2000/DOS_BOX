10 REM Blockbuster--playfield and bricks.
100 DEFINT A-Z:SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
130 LINE(0,0)-(319,199),2,BF:LINE(80,20)-(241,185),0,BF
140 FOR I=0 TO 7:FOR J=0 TO 3:LINE(82+20*I,48+J*12)                                 -STEP(18,8),((I+J) MOD 2)+1,BF:NEXT J:NEXT I
