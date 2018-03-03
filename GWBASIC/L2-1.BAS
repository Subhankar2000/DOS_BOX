100 REM Program to switch from color/graphics adapter
110 REM  to monochrome adapter or vice-versa.
120 REM Figure which adapter is active & swicth to other
130 LOCATE 1,1,0:DEF SEG=0:A=(PEEK(1040) AND 48):                                   IF A<>48 GOTO 210
140 REM Switch to color/graphics adapter
150 KEY OFF:CLS
160 A=PEEK(1040):POKE 1040,(A AND 207) OR 32
170 SCREEN 0,0:COLOR 7,0:LOCATE 1,1,1,6,7
180 KEY ON:WIDTH 40
190 END
200 REM Switch to monochrome adapter
210 KEY OFF:CLS
220 A=PEEK(1040):POKE 1040,A OR 48
230 SCREEN 0,0:COLOR 7,0:LOCATE 1,1,1,12,13
240 KEY ON:WIDTH 80
250 END
