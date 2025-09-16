@echo off
cls
title  Network diagnostics
echo IP configuration:
ipconfig
echo.

ping 8.8.8.8 -n 2 >nul && (
    echo Connection to the Internet established.
) || (
    echo No Internet connection!
)

echo.
echo Diagnostics finished.
pause
