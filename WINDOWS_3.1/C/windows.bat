@c:\windows\smartdrv.exe
@SET PATH=%PATH%;C:\WINDOWS; 
@SET TEMP=C:\WINDOWS\TEMP
@lh devlod C:\SB16\DRV\CSP.SYS /UNIT=0 /BLASTER=A:220
@lh devlod C:\SB16\DRV\CTMMSYS.SYS
@SET SOUND=C:\SB16
@SET BLASTER=A220 I7 D1 H5 P330 T6
@SET MIDI=SYNTH:1 MAP:E
@C:\SB16\MIXERSET /P /Q
@windows\win /b