@echo off
set "DEST=%APPDATA%\eden\load\0400486024DEC000\Pesca Perfecta"
if exist "%DEST%" (rmdir /S /Q "%DEST%" && echo Mod desinstalado.) else echo No estaba instalado.
pause
