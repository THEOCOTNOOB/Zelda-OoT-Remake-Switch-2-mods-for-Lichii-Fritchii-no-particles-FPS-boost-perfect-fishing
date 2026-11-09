@echo off
set "DEST=%APPDATA%\eden\load\0400486024DEC000\Pesca Perfecta"
echo Instalando Pesca Perfecta en: %DEST%
xcopy /E /I /Y "%~dp0mod\romfs" "%DEST%\romfs" >nul && echo Listo. Cierra y abre Lichii/Fritchii.
pause
