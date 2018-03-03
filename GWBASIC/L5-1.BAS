100 REM Program to demonstrate the POINT function.
110 SCREEN 1,0          'Set med-res color mode
120 COLOR 0,1           'Select palette 1 for color
130 KEY OFF:CLS         'Clear the screen
140 FOR I=50 TO 100     'Sides of box are 50 long
150   PSET (110,I)      'Left side
160   PSET (210,I)      'Right side
170 NEXT I
180 FOR I=110 TO 210    'Top and bottom are 100 long
190   PSET (I,50)       'Top side
200   PSET (I,100)      'Bottom side
210 NEXT I
220 LINE (130,75)-(150,75)      'First line in middle
230 LINE (170,75)-(190,75)      'Second line in middle
240 DOTX=130            'Initial x coordinates
250 DOTY=80             'Initial y coordinate
260 DOTXINC=1           'Initial x amount to move
270 DOTYINC=1           'Initial y amount to move
280 PSET (DOTX,DOTY)    'Put initial dot on
290 FOR I=1 TO 500      'Move dot 500 times
300   DOTXOLD=DOTX        'Save old x for use when erasing
310   DOTYOLD=DOTY        'Save old y for use when erasing
320   DOTX=DOTX+DOTXINC   'Move in x direction
330   IF POINT(DOTX,DOTY)=0 THEN 360      'See if hit wall
340   DOTXINC=-DOTXINC    'Hit wall, so reverse x motion
350   DOTX=DOTX+2*DOTXINC '  & move in new x direction
360   DOTY=DOTY+DOTYINC   'Move in y direction
370   IF POINT(DOTX,DOTY)=0 THEN 400      'See if hit wall
380   DOTYINC=-DOTYINC    'Hit wall, so reverse y motion
390   DOTY=DOTY+2*DOTYINC '  & move in new y direction
400   PRESET (DOTXOLD,DOTYOLD)    'Erase old dot
410   PSET (DOTX,DOTY)    'Draw dot in new location
420 NEXT I
430 PRESET (DOTX,DOTY)    'Erase last dot
440 LOCATE 24,9:PRINT "PRESS ANY KEY TO CONTINUE";
450 A$=INKEY$:IF A$="" THEN 450 ELSE CLS
460 END
