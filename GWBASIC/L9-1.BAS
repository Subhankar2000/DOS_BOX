100 REM Piechart program.
110 REM Initialize the screen
120 SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
130 REM Get all the values needed
140 INPUT "Number of items (1-9)";N
150 IF N<0 OR N>9 THEN 140
160 TOTAL=0
170 FOR I=1 TO N
180    INPUT "Number, Label";ITEM(I),L$
190    LABEL$(I)=LEFT$(L$,7)      'Labels 7 long maximum
200    TOTAL=TOTAL+ITEM(I)       'Sum of total of inputs
210 NEXT I
220 CLS             'Clear the screen
230 OLDANG=0        'Init angle at which last wedge was drawn
240 TWOPI=6.28      'The radian equivalent of 360 degrees
250 FOR I=1 TO N    'There will be N wedges drawn
260   REM Calculate fraction of circle taken by this wedge
270   ADDANG=TWOPI*(ITEM(I)/TOTAL)
280   REM Calculate the ending angle for this wedge
290   NEWANG=OLDANG+ADDANG
300   REM Draw the wedge with a radius of 60 dots in white
310   CIRCLE(160,100),60,3,-OLDANG,-NEWANG
320   REM Calculate the x and y components of the line which
330   REM   would go through the center of the wedge
340   XCOMP=COS(OLDANG+(ADDANG/2))
350   YCOMP=-SIN(OLDANG+(ADDANG/2))*(5/6)
360   REM Fill in the wedge by painting starting at a point
370   REM   in the center of the wedge
380   PAINT(160+XCOMP*30,100+YCOMP*30),I MOD 4,3
390   REM Find a place in text character location terms to put
400   REM   the label for this wedge
410   LOCATE (100+YCOMP*95)/8,(140+XCOMP*95)/8
420   PRINT LABEL$(I)           'Label the wedge
430   REM The new angle for this wedge is the old angle for
440   REM   the next wedge
450   OLDANG=NEWANG
460 NEXT I
470 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
480 IF INKEY$="" GOTO 480 ELSE CLS
490 END
