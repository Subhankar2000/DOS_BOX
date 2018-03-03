
'**************** Plays National Anthem & Screens Flag Hosting **************'

SCREEN 12                                                 'initialise screen
P = 3.14159                                               'the value of PIE

CIRCLE (50, 50), 20, , , , 1.2: PAINT (50, 50)            'the Sun
FOR A = 0 TO 330 STEP 30                                  'the Sun_rays
  DRAW "BM50,50TA" + STR$(A) + "NR30"                     '  - do -
NEXT A                                                    '  - do -

LINE (240, 30)-(240, 415): LINE (250, 30)-(250, 415)      'the stick
LINE (252, 45)-(430, 80), 3, BF                           'the saffron part
LINE (252, 80)-(429, 115), , BF                           'the white part
LINE (252, 115)-(430, 150), 4, BF                         'the green part
FOR A = .000001 TO 2 * P STEP P / 6                       'the chakra
  CIRCLE (338, 97), 15, 0, -A, -A + P / 6                 '  - do -
NEXT A                                                    '  - do -
CIRCLE (244.6, 25), 5                                     'the chording wheel
LINE (240, 25)-(157, 370), 2                              'the chord

LINE (170, 415)-(320, 432), , B                           'the upper platform
LOCATE 27, 23: PRINT "J A I  *  H I N D"                  'jai hind
LINE (160, 432)-(330, 458), 3, BF                         'the lower platform
LINE (50, 460)-(590, 460)                                 'the floor

CIRCLE (125, 390), 30, , , , 3                            'body of the person
LINE (125, 370)-(145, 385): LINE -(155, 370)              'his hand
LINE (125, 372)-(145, 387): LINE -(157, 370)              '  - do -
LINE (125, 374)-(145, 389): LINE -(159, 370)              '  - do -
LINE (124, 355)-(126, 360), , B                           'his neck
CIRCLE (125, 345), 10                                     'his face
CIRCLE (125, 345), 12, 3, P / 3, 4 * P / 3                'his hair
CIRCLE (125, 345), 14, 3, P / 3, 4 * P / 3                '  - do -
CIRCLE (124, 345), 4, 3, P / 2, 3 * P / 2, 3              'his ear
CIRCLE (132, 342), 2, 3, , , .7                           'his eye
LINE (130, 348)-(134, 348), 3                             'his mouth
LINE (120, 420)-(110, 460): LINE (118, 416)-(108, 460)    'his left leg
LINE (130, 420)-(140, 460): LINE (132, 416)-(142, 460)    'his right leg

CIRCLE (125, 390), 32, 3, , , 2.4                         'his shirt
FOR j = 24 TO 26: LOCATE j, 16: PRINT "°": NEXT j         '  - do -
LINE (125, 366)-(145, 381), 3                             '  - do -
LINE (125, 378)-(145, 393), 3                             '  - do -
LINE -(145, 381), 3                                       '  - do -
LINE (116, 412)-(109, 440), 3                             'his pant
LINE (124, 422)-(119, 440), 3: LINE -(109, 440), 3        '  - do -
LINE (134, 412)-(142, 440), 3                             '  - do -
LINE (127, 422)-(132, 440), 3: LINE -(142, 440), 3        '  - do -
LINE (109, 455)-(118, 459), 3, BF                         'his left shoe
LINE (139, 455)-(148, 459), 3, BF                         'his right shoe

LINE (450, 459)-(435, 420): LINE -(495, 420)              'the tub
LINE -(480, 459)                                          '  - do -
LINE (462, 375)-(468, 419), 3, BF                         'flower-stick
CIRCLE (465, 365), 5, 7                                   'the flower
FOR A = 0 TO 2 * P STEP .05                               '  - do -
  R = 30 * COS(2 * A)                                     '  - do -
  X = R * COS(A + P / 4): Y = R * SIN(A + P / 4)          '  - DO -
  PSET (465 + X, 365 + Y), 7                              '  - do -
NEXT A                                                    '  - do -

LOCATE 30, 17: PRINT "Compiled by : -      I N D R A J I T     G H O S H";

PLAY "T126"
PLAY "L8N30 N32 N34 N34 N34 N34 N34 N34 N34 N34 N34 N34 N32 N34 N35 N0"
PLAY "L4N34 L8N34 N34 L4N32 L8N32 N32 N29 N32 L4N30 N0"
PLAY "L4N30 N37 L8N37 L4N37 L8N37 N37 N37 L4N37 L8N37 N37 N36 N38 L4N37"
PLAY "L4N35 L8N35 N35 L4N34 L8N34 N34 N32 N35 L2N34 L4N0"
PLAY "L4N34 L8N34 N34 L4N34 L8N34 N32 N37 N37 L4N37 L8N35 N35 L4N35"
PLAY "L4N34 L8N34 N34 L4N32 L8N32 N32 N29 N32 L2N30 L4N0"
PLAY "L8N30 N32 N34 N34 L4N34 N34 L8N32 N34 L2N35 L4N0"
PLAY "L8N34 N35 N37 N37 L4N37 L8N35 N34 N32 N35 L2N34 L4N0"
PLAY "L4N34 N34 L8N32 N32 N32 N32 N29 N32 L2N30 L4N0"
PLAY "L8N37 N37 N37 N37 L4N37 L8N37 N37 L4N37 L8N37 N37 N36 N38 L4N37"
PLAY "L4N35 L4N35 N35 L4N34 L8N34 N35 L8N32 L8N35 L2N34"
PLAY "L8N41 N41 N41 L2N42. L8N0 N39 N39 L2N41. L8N0 N37 N37 L2N39. L4N0 L8N0"
PLAY "L8N30 N32 N34 N34 N34 N34 N32 N34 L2N35"

SCREEN 0: SYSTEM                                     'normalise screen & exit

