@echo off
cd /d "%~dp0"
title Texture Studio SA-MP Server

if not exist "gamemodes\bare.amx" (
  echo HIBA: Hianyzik a gamemodes\bare.amx fajl.
  pause
  exit /b 1
)

if not exist "filterscripts\tstudio.amx" (
  echo HIBA: Hianyzik a filterscripts\tstudio.amx fajl.
  pause
  exit /b 1
)

for %%F in (msvcp100.dll msvcr100.dll msvcp140.dll vcruntime140.dll) do (
  if not exist "%%F" (
    echo HIBA: Hianyzik a pluginok futtatasahoz szukseges %%F fajl.
    pause
    exit /b 1
  )
)

echo Texture Studio szerver inditasa...
samp-server.exe
echo.
echo A szerver leallt. A reszletek a server_log.txt fajlban vannak.
pause
