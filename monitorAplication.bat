@echo off
setlocal enabledelayedexpansion

:: Configuración de la aplicación a monitorear
set APP_NAME="FC25.exe"
set APP_PATH="C:\Program Files\EA Games\EA SPORTS FC 25\FC25.exe"
set WINDOW_TITLE="EA SPORTS FC 25"

:: Inicializa el contador de intentos
set contador=0
set primeraVez=1

:loop
tasklist | find /i %APP_NAME% > nul 2>&1
if errorlevel 1 (
    if !primeraVez! equ 1 (
        echo "Iniciando la aplicación por primera vez..."
        timeout /t 30 /nobreak > nul
        set primeraVez=0
    )
    
    set /a contador=!contador!+1
    echo "Ejecutando la aplicación por !contador!^a vez..."
    start "" %APP_PATH%
    timeout /t 40 /nobreak > nul
) else (
    set contador=0
    echo "La aplicación está en ejecución."
    
    :: Verificar si la ventana está en primer plano
    nircmd win activate ititle %WINDOW_TITLE%
    timeout /t 20 /nobreak > nul
)

if !contador! equ 3 (
    echo "Intentos agotados: reiniciando el PC en 5 segundos..."
    timeout /t 5 /nobreak > nul
    shutdown /r /t 0
)

goto loop
