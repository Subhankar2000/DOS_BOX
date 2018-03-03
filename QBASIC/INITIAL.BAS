CLS
INPUT "Enter your full Name :-  ", N$
P = INSTR(N$, " ")
Q = INSTR(P + 1, N$, " ")
M$ = LEFT$(N$, 1) + ". " + MID$(N$, P + 1, 1)
IF Q = 0 THEN
    Q$ = MID$(N$, P + 2)
ELSE
    M$ = M$ + ". " + MID$(N$, Q + 1, 1)
    Q$ = MID$(N$, Q + 2)
END IF
PRINT : PRINT
PRINT "HELLO !    "; UCASE$(M$); LCASE$(Q$); "    --- How are you ??"
DO: LOOP WHILE INKEY$ = ""
SYSTEM

