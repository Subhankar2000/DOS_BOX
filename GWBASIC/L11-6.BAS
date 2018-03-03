10 REM Blockbuster--a pong-type video game--complete, commented version.
100 DEFINT A-Z:SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
105 REM Draw the ball and fill it in
110 CIRCLE(3,3),2,3:PAINT STEP(0,0),3
115 REM Save the ball in array called BALL
120 DIM BALL(10):GET(0,0)-(5,5),BALL
125 REM Draw the playfield
130 LINE(0,0)-(319,199),2,BF:LINE(80,20)-(241,185),0,BF
135 REM Draw the bricks in the playfield
140 FOR I=0 TO 7:FOR J=0 TO 3:LINE(82+20*I,48+J*12)-STEP(18,8),((I+J) MOD 2)+1,BF:NEXT J:NEXT I
145 REM Initialize the number of balls and number of bricks
150 NBALLS=3:NBRKS=32
155 REM Set initial paddle position and movement
160 PX=150:PXINC=0
165 REM Keep track of number of balls left, if none then end game
170 LOCATE 2,2:PRINT "Balls left ";NBALLS:IF NBALLS=0 THEN LOCATE 15,13:PRINT "YOU LOST!!!!!":GOTO 300
175 REM Start new ball and direction
180 BX=80:BY=100:BXINC=4:BYINC=4:PUT(BX,BY),BALL
185 REM Set paddle direction according to what key is pressed
190 A$=INKEY$:IF A$="c" THEN PXINC=5 ELSE IF A$="z" THEN PXINC=-5 ELSE IF A$="x" THEN PXINC=0
195 REM Find new paddle location--do not let it go off playing field
200 OLDPX=PX:PX=PX+PXINC:IF PX<80 OR PX>221 THEN PX=OLDPX
202 REM Draw the paddle at its new location which then becomes the
204 REM   old location
210 LINE(OLDPX,181)-(OLDPX+20,181),0:LINE(PX,181)-(PX+20,181),3:OLDPX=PX
215 REM Find new horizontal ball location--if it would hit a wall then go in other direction
220 OLDBX=BX:BX=BX+BXINC:IF BX<80 OR BX>234 THEN BXINC=-BXINC:BX=BX+2*BXINC
225 REM Find new vertical ball location--if it hits the top then go down
230 OLDBY=BY:BY=BY+BYINC:IF BY<24 THEN BYINC=-BYINC:BY=BY+2*BYINC
232 REM If ball is at paddle row and missed the paddle then goto line 280
234 REM If ball is at paddle line and hit the paddle then set ball to go up
236 REM   and set the horizontal movement according to where the paddle was
238 REM   hit
240 IF BY>175 THEN IF BX<PX-5 OR BX>PX+20 THEN 280 ELSE BYINC=-BYINC:BY=BY+2*BYINC:BXINC=(BX-PX)\2-4
242 REM Erase the ball, restoring the background.  If the dot at the center
244 REM   of where the ball is to be put next is black then goto 260.  If
246 REM   not, then a brick has been hit, so erase the brick by PAINTing it
248 REM   the background color, then reverse the direction of the ball and
249 REM   reduce the brick count by one.  If no bricks left, you won!!!
250 PUT(OLDBX,OLDBY),BALL:IF POINT(BX+2,BY+2)=0 THEN GOTO 260 ELSE PAINT(BX+2,BY+2),0:BYINC=-BYINC:BY=BY+2*BYINC:NBRKS=NBRKS-1:LOCATE 2,20:PRINT "Bricks left";NBRKS:IF NBRKS=0 THEN LOCATE 15,13:PRINT "YOU WON!!!!":GOTO 300
255 REM Draw the ball at its new location
260 PUT(BX,BY),BALL
265 REM Loop back and do it all again
270 GOTO 190
275 REM The ball went past the paddle, so there is one less ball
280 NBALLS=NBALLS-1
285 REM Erase the old ball and goto where a new ball will be started
290 PUT(OLDBX,OLDBY),BALL:GOTO 170
295 REM Common proper exit for both winning and loosing
300 LOCATE 25,9:PRINT "PRESS ANY KEY TO CONTINUE";
310 A$=INKEY$:IF A$="" THEN 310 ELSE CLS
320 END
