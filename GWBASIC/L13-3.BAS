100 REM Simple progran to demonstrate character
110 REM   generation package.
120 REM Set medium resolution mode
130 SCREEN 1,0:COLOR 0,1:KEY OFF:CLS
140 REM Initialize the character generation subroutine
150 GOSUB 60300
160 REM Print test message
170 ZZ$="  IF YOU CAN READ THIS THEN IT WORKS"
180 PRESET(10,30):GOSUB 60000
190 LOCATE 24,6:PRINT "PRESS ANY KEY TO CONTINUE";
200 A$=INKEY$:IF A$="" THEN 200 ELSE CLS
210 END
60000 REM *****************************
60010 REM Character drawing subroutine.
60020 REM *****************************
60030 REM
60040 REM A "GOSUB 60300" must be performed before the first
60050 REM   time that this routine is used
60060 REM
60070 REM Input variables are:
60080 REM
60090 REM   zz$ - the character string to be printed
60100 REM   zzs - the scale factor
60110 REM   zza - the angle of the character string
60120 REM   zzc - the color of the character string
60130 REM   zzx - the horizontal distance between the origins
60140 REM         of adjacent characters
60150 REM   zzy - the vertical distance between characters
60160 REM
60170 REM The origin of a string is in the upper left corner
60180 REM The screen position is the "last point referenced"
60190 REM   and can be set easily with a PRESET(x,y)
60200 REM
60210 DRAW "s=zzs;c=zzc;a=zza;" 'Set scale,color and angle
60220 FOR ZZI=1 TO LEN(ZZ$)     '  for each character
60230   REM Locate the character in the reference string
60240   FOR ZZJ=1 TO LEN(ZZZ$):IF MID$(ZZZ$,ZZJ,1)=                                     MID$(ZZ$,ZZI,1) GOTO 60260 ELSE NEXT ZZJ
60250   PRINT "CHARACTER, ";MID$(ZZ$,ZZI,1);                                            " IS NOT AVAILABLE ":END
60260   REM Draw the character and position for next character
60270   DRAW ZZA$(ZZJ)+"br=zzx;bd=zzy;"
60280 NEXT ZZI
60290 RETURN
60300 REM *******************************************
60310 REM Set reference and character strings.
60320 REM This subroutine initalizes the character
60330 REM   generation package--it should be called
60340 REM   just once before the first call to the
60350 REM   character drawing subroutine.
60360 REM *******************************************
60370 DIM ZZA$(27):ZZA=0:ZZC=3:ZZS=4:ZZX=7:ZZY=0
60380 REM ZZZ$ is a reference string used to find the print char
60390 ZZZ$="ABCDEFGHIJKLMNOPQRSTUVWXYZ "
60400 REM Each of the strings below is used to define
60410 ZZA$(1)="BD1D5BU2R4BD2U5H1L2G1BU1"  'A
60420 ZZA$(2)="D6R3E1U1H1L3BR3E1U1H1L3"   'B
60430 ZZA$(3)="BD1D4F1R2E1BU4H1L2G1BU"	  'C
60440 ZZA$(4)="D6R3E1U4H1L3"		  'D
60450 ZZA$(5)="D6R4BU3BL1L3BU3R4BL4"      'E
60460 ZZA$(6)="D6BU3R3BL3U3R4BL4"         'F
60470 ZZA$(7)="BD1D4F1R3U3L1BU3BR1L3G1BU1"  'G
60480 ZZA$(8)="D6BU3R4BD3U6BL4"		  'H
60490 ZZA$(9)="BD6BR1R2BL1U6BR1L2BL1"     'I
60500 ZZA$(10)="BD5F1R1E1U5BL3"           'J
60510 ZZA$(11)="D6BU3R1F3BU6G3L1BU3"      'K
60520 ZZA$(12)="D6R4BL4BU6"               'L
60530 ZZA$(13)="D6BR4U6G2H2"              'M
60540 ZZA$(14)="D6BR4U6BD4H4"             'N
60550 ZZA$(15)="BD1D4F1R2E1U4H1L2G1BU1"   'O
60560 ZZA$(16)="D6BU3R3E1U1H1L3"          'P
60570 ZZA$(17)="BD1D4F1R1BR2H2BF1BG1E2U3H1L2G1BU1"
60580 ZZA$(18)="D6BR4H3BL1R3E1U1H1L3"     'R
60590 ZZA$(19)="BD6R3E1U1H1L2H1U1E1R3BL4" 'S
60600 ZZA$(20)="BD6BR2U6BR2L4"            'T
60610 ZZA$(21)="D5F1R3E1U5BL4"            'U
60620 ZZA$(22)="D3F1D1F1E1U1E1U3BL4"      'V
60630 ZZA$(23)="D5F1E1U1BD1F1E1U5BL4"     'W
60640 ZZA$(24)="BD6U1E4U1BD6U1H4U1"       'X
60650 ZZA$(25)="D2F2D2BU2E2U2BL4"         'Y
60660 ZZA$(26)="BD6BR4L4U1E4U1L4"         'Z
60670 ZZA$(27)=""                         '<SPACE>
60680 RETURN
