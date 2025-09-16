@echo off
cls

title   Rename files

set /p ext=Enter file extension (e.g. jpg):

set /a count=0

for %%i in (*.%ext%) do (
    ren "%%i" "vacation_%%i"
    set /a count+=1
)

echo.
echo Total files renamed: %count%
pause
