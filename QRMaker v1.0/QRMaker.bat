@echo off
setlocal enabledelayedexpansion >nul
title QRMaker v1.0
::ren "%~nx0" "QRMaker.bat"
cls
:a
cls
echo Type the text to generate your QR code!
set /p qr=^>^> 
set "qr=!qr: =%%20!"
echo.
curl qrenco.de/!qr!
echo.
echo Press any key to back...
pause>nul
goto a