@echo off
if "%TempScript%"=="" goto scripterr
if "%1"=="" goto folder
if "%1"=="/?" goto help
direxist %1
if errorlevel 1 goto folder

:start
echo Start > %TempScript%
cd >> %TempScript%
echo %1 %2 %3 %4 %5 %6 %7 %8 %9 >> %TempScript%
ren %TempScript% calmira.run
goto end

:folder
echo Folder > %TempScript%
cd >> %TempScript%
if "%1"=="" goto UseCurrentDir
echo %1 >> %TempScript%
goto Exec

:UseCurrentDir
cd >> %TempScript%

:Exec
ren %TempScript% calmira.run
goto end

:help
echo.
echo The START command can execute a program using Windows, open a document
echo or open a folder.  You can type the name of a Windows program, an MS-DOS
echo program (to run it in a new DOS window), a document file or folder name.
echo If no parameter is specified, the current directory is opened.  You can
echo omit the the full pathname of files and folders that are in the current
echo directory. 
echo.
echo Syntax:  START filename [parameter1] [parameter2] ...
echo          START [foldername]
echo.
echo Example: START notepad c:\autoexec.bat
echo          START c:\windows
goto end

:scripterr
echo.
echo There is no temporary script filename in the environment.
echo You need to set the TempScript environment variable to point
echo to a suitable file.  See the Calmira help file topic on
echo Using Script Files for more details.

:end
echo.
