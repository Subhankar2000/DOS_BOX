10 REM Racecar--initial screen.
100 DEFINT A-Z:SCREEN 0,0:COLOR 7,0,0:WIDTH 40:LOCATE ,,0:CLS:KEY OFF
120 TRKWIDTH=9:TRKPOS=15
150 FOR I=1 TO 23:LOCATE 24,TRKPOS:                                                 PRINT "]]" SPC(TRKWIDTH) "[[":NEXT I
320 END
