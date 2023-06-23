@echo off
setlocal enabledelayedexpansion

:: Inicializa el contador
set contador=0

:: Inicializa la variable primeraVez a verdadero (1)
set primeraVez=1

:loop
tasklist | find /i "FIFA23.exe" > nul 2>&1
if errorlevel 1 (
    :: Si es la primera vez que se ejecuta el código, espera 30 segundos
    if !primeraVez! equ 1 (
        echo "Iniciando programa de arranque de FIFA 23 por primera vez"
        timeout /t 30 /nobreak > nul
        :: Establece primeraVez a falso (0) después de la primera ejecución
        set primeraVez=0
    )
    
    :: Incrementa el contador si FIFA23.exe no se está ejecutando
    set /a contador=!contador!+1

    echo "Ejecutando FIFA 23 por !contador!^a vez..."
    start "" "C:\Program Files\EA Games\FIFA 23\FIFA23.exe"    
    timeout /t 40 /nobreak > nul
) else (
    :: Restablece el contador si FIFA23.exe se está ejecutando
    set contador=0

    REM echo "El programa esta en ejecucion."
    timeout /t 20 /nobreak > nul	
)

:: Comprueba si el contador ha alcanzado 3
if !contador! equ 4 (
    echo "Intentos de inicio del juego, agotados: reiniciando el PC en 5 segundos..."
    shutdown /r /t 0
)

goto loop