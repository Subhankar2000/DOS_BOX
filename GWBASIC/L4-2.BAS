100 REM Program to show each of the 16 background colors
110 REM   available in medium-resolution graphics mode.
120 REM Set screen
130 SCREEN 1,0:KEY OFF:CLS
140 REM Select each of colors 0 through 15 in turn
150 FOR I=0 TO 15
160   REM Select new background color
170   COLOR I
180   REM Wait a while
190   FOR J=1 TO 800:NEXT J
200 NEXT I
210 REM Reset screen
220 COLOR 0
230 END
