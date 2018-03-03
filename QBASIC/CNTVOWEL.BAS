
'*************** Counting the Number of Vowels in any Word ******************'

enter:
COLOR 13, 3: CLS
LOCATE 3, 5: PRINT STRING$(71, 219)
LOCATE 23, 5: PRINT STRING$(71, 219)
FOR K = 4 TO 22
    LOCATE K, 5: PRINT STRING$(2, 219)
    LOCATE K, 74: PRINT STRING$(2, 219)
NEXT K

LOCATE 8, 10: COLOR 15: PLAY "MBO4L8CE"
PRINT "Type the word in which the number of vowel is to be counted"
LOCATE 12, 35: COLOR 1: INPUT "", A$     'Intake the word
V = O: L = LEN(A$)               'Assume that initially no vowel has obtained
FOR K = 1 TO L                   'Check every alphabet of the word
  B$ = MID$(A$, K, 1)            'Take out alphabets sequentially
  FOR J = 1 TO 5                 'Compare with five vowels
    IF UCASE$(B$) = MID$("AEIOU", J, 1) THEN
      V = V + 1                   'If it is a vowel then count it
      EXIT FOR                    'If it maches with any vowel, then exit
    END IF
NEXT J, K                          'Repeat

LOCATE , 35: PRINT STRING$(L, "Ä")        'Underline the word checked
PLAY "MBO3L6CEDFE"
LOCATE 16: COLOR 15
IF V = 0 THEN
  LOCATE , 23: PRINT "No Vowel is Present in this Word"
  GOTO choice
END IF
IF V > 1 THEN P$ = "s" ELSE P$ = ""
IF V >= 1 THEN
  LOCATE , 15: PRINT "The Number of Vowel"; P$;
  PRINT " Present in this Word is : "; V
END IF

choice:
COLOR 6
LOCATE 24, 20: PRINT "Have you more transactions to classify ?";
LOCATE 25, 36: PRINT "Yes  /  No";
SELECT CASE UCASE$(INKEY$)
  CASE "Y"
    CLS
    GOTO enter
  CASE "N"
    COLOR 7, 0
    CLS
    SYSTEM
  CASE ""
    GOTO choice
  CASE ELSE
    PLAY "O3L12DC"
    GOTO choice
END SELECT

