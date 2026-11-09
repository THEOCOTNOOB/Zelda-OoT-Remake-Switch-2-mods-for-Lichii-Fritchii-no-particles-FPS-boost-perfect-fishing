@echo off
set D=%APPDATA%\eden\load\0400486024DEC000\Quitar Particulas
xcopy /E /I /Y "%~dp0mod\romfs" "%D%\romfs" >nul
echo Instalado en %D%
pause
