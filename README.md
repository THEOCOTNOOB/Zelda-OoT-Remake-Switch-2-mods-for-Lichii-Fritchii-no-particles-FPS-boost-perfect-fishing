# Zelda: Ocarina of Time Remake (Switch 2) - Mods for Lichii/Fritchii

Data-only mods (`romfs` files, no executable changes) to remove particles, boost FPS and make fishing easier.
Game ID `0400486024DEC000`, version 1.1.1 (v131072). Install: copy `mod\romfs` of each mod to `%APPDATA%\eden\load\0400486024DEC000\<ModName>\romfs` (or run its `Instalar.bat`). To remove a mod, delete its folder. Details in Spanish below.

## Request a mod / Pide un mod
Tell me which mod you would like to see, report a bug, or share your results (FPS before/after):
- Open an **Issue**: the **Issues** tab, then **New issue**.
- Or leave a comment in **Discussions**, if it is enabled.

Cuentame que mod te gustaria, reporta fallos o comparte tus FPS antes y despues desde la pestana **Issues** de este repositorio.

## Support / Apoyar
If these mods helped you and you want to say thanks, you can donate on Venmo: **@Make_24**. It is completely optional. / Es totalmente opcional.

---

Mods de datos (solo archivos `romfs`, no tocan el ejecutable) para el juego `0400486024DEC000`, version 1.1.1 (v131072).
Se instalan copiando la carpeta `mod\romfs` a `%APPDATA%\eden\load\0400486024DEC000\<NombreDelMod>\romfs` (cada mod trae `Instalar.bat` y `Desinstalar.bat`).
Ninguno modifica el juego original: para quitar un mod basta con borrar su carpeta. **Estan hechos con herramientas propias y sin probar a fondo; usalos bajo tu responsabilidad.**

## Quitar-Particulas
Reemplaza los 1432 archivos `Effect\*.vsetb.byml.zs` por una version vacia (sin emisores, sin texturas). El juego deja de dibujar particulas: chispas, fuego, magia, polvo, brillos. Con eso baja mucho el coste de GPU. A cambio, el juego se ve mas "pelado". Si algo falla al cargar, desinstalalo.

## Rendimiento-Visual
Ajusta parametros para ganar FPS sin cambiar mucho el aspecto:
- **Bloom** apagado en el juego principal (`agl\BloomParam\MainField`).
- **Niebla volumetrica** apagada: `IsValidVolumeFog=false` en 42 luces y, en 11 zonas, ruido desactivado y distancia final reducida.
- **Foliage al 75 %**: `TurfDensity` y `TurfMinBlades` de `ResFoliageScene` (25 % menos hierba). Las escenas que heredan el valor de otro archivo no cambian.
No incluye desenfoque de movimiento: no hay ajuste para eso en los archivos del juego.

## Pesca-Perfecta
Modifica parametros de `Weapon_FishingLine`, `Weapon_Lure`, `Animal_Fish_Bass` y `Animal_Fish_Loach` para que la linea no se rompa y el pez no se escape (mas estamina falsa, tiempos de fallo enormes, menos saltos). Version 2, sin confirmar en juego.

## DualSense UI (no incluido)
Cambia los iconos de botones de Switch por los de PlayStation (A = Circulo, B = Cruz, X = Triangulo, Y = Cuadrado, L/R = L1/R1, ZL/ZR = L2/R2, + = Options, - = Create) y pone un DualSense en Sistema > Controles basicos. Es el mod **"Dualsense/XBOX/Steamdeck UI" de DoctorTwitch** (https://gamebanana.com/mods/737074), no es mio, asi que no lo subo: descargalo en esa pagina. Trae una tabla de tamanos de recursos parcheada, no la quites o el juego se cierra al arrancar.

