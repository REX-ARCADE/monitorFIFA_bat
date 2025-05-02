# Monitor de Ejecución para Aplicaciones en Máquinas Windows

Este paquete está diseñado para garantizar que una **aplicación o juego se mantenga siempre en ejecución** y que su ventana esté activa y visible, especialmente en entornos sin teclado ni ratón como máquinas arcade, kioscos o equipos públicos.

## Contenido del paquete

- `monitorFIFA_utf8.bat` → Script principal que comprueba constantemente si la aplicación está ejecutándose.
- `verifica_ventana.ps1` → Script auxiliar que detecta si la aplicación está en primer plano y, si no lo está, la activa.
- *(opcional)* `nircmd.exe` → Herramienta de NirSoft que permite forzar la activación de la ventana de la aplicación.

> 📝 **Nota**: Aunque los nombres de archivo hacen referencia a "FIFA", este sistema funciona con cualquier aplicación si se adapta el nombre del ejecutable y el título de la ventana.

## Requisitos

Antes de utilizar el sistema, asegúrate de cumplir con los siguientes puntos:

1. **La aplicación debe estar instalada correctamente**
   - Por ejemplo:  
     `C:\Program Files\NombreDeLaApp\NombreApp.exe`

2. **Debe haber una sesión iniciada si la app lo requiere**
   - En el caso de juegos, como FIFA, es necesario iniciar sesión previamente en EA App, Steam u otra plataforma.

3. **NirCmd disponible**
   - Si no está ya en el sistema, puedes descargar `nircmd.exe` desde [NirSoft](https://www.nirsoft.net/utils/nircmd.html) y colocar el archivo en:
     - La misma carpeta que los scripts, o
     - `C:\Windows\System32\` (para acceso global)

## Instalación y uso

1. **Descomprime los archivos** en una carpeta fija, por ejemplo:  
   `C:\Utilidades\monitor`

2. **Edita el script `.bat` si es necesario**
   - Abre `monitorFIFA_utf8.bat` con un editor de texto y cambia el nombre del ejecutable (`FC25.exe`) por el nombre de tu aplicación.

3. **Ejecuta el script** haciendo doble clic sobre `monitorFIFA_utf8.bat`.

4. *(Opcional pero recomendado)*: Añade el script al inicio automático de Windows:
   - Pulsa `Win + R` y escribe: `shell:startup`
   - Crea un acceso directo al archivo `.bat` dentro de esa carpeta

## Qué hace el sistema

- Comprueba si un proceso específico está activo.
- Si no lo está, lo lanza automáticamente desde su ruta conocida.
- Si está activo pero no es la ventana principal, la trae al frente mediante `nircmd`.
- El sistema monitoriza continuamente el estado de ejecución, sin intervención del usuario.

## Compatibilidad

✔ Windows 10 / 11  
✔ Ideal para entornos arcade, kioscos o máquinas dedicadas  
✔ Requiere que la pantalla no se apague ni entre en suspensión

## Consejos adicionales

- Se recomienda configurar la aplicación en **modo ventana sin bordes** si es posible.
- Asegúrate de que Windows **no apague la pantalla ni entre en suspensión** automáticamente.
- Si la aplicación no responde bien al cambio de foco, puedes ajustar la frecuencia de comprobación modificando los valores de `timeout` en el `.bat`.

---

*Sistema desarrollado para asegurar la ejecución continua de cualquier aplicación en contextos sin supervisión o interacción directa con el sistema operativo.*
