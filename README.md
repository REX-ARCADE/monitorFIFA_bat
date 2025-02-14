# Monitor de Aplicaciones de Windows

Este script (monitorAplicacion.bat) asegura que una aplicación o juego específico esté en ejecución y, si no lo está, lo inicia automáticamente. Además, mantiene la ventana en primer plano para evitar interrupciones.

## Requisitos Previos

Antes de usar este script, asegúrate de cumplir con los siguientes requisitos:

1. **Aplicación o juego instalado**
   - El juego debe estar correctamente instalado en tu equipo.
   
2. **Sesión iniciada si es necesario en EA App/Steam**
   - Si la aplicación requiere autenticación (como en plataformas de juegos), debes haber iniciado sesión previamente para evitar errores en la ejecución.

3. **NirCmd instalado**
   - Este script utiliza NirCmd para gestionar la ventana del juego. Descárgalo desde [NirSoft](https://www.nirsoft.net/utils/nircmd.html) y colócalo en una ubicación accesible.

## Instalación y Uso

1. **Descargar el archivo `monitorAplication.bat`** y colócalo en una carpeta segura.
2. **Configurar el script**
   - Abre el archivo .bat con un editor de texto y modifica las siguientes variables para adaptarlo a tu aplicación:
   ```set APP_NAME="NombreDelProceso.exe"```\
   ```set APP_PATH="C:\Ruta\Completa\hacia\la\aplicacion.exe"```\
   ```set WINDOW_TITLE="Título de la Ventana"```
      - **APP_NAME**: Nombre del proceso de la aplicación (puedes verificarlo con el Administrador de Tareas).
      - **APP_PATH**: Ruta completa donde está instalada la aplicación.
      - **WINDOW_TITLE**: Título exacto de la ventana de la aplicación (útil para mantenerla en primer plano).
        
3. **3.Asegurar que el script se ejecute al inicio de Windows**
   - Puedes agregar un acceso directo al archivo en la carpeta shell:startup para que se inicie automáticamente.

## Cómo funciona
- El script verifica constantemente si APP_NAME está en ejecución.
- Si la aplicación no está ejecutándose, la inicia automáticamente.
- Si la aplicación está en ejecución pero en segundo plano, la trae al frente.
- Si la aplicación no puede iniciarse después de 3 intentos, el sistema se reiniciará para intentar corregir el problema.

## Notas Adicionales
- Este script está diseñado para ejecutarse en Windows.
- Si experimentas problemas, revisa los permisos de ejecución y asegúrate de que APP_PATH es correcto.

---

*Desarrollado para asegurar que cualquier aplicación o juego esté siempre en ejecución sin interrupciones.*
