# Zelda: Ocarina of Time Remake (Switch 2) - Mods for Lichii/Fritchii

Data-only mods (`romfs` files, no executable changes): remove particles (3 levels), boost FPS, perfect fishing, and higher jumps / longer jumps / faster swimming for Link.
Game ID `0400486024DEC000`, version 1.1.1 (v131072). Install: run the `Instalar.bat` of the option you want (or copy its `mod\romfs` to `%APPDATA%\eden\load\0400486024DEC000\<ModName>\romfs`). To remove a mod, run `Desinstalar.bat` or delete its folder. Details in Spanish below.

## Request a mod / Pide un mod
Tell me which mod you would like to see, report a bug, or share your results (FPS before/after):
- Open an **Issue**: the **Issues** tab, then **New issue**.
- Or leave a comment in **Discussions**, if it is enabled.

Cuentame que mod te gustaria, reporta fallos o comparte tus FPS antes y despues desde la pestana **Issues** de este repositorio.

## Support / Apoyar
If these mods helped you and you want to say thanks, you can donate on Venmo: **@Make_24**. It is completely optional. / Es totalmente opcional.

---

Mods de datos (solo archivos `romfs`, no tocan el ejecutable) para el juego `0400486024DEC000`, version 1.1.1 (v131072).
Cada carpeta trae `Instalar.bat` y `Desinstalar.bat`. Ninguno modifica el juego original: para quitar un mod basta con borrar su carpeta.
**Estan hechos con herramientas propias; usalos bajo tu responsabilidad.**

## Quitar-Particulas (elige UNA de las 3)
Cada opcion reemplaza efectos `Effect\*.vsetb.byml.zs` por una version vacia (sin emisores ni texturas), asi la GPU no los dibuja y suben los FPS.
Las tres se instalan en la misma carpeta (`Quitar Particulas`), asi que instalar una quita la anterior.
**En las tres se ven las hadas (incluida Navi), el fuego azul y el hielo rojo**, que son necesarios para jugar.

| Opcion | Efectos quitados | Que quita | Que mantiene |
|---|---|---|---|
| **Quitar-Particulas-Ligero** | 337 | Solo ambiente (`EftLoc_*`): niebla, humo, vapor, polvo flotante, luciernagas, neblina de cascadas | Todo lo demas |
| **Quitar-Particulas-Equilibrado** (recomendado) | 1099 | Ambiente + efectos de objetos y cofres, cinematicas, escenario (antorchas, lava, candelabros), NPCs y animales | Enemigos, jefes, armas, ataques de Link, magia y el archivo comun `static` |
| **Quitar-Particulas-Total** | 1386 | Casi todo: ademas de lo anterior, efectos de enemigos y jefes (ataques, fuego, rayos), armas, magia y `static` (chispas, golpes) | Hadas, fuego azul y hielo |

La opcion **Total** da el maximo de FPS, pero algunos ataques enemigos se vuelven dificiles de ver.

## Link-Saltos-y-Nado (elige UNA variante)
Modifica los parametros de Link (`Player_Base`, `Player_Adult`, `Player_Child`) para nino y adulto.
Como todos los cambios estan en los mismos 3 archivos, no se pueden combinar dos variantes: por eso hay 15 carpetas con todas las combinaciones. El nombre indica lo que hace, por ejemplo `Altura-x3_Distancia-Larga_Nado-Rapido`.
Todas se instalan en la misma carpeta (`Link Saltos y Nado`), asi que instalar una quita la anterior.

| Opcion | Valor original | Valores del mod |
|---|---|---|
| **Altura** del salto (`JumpHeight`) | 0.7 | `x2` = 1.4, `x3` = 2.1, `x4` = 3.0 |
| **Distancia** del salto (`JumpMaxInitSpeed`, velocidad hacia delante al saltar) | nino 4.5, adulto valor interno | `Larga` = 9.0 |
| **Nado**: impulso al nadar (`SwimDashSpeedMps`) | 5 | `Rapido` = 12 (unas 2,4 veces mas lejos por impulso) |

Ademas, **todas las variantes**:
- Quitan el **dano por caida** (para no perder vida al caer de un salto alto).
- Quitan el aterrizaje pesado (`LargeLandHeight` 5 -> 1000) y permiten hasta 60 s en el aire (`InvalidFallTime` 4 -> 60).
- Mantienen la gravedad original del salto: no flota.

Notas:
- Por encima de `x4` la altura casi no cambia, porque el codigo del juego limita la velocidad de subida.
- La duracion del impulso al nadar no esta en los datos (la marca la animacion); solo se puede cambiar su velocidad.
- Los tamanos de los archivos estan dentro de la tabla de recursos original del juego.

## Rendimiento-Visual
Ajusta parametros para ganar FPS sin cambiar mucho el aspecto:
- **Bloom** apagado en el juego principal (`agl\BloomParam\MainField`).
- **Niebla volumetrica** apagada: `IsValidVolumeFog=false` en 42 luces y, en 11 zonas, ruido desactivado y distancia final reducida.
- **Foliage al 75 %**: `TurfDensity` y `TurfMinBlades` de `ResFoliageScene` (25 % menos hierba). Las escenas que heredan el valor de otro archivo no cambian.
No incluye desenfoque de movimiento: no hay ajuste para eso en los archivos del juego.

## Pesca-Perfecta
Modifica parametros de `Weapon_FishingLine`, `Weapon_Lure`, `Animal_Fish_Bass` y `Animal_Fish_Loach` para que la linea no se rompa y el pez no se escape (tiempos de fallo enormes, margen al seguir al pez, el pez no salta para soltarse).

## DualSense UI (no incluido)
Cambia los iconos de botones de Switch por los de PlayStation (A = Circulo, B = Cruz, X = Triangulo, Y = Cuadrado, L/R = L1/R1, ZL/ZR = L2/R2, + = Options, - = Create) y pone un DualSense en Sistema > Controles basicos. Es el mod **"Dualsense/XBOX/Steamdeck UI" de DoctorTwitch** (https://gamebanana.com/mods/737074), no es mio, asi que no lo subo: descargalo en esa pagina. Trae una tabla de tamanos de recursos parcheada, no la quites o el juego se cierra al arrancar.
