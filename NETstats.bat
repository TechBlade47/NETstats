@echo off
echo Press Ctrl+C to exit.
:loop
cls
echo Loopback Connections:
netstat -an | find "ESTABLISHED" | findstr /C:"127."
echo.
echo Local Network Connections:
netstat -an | find "ESTABLISHED" | findstr /C:"192.168." /C:"10." /C:"172."
echo.
echo Internet Connections:
netstat -an | find "ESTABLISHED" | findstr /V /C:"192.168." /C:"10." /C:"172." /C:"127."
timeout /nobreak /t 5 >nul
goto loop
