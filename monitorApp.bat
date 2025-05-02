@echo off
chcp 65001 > nul
cd /d %~dp0

:loop
tasklist | find /i "FC25.exe" > nul
if errorlevel 1 (
    echo FIFA no está en ejecución. Iniciando...
    start "" "C:\Program Files\EA Games\EA SPORTS FC 25\FC25.exe"
    timeout /t 30 /nobreak > nul
) else (
    echo FIFA está en ejecución. Verificando ventana...
    powershell -ExecutionPolicy Bypass -File "verifica_ventana.ps1"
    timeout /t 20 /nobreak > nul
)

goto loop
