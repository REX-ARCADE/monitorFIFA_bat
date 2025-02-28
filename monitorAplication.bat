@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

echo Configuracion de la aplicacion a monitorear

echo Inicializa el contador de intentos
set contador=0
set primeraVez=1

:loop
tasklist | find /i "FC25.exe" > nul 2>&1
if errorlevel 1 (
    if !primeraVez! equ 1 (
        echo "Iniciando la aplicacion por primera vez..."
        timeout /t 30 /nobreak > nul
        set primeraVez=0
    )
    
    set /a contador=!contador!+1
    echo "Ejecutando la aplicacion por !contador!a vez..."
    start "" "C:\Program Files\EA Games\EA SPORTS FC 25\FC25.exe"
    timeout /t 40 /nobreak > nul
) else (
    set contador=0
    echo "La aplicacion esta en ejecucion."
    
    echo Verificar si la ventana esta en primer plano
    nircmd win activate ititle "EA SPORTS FC 25"
    timeout /t 20 /nobreak > nul
)

if !contador! equ 3 (
    echo "Intentos agotados: reiniciando el PC en 5 segundos..."
    timeout /t 5 /nobreak > nul
    shutdown /r /t 0
)

goto loop
