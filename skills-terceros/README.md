# Skills de terceros · animación, motion y 3D

Skills públicas de otros autores, copiadas tal cual para que puedas descargarlas junto al resto del material del curso. **No son de CEI ni de José León**: cada carpeta conserva su licencia original (`LICENSE`) y el enlace a su repositorio. Si las compartes, respeta esa licencia y cita al autor.

Se han quitado de la copia solo las demos, vídeos, documentación web y archivos de más de 20 MB; el contenido de cada skill está completo. Fecha de la copia: 23-11-2026.

> **Estado: en pruebas.** El profesor las está probando una a una. Algunas necesitan Node, Python o FFmpeg instalados, o una clave de API de un generador de imagen. Lee el `SKILL.md` antes de usarlas.

## Instalar

En macOS o Linux, desde esta carpeta:

```bash
bash instalar.sh            # todas, para Claude Code (~/.claude/skills)
bash instalar.sh --codex    # todas, para Codex (~/.codex/skills)
bash instalar.sh reanimate motion-design   # solo las que nombres
```

En Windows o en Claude (web y escritorio): copia la carpeta de la skill a tu carpeta de skills, o súbela como ZIP en **Ajustes → Capacidades → Skills**.

## Animación y motion

| Skill | Para qué | Autor | Licencia |
|---|---|---|---|
| [`reanimate`](reanimate/SKILL.md) | Clonar una sección, página o animación a partir de una web, una grabación de pantalla o un vídeo | [NiazMorshed2007/reanimate](https://github.com/NiazMorshed2007/reanimate) | MIT |
| [`motion-design`](motion-design/SKILL.md) | Dar al agente criterio de animador: timing, easing y coreografía del movimiento | [LottieFiles/motion-design-skill](https://github.com/LottieFiles/motion-design-skill) | MIT |
| [`motionmaxxing`](motionmaxxing/SKILL.md) | Dirigir y construir piezas de motion graphics: vídeos de lanzamiento, promos, cortinillas | [Tejashmakwana/motionmaxxing](https://github.com/Tejashmakwana/motionmaxxing) | Apache 2.0 |
| [`huashu-art-motion`](huashu-art-motion/SKILL.md) | Animar obras y explicar con vídeo en más de 30 estilos (documentación en chino) | [alchaincyf/huashu-art-motion](https://github.com/alchaincyf/huashu-art-motion) | MIT |
| [`anidoodle`](anidoodle/SKILL.md) | Dibujos, películas y animaciones web hechas con código, en 32 estilos, con música y narración | [alexgreensh/anidoodle](https://github.com/alexgreensh/anidoodle) | Apache 2.0 |

## Blender (EL4CTEO/blender-skills)

Veintiocho skills para que el agente trabaje en Blender; `blender-core` es la base de todas. Autor: [EL4CTEO/blender-skills](https://github.com/EL4CTEO/blender-skills) · licencia MIT.

`blender-addon-development` · `blender-animation` · `blender-asset-qa` · `blender-character-rigging` · `blender-clothing` · `blender-core` · `blender-environment-kits` · `blender-export-pipelines` · `blender-facial-shapekeys` · `blender-game-optimization` · `blender-geometry-nodes` · `blender-hair-grooming` · `blender-hardsurface-modeling` · `blender-lighting-lookdev` · `blender-pbr-materials` · `blender-pipeline-automation` · `blender-rendering` · `blender-retopology-uv` · `blender-scene-setup` · `blender-sculpting` · `blender-simulation` · `blender-stylized-npr` · `blender-texture-baking` · `blender-texturing` · `blender-time-of-day` · `blender-video-editing` · `blender-weather-fx` · `blender-workflow-recipes`

## Relacionadas que no se copian aquí

| Recurso | Por qué no está copiado | Cómo conseguirlo |
|---|---|---|
| [Remotion Skills](https://github.com/remotion-dev/skills) (13 skills oficiales de vídeo con React) | Su repositorio no declara licencia de redistribución | `npx skills add remotion-dev/skills` |
| [mg-styles-15](https://github.com/Vincentwei1021/mg-styles-15) | Es un pack de 15 prompts de estilo, no una skill (y pesa 570 MB con vídeos) | Descárgalo desde su repositorio |

## Origen exacto de cada copia

| Skill | Repositorio | Commit |
|---|---|---|
| reanimate | NiazMorshed2007/reanimate | `3f7a55a` |
| motion-design | LottieFiles/motion-design-skill | `d77a9fc` |
| motionmaxxing | Tejashmakwana/motionmaxxing | `8c8ec0f` |
| huashu-art-motion | alchaincyf/huashu-art-motion | `a97c450` |
| anidoodle | alexgreensh/anidoodle | `4ae27d2` |
| blender-addon-development | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-animation | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-asset-qa | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-character-rigging | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-clothing | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-core | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-environment-kits | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-export-pipelines | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-facial-shapekeys | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-game-optimization | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-geometry-nodes | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-hair-grooming | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-hardsurface-modeling | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-lighting-lookdev | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-pbr-materials | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-pipeline-automation | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-rendering | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-retopology-uv | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-scene-setup | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-sculpting | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-simulation | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-stylized-npr | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-texture-baking | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-texturing | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-time-of-day | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-video-editing | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-weather-fx | EL4CTEO/blender-skills | `1a1cc6c` |
| blender-workflow-recipes | EL4CTEO/blender-skills | `1a1cc6c` |
