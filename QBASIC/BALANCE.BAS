
'***************** Minimum No. of Notes & Coins to Refund *******************'

COLOR , 14: CLS
DATA 500,100, 50,20,10,5,2,1,.5,.25,.2,.1,.05
DIM R(13): FOR I = 1 TO 13: READ R(I): NEXT I

repeat:
COLOR 15: PLAY "MBO3L4CL6C#L3D"
PRINT STRING$(80, 176);
FOR K = 2 TO 24
  LOCATE K, 1: PRINT STRING$(2, 176);
  LOCATE K, 79: PRINT STRING$(2, 176);
NEXT K
LOCATE 25, 1: PRINT STRING$(80, 176);

enter:
COLOR 15
LOCATE 2, 19: PRINT SPACE$(50): LOCATE 4, 19: PRINT SPACE$(50)
LOCATE 2, 19: PRINT "Enter the Purchase Amount.. =  ";
COLOR 7: INPUT "Rs. ", P: COLOR 15
LOCATE 6, 26: PRINT SPC(23);
LOCATE 4, 19: PRINT "Enter the Tendered Amount.. =  ";
COLOR 7: INPUT "Rs. ", T

LOCATE 6, 26: COLOR 31
SELECT CASE P
  CASE IS > T
    PRINT "Absured Data Entered !!"
    PLAY "MBO3L6C"
    GOTO enter
  CASE IS = T
    PRINT "  Nothing to Refund !  "
    PLAY "MBO3L6C"
    GOTO enter
END SELECT

COLOR 7
B = T - P: J = 0
FOR I = 1 TO 13
  N = 0
  DO
    IF B >= R(I) THEN
      N = N + 1
      B = B - R(I) + .00001
    END IF
  LOOP WHILE B >= R(I)
  IF N <> 0 THEN
    IF I < 9 THEN
      LOCATE , 23: PRINT "Number of  "; USING "###"; R(I);
      LOCATE , 40: PRINT "Rupees Notes = "; N
    END IF
    IF I > 8 AND J = 0 THEN PRINT : J = 1
    IF I > 8 THEN
      LOCATE , 23: PRINT "Number of  "; USING "###"; R(I) * 100;
      LOCATE , 40: PRINT "Paise  Coins = "; N
    END IF
  END IF
  IF B < .05 THEN EXIT FOR
NEXT I

LOCATE , 22: PRINT STRING$(36, "_")
PLAY "MBO3L6CEDFE": PRINT
COLOR 15: LOCATE , 22: PRINT "Total Balence  Refunded = ";
COLOR 7: PRINT "Rs. ";
PRINT USING "####.##"; T - P

COLOR 0
LOCATE 23, 20: PRINT "Have you more transactions to classify ?"
LOCATE , 34: PRINT "Yes  /  No";
choice:
SELECT CASE UCASE$(INKEY$)
  CASE "Y"
    CLS
    GOTO repeat
  CASE "N"
    CLS
    SYSTEM
  CASE ""
    GOTO choice
  CASE ELSE
    PLAY "O3L12DC"
    GOTO choice
END SELECT

