100 REM Program to plot a specified function in
110 REM   high-resolution mode.
120 REM Variables starting with I-L are integers
130 DEFINT I-L
140 REM Set high-resolution screen
150 SCREEN 2:KEY OFF:CLS
160 REM Prompt for labels
170 INPUT "Label for Graph? (max 78 letters) ",G$:G$=LEFT$(G$,78)
180 INPUT "Label for X axis? (max 45 letters) ",X$:X$=LEFT$(X$,45)
190 INPUT "Label for Y axis? (max 8 letters) ",Y$:Y$=LEFT$(Y$,8)
200 REM Prompt for range of x values
210 INPUT "Minimum X value (-10000 to 10000)? ",MINX
220 IF MINX<-10000 OR MINX>10000 THEN 210
230 INPUT "Maximum X value (-10000 to 10000)? ",MAXX
240 IF MAXX<-10000 OR MAXX>10000 THEN 230
250 REM Remove dialogue from screen
260 CLS
270 REM Print labels, centered
280 LOCATE 3,(80-LEN(G$))/2:PRINT G$
290 LOCATE 21,(50-LEN(X$))/2+21:PRINT X$
300 LOCATE 11,1:PRINT Y$
310 REM Put axes on screen.  Y axis is double width
320 REM   to show well on poor-quality displays
330 LINE (154,36)-(155,136),,B:LINE -(554,136)
340 REM Draw hatch marks on axes
350 FOR I=0 TO 9
360   REM Hatch marks on y axis
370   LINE (152,36+10*I)-STEP(5,0)
380   REM Hatch marks on x axis, doubled to show up well
390   LINE (554-40*I,135)-STEP(1,2),,B
400 NEXT I
410 LOCATE 24,25:PRINT "PLEASE WAIT...I'M CALCULATING";
420 REM Calculate full set of y data points.  All must be
430 REM   calculated before plotting so that program can
440 REM   automatically handle the range for the y scale
450 REM DATAPNT holds all y values
460 DIM DATAPNT(400)
470 REM Set min and max y so that any value will replace them
480 MINY=1.7E+38
490 MAXY=-1.7E+38
500 REM We will plot 401 points-figure x increment
510 REM   for one point
520 XINC=(MAXX-MINX)/400!
530 REM Calculate all y values, store, and determine
540 REM   y max and min
550 FOR I=0 TO 400
560   REM Determine x value for data point # I, based on XINC,
570   REM   then use subroutine at line 470 to calc y value
580   XVALUE=MINX+I*XINC:GOSUB 900:DATAPNT(I)=YVALUE
590   REM Check for max & min
600   IF YVALUE>MAXY THEN MAXY=YVALUE
610   IF YVALUE<MINY THEN MINY=YVALUE
620 NEXT I
630 REM Print scales on corresponding axes.  MINX and MAXX
640 REM   were input by the user
650 LOCATE 5,5:PRINT "Max ";:PRINT USING "######.###";MAXY
660 LOCATE 17,5:PRINT "Min ";:PRINT USING "######.###";MINY
670 LOCATE 19,15:PRINT "Min ";:PRINT USING "######.###";MINX
680 LOCATE 19,65:PRINT "Max ";:PRINT USING "######.###";MAXX
690 REM YINC is number of y units each pixel represents
700 YINC=(MAXY-MINY)/100!
710 REM Loop to plot points
720 FOR I=0 TO 400
730   REM Figure how many pixels up from x axis to plot
740   REM   Special case-if MAXY=MINY, then always plot
750   REM   50 pixels up
760   IF YINC<>0 THEN HEIGHTINPIXELS=(DATAPNT(I)-MINY)/YINC ELSE                      HEIGHTINPIXELS=50
770   REM Plot point.  First time, simply plot dot, thereafter,
780   REM   draw a line from last point to current point
790   IF I<>0 THEN LINE -(155+I,136-HEIGHTINPIXELS) ELSE                              PSET(155+I,136-HEIGHTINPIXELS)
800 NEXT I
810 REM Clear any keystrokes, so user doesn't end by accident
820 IF INKEY$<>"" THEN 820
830 REM Wait for a keystroke before ending, so can admire
840 LOCATE 24,25:PRINT "  PRESS ANY KEY TO CONTINUE  ";
850 A$=INKEY$:IF A$="" GOTO 850
860 SCREEN 0,1:WIDTH 40         'Reset the screen
870 END
880 REM Subroutine to calculate YVALUE given XVALUE
890 REM   Change line 870 to change function
900 YVALUE=SIN(XVALUE)
910 RETURN
