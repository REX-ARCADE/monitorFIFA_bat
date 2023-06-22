@echo off
:loop
tasklist | find /i "FIFA23.exe" > nul 2>&1
if errorlevel 1 (
	echo "Ejecutando FIFA 23..."
	start "" "C:\Program Files\EA Games\FIFA 23\FIFA23.exe"
	timeout /t 30 /nobreak > nul
) else (
	REM echo "El programa esta en ejecucion."
	timeout /t 20 /nobreak > nul	
)
goto loop
