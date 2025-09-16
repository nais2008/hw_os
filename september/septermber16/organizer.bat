@echo off
cls

title   File Organizer

set /p ext=Enter the file extension to organize (e.g. txt, jpg, pdf):

set "folder=%ext%_Files"
set "folder=%folder:"=%"

echo Creating folder "%folder%"...
mkdir "%folder%"

echo Moving *.%ext% files to "%folder%"...
move "*.%ext%" "%folder%" >nul

echo.
echo Operation completed!
pause
