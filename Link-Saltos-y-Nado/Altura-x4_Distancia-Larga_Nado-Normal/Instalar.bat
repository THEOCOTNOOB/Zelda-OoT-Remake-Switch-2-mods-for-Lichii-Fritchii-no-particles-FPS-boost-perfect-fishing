@echo off
set D=%APPDATA%\eden\load\0400486024DEC000\Link Saltos y Nado
if exist "%D%" rmdir /S /Q "%D%"
xcopy /E /I /Y "%~dp0mod\romfs" "%D%\romfs" >nul
echo Instalado Altura-x4_Distancia-Larga_Nado-Normal en %D%
pause
