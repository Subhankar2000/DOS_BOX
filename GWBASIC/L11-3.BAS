10 REM Blockbuster--playfield, bricks,  and paddle.
100 DEFINT A-Z:SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
130 LINE(0,0)-(319,199),2,BF:LINE(80,20)-(241,185),0,BF
140 FOR I=0 TO 7:FOR J=0 TO 3:LINE(82+20*I,48+J*12)                                 -STEP(18,8),((I+J) MOD 2)+1,BF:NEXT J:NEXT I
160 PX=150:PXINC=0
190 A$=INKEY$:IF A$="c" THEN PXINC=5 ELSE IF A$="z" THEN                            PXINC=-5 ELSE IF A$="x" THEN PXINC=0
200 OLDPX=PX:PX=PX+PXINC:IF PX<80 OR PX>221 THEN PX=OLDPX
210 LINE(OLDPX,181)-(OLDPX+20,181),0:                                               LINE(PX,181)-(PX+20,181),3:OLDPX=PX
270 GOTO 190
