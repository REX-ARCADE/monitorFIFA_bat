# Monitor de EA SPORTS FC 25

Este script (`monitorFIFA.bat`) asegura que EA SPORTS FC 25 esté en ejecución y, si no lo está, lo inicia automáticamente. Además, mantiene el juego en primer plano para evitar interrupciones no deseadas.

## Requisitos Previos

Antes de usar este script, asegúrate de cumplir con los siguientes requisitos:

1. **EA SPORTS FC 25 instalado**
   - El juego debe estar correctamente instalado en tu equipo.
   
2. **Sesión iniciada en EA App/Steam**
   - Debes haber iniciado sesión previamente en la plataforma correspondiente (EA App o Steam) para evitar que el script falle al ejecutar el juego.

3. **NirCmd instalado**
   - Este script utiliza NirCmd para gestionar la ventana del juego. Descárgalo desde [NirSoft](https://www.nirsoft.net/utils/nircmd.html) y colócalo en una ubicación accesible.

## Instalación y Uso

1. **Descargar el archivo `monitorFIFA.bat`** y colócalo en una carpeta segura.
2. **Asegurar que el script se ejecute al inicio de Windows**
   - Puedes agregar un acceso directo al archivo en la carpeta `shell:startup` para que se inicie automáticamente.

## Cómo funciona

- El script verifica constantemente si `FC25.exe` está en ejecución.
- Si el juego no está ejecutándose, lo inicia automáticamente.
- Si el juego está en ejecución pero en segundo plano, lo trae al frente.
- Si el juego no puede iniciarse después de 3 intentos, el sistema se reiniciará para intentar corregir el problema.

## Contribuciones

Si deseas mejorar el script, puedes hacer un fork del repositorio y enviar un pull request con mejoras o correcciones.

## Notas Adicionales

- Este script está diseñado para ejecutarse en **Windows**.
- Si experimentas problemas, revisa los permisos de ejecución y asegúrate de que `FC25.exe` está en la ruta correcta.

---

*Desarrollado para mantener EA SPORTS FC 25 siempre activo sin interrupciones.*
