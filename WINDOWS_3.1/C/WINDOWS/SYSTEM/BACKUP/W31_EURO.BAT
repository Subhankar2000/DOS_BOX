@echo off
is_dos
if errorlevel 1 goto IsDOS
ECHO *
ECHO * Fehler: Diese Datei kann nur im MS-DOS-Modus gestartet werden.
ECHO *         Beenden Sie Windows, und wiederholen Sie den Vorgang.
ECHO *
goto ende

:IsDOS
if %1x==x goto help
if %1==/u goto uninstall
if %1==/U goto uninstall

:install
if exist %1\system\locale.nls goto errwin9x
if exist %1\system32\locale.nls goto errwin9x
if NOT exist %1\WIN.COM goto errsys
if exist %1\system\BackUp\W31_Euro.bat goto SkipMD
ECHO *
ECHO * Sicherungsverzeichnis %1\system\BackUp wird erstellt...
md %1\system\BackUp
:SkipMD
ECHO * GDI.exe wird aktualisiert...
Euro_GDI %1
if errorlevel 3 goto CantOpenGDI
if errorlevel 2 goto CantFind1252
if errorlevel 1 goto HaveEuro
copy %1\SYSTEM\gdi.exe    %1\system\BackUp > NUL
Euro_GDI %1 Update
ECHO * GDI.exe wurde aktualisiert.
ECHO * Schriftartendateien werden gespeichert...
copy %1\SYSTEM\SSERI*.FON %1\system\BackUp > NUL
copy %1\SYSTEM\ARIAL*.TTF %1\system\BackUp > NUL
copy %1\SYSTEM\ARIAL*.FOT %1\system\BackUp > NUL
copy %1\SYSTEM\TIMES*.TTF %1\system\BackUp > NUL
copy %1\SYSTEM\TIMES*.FOT %1\system\BackUp > NUL
copy %1\SYSTEM\COUR*.TTF  %1\system\BackUp > NUL
copy %1\SYSTEM\COUR*.FOT  %1\system\BackUp > NUL
ECHO * Tastaturlayouts werden gespeichert...
copy %1\SYSTEM\kbd*.DLL   %1\system\BackUp > NUL
copy W31_Euro.BAT         %1\system\BackUp > NUL
copy is_dos.exe           %1\system\BackUp > NUL
ECHO * Schriftartendateien werden aktualisiert...
copy SSERI*.FON %1\SYSTEM
copy ARIAL*.*   %1\SYSTEM
copy TIMES*.*   %1\SYSTEM
copy COUR*.*    %1\SYSTEM
ECHO * Tastaturlayouts werden aktualisiert...
copy kbd*.DLL   %1\SYSTEM
ECHO * Fertig.
ECHO *
goto ende

:uninstall
if NOT exist ..\gdi.exe goto UnInstErr
if NOT exist    gdi.exe goto UnInstErr
ECHO * Originaldateien werden wiederhergestellt ...
copy gdi.exe ..
copy *.FON ..
copy KBD*.DLL ..
copy *.TTF ..
copy *.FOT ..
del  gdi.exe
del  is_dos.exe
del  *.FON
del  KBD*.DLL
del  *.TTF
del  *.FOT
ECHO * Fertig.
ECHO *
ECHO * Die ausgefÅhrte Batchdatei wird gelîscht.
ECHO * Ignorieren Sie die Meldung "Batchdatei fehlt".
ECHO *
del  W31_Euro.BAT > NUL
rem goto ende

:UnInstErr
ECHO *
ECHO * Fehler: Die Deinstallation kann nur im Sicherungsverzeichnis
ECHO * ausgefÅhrt werden.
ECHO *
ECHO *            cd c:\windows\system\backup
ECHO *
goto ende

:HaveEuro
ECHo *
ECHO * Fehler: Euro bereits installiert!
ECHo *
goto ende

:CantOpenGDI
ECHo *
ECHO * Fehler: GDI.exe kann nicht geîffnet werden!
ECHo *
goto ende

:CantFind1252
ECHo *
ECHO * Fehler: Falsche Sprachversion von GDI.exe.
ECHO *         Nur Codepage 1252 wird unterstÅtzt.
ECHo *
goto ende

:errwin9x
ECHo *
ECHO * Fehler: Das Programm kann nicht auf Windows 95, 98 oder NT
ECHO * ausgefÅhrt werden!
ECHo *
goto ende

:errsys
ECHo *
ECHO * Fehler: Windows-Verzeichnis kann nicht gefunden werden!
ECHo *
goto ende

:help
ECHo *
ECHO * Syntax:
ECHO *   W31_Euro /U oder W31_Euro c:\WinDir
ECHO *
ECHO * Parameter
ECHO *   /U     : Deinstalliert die EurounterstÅtzung
ECHO *            (muss im Sicherungsverzeichnis gestartet werden)
ECHO *   WinDir : Das aktuelle Windows-Verzeichnis (z.B. C:\WINDOWS)
ECHo *
:ende
pause

