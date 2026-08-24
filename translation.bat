@echo off
cd /d "%~dp0filterscripts"
echo Texture Studio forditasa...
"..\pawno\pawncc.exe" ".\tstudio.pwn" "-i..\pawno\include" "-otstudio.amx" "-;+" "-(+"
if errorlevel 1 (
  echo.
  echo HIBA: A forditas sikertelen.
  pause
  exit /b 1
)
echo.
echo A forditas sikerult: filterscripts\tstudio.amx
pause
