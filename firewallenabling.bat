@echo off
fltmc >nul 2>&1
if errorlevel 1 (
  echo Ezt a fajlt jobb kattintassal, "Futtatas rendszergazdakent" modon inditsd.
  pause
  exit /b 1
)

netsh advfirewall firewall delete rule name="Texture Studio SA-MP UDP 7777" >nul 2>&1
netsh advfirewall firewall add rule name="Texture Studio SA-MP UDP 7777" dir=in action=allow protocol=UDP localport=7777 profile=any
if errorlevel 1 (
  echo HIBA: A tuzfalszabaly letrehozasa nem sikerult.
  pause
  exit /b 1
)

echo A 7777/UDP port engedelyezve lett a Windows tuzfalon.
pause
