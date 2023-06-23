@echo off
setlocal enabledelayedexpansion

:: Inicializa el contador
set contador=0

:loop
tasklist | find /i "FIFA23.exe" > nul 2>&1
if errorlevel 1 (
    :: Incrementa el contador si FIFA23.exe no se está ejecutando
    set /a contador=!contador!+1

    echo "Ejecutando FIFA 23..."
    start "" "C:\Program Files\EA Games\FIFA 23\FIFA23.exe"
    timeout /t 30 /nobreak > nul
) else (
    :: Restablece el contador si FIFA23.exe se está ejecutando
    set contador=0

    REM echo "El programa esta en ejecucion."
    timeout /t 20 /nobreak > nul	
)

:: Comprueba si el contador ha alcanzado 2
if !contador! equ 2 (
    echo "El contador ha alcanzado el nº de intentos máxiomo, reiniciando la PC en 5 segundos..."
    timeout /t 5 /nobreak > nul
    shutdown /r /t 0
)

goto loop