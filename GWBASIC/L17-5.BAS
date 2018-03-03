10 REM Racecar--an arcade-style game--commented version.
95 REM Make variables integers, set b/w text mode, clear screen
100 DEFINT A-Z:SCREEN 0,0:COLOR 7,0,0:WIDTH 40:LOCATE ,,0:CLS:KEY OFF
105 REM Seed random # generator so game is different each time
110 RANDOMIZE(VAL(RIGHT$(TIME$,2)))
115 REM Initialize game parameters
120 TRKWIDTH=9:TRKPOS=15
130 NUMLINES=3:TRKLEN=200
135 REM Start car in middle of track and heading straight
140 CARPOS=TRKPOS+TRKWIDTH\2:CARDIR=0
145 REM Draw initial section of track
150 FOR I=1 TO 23:LOCATE 24,TRKPOS:                                                 PRINT "]]" SPC(TRKWIDTH) "[[":NEXT I
155 REM Initialize crash count display
160 NUMCRASHES=0:LOCATE 25,13:PRINT "Crashes=";:LOCATE 25,23:                        PRINT NUMCRASHES;
165 REM Main loop for actual game play
170 FOR TRKCNT=1 TO TRKLEN
175   REM Get a random direction to move track in (-1,0 or 1)
180   TRKDIR=1-INT(RND(100)*3)
185   REM Repeat move track in direction so it wanders properly
190   FOR TRKSECTION=1 TO NUMLINES
195     REM Find new place to put track, if it would hit the
196     REM  side of the screen then reverse motion
200     TRKPOS=TRKPOS+TRKDIR:IF (TRKPOS<2) OR (TRKPOS>27) THEN                          TRKPOS=TRKPOS-2*TRKDIR:TRKDIR=-TRKDIR
205     REM Put the next line of the track on the screen,
206     REM   cause screen to scroll up one line
210     LOCATE 24,TRKPOS:PRINT "]]" SPC(TRKWIDTH)"[["
215     REM Set a new car direction if a direction key hit
220     K$=INKEY$:IF K$="z" THEN CARDIR=-1 ELSE IF K$="x" THEN                          CARDIR=0 ELSE IF K$="c" THEN CARDIR=1
225     REM Find new car position and check for side of road
230     CARPOS=CARPOS+CARDIR:IF SCREEN(10,CARPOS)=32 GOTO 280
234       REM Car has hit side of track
235       REM If car hit right side of track, it should go left
240       IF SCREEN(10,CARPOS)=91 THEN CARPOS=CARPOS-2
245       REM If car hit left side of track it should go right
250       IF SCREEN(10,CARPOS)=93 THEN CARPOS=CARPOS+2
255       REM Beep so player knows he/she crashed
260       BEEP:BEEP:BEEP
265       REM Add to the number of crashes to be displayed
270       NUMCRASHES=NUMCRASHES+1
275     REM draw car in its new position 
280     LOCATE 10,CARPOS:PRINT "^";
285     REM display the number of crashes
290     LOCATE 25,23:PRINT NUMCRASHES;
300   NEXT TRKSECTION
310 NEXT TRKCNT
315 REM Short delay to help stop key inputs
320 FOR J=1 TO 1000:NEXT J
325 REM Clear the inkey buffer
330 IF INKEY$<>"" THEN 330
340 LOCATE 24,7:PRINT "PRESS ANY KEY TO CONTINUE";
350 A$=INKEY$:IF A$="" THEN 350 ELSE CLS
360 END
