
'************************** Displays a Smiling Face *************************'

SCREEN 12                                                'ready the screen
P = 3.141592: E = 1: F = 1.2: D = 10                     'initialise numbers

WINDOW SCREEN (-2000, 2000)-(2000, -2000)
GOSUB figure
DIM F(375): GET (162, 25)-(484, 455), F

WINDOW: CLS
DO WHILE N$ = ""
  IF E = 1 THEN
    PUT (573, 420), F, PSET
    PUT (15, 420), F, XOR
  ELSE
    PUT (15, 420), F, PSET
    PUT (573, 420), F, XOR
  END IF
  GOSUB figure
  SWAP E, F: D = -D                                      'look left & right
  FOR T = 4 TO 9 STEP .05
    S = EXP(T)
    SOUND S, .1                                          'whirling sound
  NEXT T
N$ = INKEY$
LOOP

SCREEN 0: SYSTEM

figure:
  CIRCLE (320, 240), 160, 15                             'face
  CIRCLE (320, 180), 160, 7, 5 * P / 4, 7 * P / 4        'mouth
  CIRCLE (320, 180), 168, 0, 4 * P / 3, 5 * P / 3, F     'wipe former lip
  CIRCLE (320, 180), 168, 15, 4 * P / 3, 5 * P / 3, E    'draw present lip
  CIRCLE (320, 180), 120, 2, -8 * P / 6, 10 * P / 6      'nose
  FOR R = 120 TO 140 STEP 10
    CIRCLE (320, 240), R, 4, 2 * P / 6, 4 * P / 6        'fore head lines
  NEXT R
  FOR X = 250 TO 390 STEP 140
    CIRCLE (X, 180), 40, 2, , , .7                       'eyes
    CIRCLE (X, 180), 60, 2, P / 6, 5 * P / 6, .7         'eye brows
    CIRCLE (X, 180), 16, 1: PAINT (X, 180), 15, 1        'white eye balls
    CIRCLE (X + D, 180), 8, 0: PAINT (X + D, 180), 0     'black eye balls
  NEXT X
RETURN

