
'**************** Finding  Calender of a Month in a Year ********************'

  DIM M(13): FOR K = 0 TO 12: READ M(K): NEXT K       'no. of days in a month
  DATA 0,31,28,31,30,31,30,31,31,30,31,30,31
 
  DIM N$(12): FOR K = 1 TO 12: READ N$(K): NEXT K     'names of the months
  DATA JANUARY,FEBRUARY,MARCH,APRIL,MAY,JUNE,JULY
  DATA AUGUST,SEPTEMBER,OCTOBER,NOVEMBER,DECEMBER

  DIM W$(7): FOR K = 1 TO 7: READ W$(K): NEXT K       'names of days
  DATA " SUN "," MON "," TUE "," WED "
  DATA " THU "," FRI "," SAT "
 
  COLOR , 14: CLS

repeat:
PLAY "MBO4L8CE"

year:
  COLOR 15: LOCATE 8, 42: PRINT STRING$(4, 176)         'typing zone for year
  LOCATE 8, 35: INPUT "YEAR : ", Y                      'intake the year
  IF Y < 1901 OR Y > 2099 THEN                          'check the valid range
    PLAY "O3L6C": LOCATE 20, 18: COLOR 0                'warning message
    PRINT "The valid range of year is : 1901 - 2099"    'declare the range
    GOTO year                                           'retake the year
  END IF
  LOCATE 20: PRINT SPACE$(80)                           'wipe out the message

month:
  COLOR 15: LOCATE 11, 43: PRINT STRING$(3, 176)      'typing zone for month
  LOCATE 11, 35: INPUT "MONTH : ", M$                 'intake the month
  FOR K = 1 TO 12
    IF UCASE$(M$) = LEFT$(N$(K), 3) THEN              'match the name of month
      P = K: GOTO calculate                           'identify month, proceed
    END IF
  NEXT K
  LOCATE 20, 22: COLOR 0                              'if entered name is not
    PRINT "The valid names for months are : -"        '--a valid name of month
    PLAY "O3L6C": PRINT                               'warning & display....
    FOR K = 1 TO 12
      PRINT LEFT$(N$(K), 3); SPC(4);                  'allowed names for month
    NEXT K
  GOTO month                                          'retake the month

calculate:                                      '=== 01/01/1900 was MONDAY ===
  Z = Y - 1900                                  'base year 1900
  L = Z \ 4: R = Z MOD 4                        'no. of leapyear elapsed
  IF R = 0 THEN L = L - 1: M(2) = 29            'in leapyear FEB has 29
  D = Z + L                                     'day advances by one each year
  FOR K = 0 TO P - 1                            '-- & one more in leapyear
    D = D + M(K)                                'add days of earlier months
  NEXT K
  D = D MOD 7                                   'days cycles in seven days

display:
  CLS : C = 41 - (LEN(N$(P)) + 7) / 2               'center position the names
  LOCATE 4, C: COLOR 15: PRINT N$(P) + " :"; Y      '--of month & year
 
  LOCATE 7, 20                                      'names of days
  COLOR 0, 3: PRINT W$(1);
  COLOR , 14: PRINT SPC(1);                       'Sunday = black on red
 
  FOR K = 2 TO 7
    COLOR 0, 7: PRINT W$(K);                      'others = black on white
    COLOR , 14: PRINT SPC(1);                     'one space between names
  NEXT K
 
  LOCATE 8
  FOR K = 1 TO M(P)                                 '7 dates in one row
    Q = (K + D) MOD 7: T = Q * 6 + 21               '1st of month on D-th. day
    IF Q = 0 THEN PRINT : PRINT                     'insert blank rows
    IF CSRLIN = 19 THEN LOCATE 9                    'lift 6th row dates to 1st
    IF Q = 0 THEN
      COLOR 3, 14: PRINT USING "##"; TAB(T); K;      'Sundays are in red
    ELSE                                            '--right justify the dates
      COLOR 7, 14: PRINT USING "##"; TAB(T); K;      'other days are in white
    END IF
  NEXT K

  PLAY "MBO3L8CDEDC"
  LOCATE 2, 15: COLOR 15: PRINT CHR$(201); STRING$(49, 205); CHR$(187)
  FOR K = 3 TO 18
    LOCATE K, 15: COLOR 15: PRINT CHR$(186)
    LOCATE K, 65: PRINT CHR$(186)
    LOCATE K, 66: COLOR 0: PRINT " "; STRING$(2, 219)
  NEXT K
  LOCATE 19, 15: COLOR 15: PRINT CHR$(200); STRING$(49, 205); CHR$(188)
  LOCATE 19, 67: COLOR 0: PRINT STRING$(2, 219)
  LOCATE 20, 16: PRINT STRING$(53, 219)

choice:
  COLOR 0, 14
  LOCATE 22, 32: PRINT "Do You Want More ?"
  LOCATE 24, 36: PRINT "Yes  /  No";
  DO: N$ = INKEY$: LOOP WHILE N$ = ""   'wait until y or n aren't pressed
  M$ = UCASE$(N$)                       'ignore cases of key pressed
  IF M$ = "Y" THEN CLS : GOTO repeat    'if y, then repeat
  IF M$ = "N" THEN COLOR 7, 0: CLS : SYSTEM        'Exit to DOS for direct run
  IF M$ <> "Y" AND M$ <> "N" THEN BEEP: GOTO choice        'warn on mis-typing

