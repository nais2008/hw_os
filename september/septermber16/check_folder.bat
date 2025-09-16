@echo off
cls
title   Folder Checker

set /p folder=Enter the folder name to check:

if exist "%folder%" (
    echo Folder found!
    goto END
) else (
    echo Folder not found. Creating...
    mkdir "%folder%"
    echo Folder "%folder%" has been created successfully.
)

:END
echo.
pause
exit
