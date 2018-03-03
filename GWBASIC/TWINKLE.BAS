5 CLS :SCREEN 1,0 :COLOR 0,4
10 PLAY "MBO2AAEEFFEP8"
16 GOSUB 1010
20 PLAY "DDCCBBAP4"
26 GOSUB 1010
30 PLAY "EEDDCCBP8"
36 GOSUB 1010
40 PLAY "EEDDCCBP4"
46 GOSUB 1010
50 PLAY "AAEEFFEP8"
56 GOSUB 1010
60 PLAY "DDCCBBA"
66 GOSUB 1010
70 FOR TIM=1 TO 1000000!:NEXT TIM:SCREEN 0:WIDTH 80 :END
100 DATA T,w,i,n,k,l,e," ",T,w,i,n,k,l,e," ",L,i,t,t,l,e," ",S,t,a,r,$
110 DATA H,o,w," ",I," ",W,o,n,d,e,r," ",W,h,a,t," ",Y,o,u," ",A,r,e,$
120 DATA U,p," ",A,b,o,v,e," ",T,h,e," ",W,o,r,l,d," ",S,o," ",H,i,g,h,$
121 COLOR 0,1
130 DATA L,i,k,e," ",A," ",D,i,a,m,o,n,d," ",i,n," ",T,h,e," ",S,k,y,$
140 DATA T,w,i,n,k,l,e," ",T,w,i,n,k,l,e," ",L,i,t,t,l,e," ",S,t,a,r,$
150 DATA H,o,w," ",I," ",W,o,n,d,e,r," ",W,h,a,t," ",Y,o,u," ",A,r,e,$
1010 READ A$
1020 IF A$="$" THEN PRINT CHR$(13):RETURN
1030 PRINT A$;
1040 FOR TIM=1 TO 10900:NEXT TIM
1200 GOTO 1010
