# Recursos IA NO CODE · CEI

Material complementario del curso **IA NO CODE** del CEI para el alumnado: skills para tus asistentes de IA, ejercicios de n8n y vibe coding y enlaces de interés. Todo se puede descargar sin cuenta de GitHub.

## Descargar todo

Botón verde **Code → Download ZIP**, o desde la pestaña **Releases** (un ZIP por skill y otro con los ejercicios).

## Skills

Una skill es una carpeta con un archivo `SKILL.md` que enseña a tu asistente a hacer una tarea de una forma concreta. Funcionan en Claude Code, Codex y otras herramientas que leen skills.

### Herramientas audiovisuales

| Skill | Para qué |
|---|---|
| [`txt2img-prompting-avanzado`](skills/txt2img-prompting-avanzado/SKILL.md) | Construir un prompt de imagen desde una idea, con dirección de arte y coherencia |
| [`img2img-prompting-avanzado`](skills/img2img-prompting-avanzado/SKILL.md) | Editar y componer imágenes delimitando qué se conserva y qué cambia |
| [`txt2vid-prompting-avanzado`](skills/txt2vid-prompting-avanzado/SKILL.md) | Dirigir una escena desde texto, con acción, cámara, tiempo y cierre |
| [`directing-image-to-video`](skills/directing-image-to-video/SKILL.md) (img2vid) | Animar una imagen conservándola como primer fotograma |
| [`vid2vid-prompting-avanzado`](skills/vid2vid-prompting-avanzado/SKILL.md) | Transformar un clip preservando las propiedades y movimientos protegidos |
| [`storyboard-audiovisual`](skills/storyboard-audiovisual/SKILL.md) | Planificar una secuencia y comprobar duración y continuidad entre planos |

### Producto, investigación y automatización

| Skill | Para qué |
|---|---|
| [`prd-para-lovable`](skills/prd-para-lovable/SKILL.md) | Convertir una idea en requisitos comprobables para una aplicación o web |
| [`encargo-claro`](skills/encargo-claro/SKILL.md) | Formular un encargo con objetivo, contexto, límites y comprobación |
| [`escritura-natural`](skills/escritura-natural/SKILL.md) | Escribir y revisar textos en español con datos y enlaces intactos |
| [`verificar-fuentes`](skills/verificar-fuentes/SKILL.md) | Contrastar afirmaciones y distinguir evidencia, inferencias y pendientes |
| [`diagnosticar-n8n`](skills/diagnosticar-n8n/SKILL.md) | Localizar fallos mediante entrada, salida y pruebas controladas |
| [`disenar-agente-verificable`](skills/disenar-agente-verificable/SKILL.md) | Definir herramientas, permisos, memoria y evaluación de un agente |

Las skills audiovisuales preparan prompts y revisiones. La generación o edición efectiva requiere una herramienta compatible y una petición que autorice esa acción. Conserva la carpeta completa de cada skill: algunas incluyen referencias que el asistente necesita leer.

Consulta [la procedencia y el alcance de las pruebas](PROCEDENCIA.md) y [los casos para practicar](ejercicios/skills/00_PRACTICAS_SKILLS.md).

### Instalar desde el terminal (macOS o Linux)

```bash
# una skill, para todos tus proyectos de Claude Code
curl -fsSL https://raw.githubusercontent.com/jstleon/cei-recursos/main/install.sh | bash -s -- encargo-claro

# todas
curl -fsSL https://raw.githubusercontent.com/jstleon/cei-recursos/main/install.sh | bash -s -- --todas

# solo en el proyecto en el que estás
curl -fsSL https://raw.githubusercontent.com/jstleon/cei-recursos/main/install.sh | bash -s -- encargo-claro --proyecto

# para Codex
curl -fsSL https://raw.githubusercontent.com/jstleon/cei-recursos/main/install.sh | bash -s -- encargo-claro --codex
```

El instalador conserva las skills existentes y se detiene si el destino ya contiene una del mismo nombre. Para comparar una actualización, instálala en otra carpeta con `--destino=/ruta/de/prueba`. `--codex --proyecto` instala en `.codex/skills/` del proyecto.

### Instalar desde Claude Code

```
/plugin marketplace add jstleon/cei-recursos
/plugin install cei-recursos@cei
```

### Instalar a mano (también en Windows)

Descarga el ZIP de la skill en **Releases**, descomprímelo y copia la carpeta en:

- Claude Code: `~/.claude/skills/` (todos tus proyectos) o `.claude/skills/` dentro de tu proyecto.
- Codex: `~/.codex/skills/`.

En Windows, `~` es tu carpeta de usuario (`C:\Users\<tu usuario>`). Reinicia la herramienta después de instalar.

## Ejercicios

### n8n

Seis ejercicios con su flujo, sus datos de prueba ficticios y una guía: [`ejercicios/n8n`](ejercicios/n8n/00_GUIA_EJERCICIOS_N8N.md).

Para importar un flujo sin descargar nada: en n8n, menú del workflow → **Import from URL** y pega el enlace «Raw» del archivo `.json` del ejercicio. Los flujos que usan un modelo de IA traen la credencial vacía (`REEMPLAZAR_POR_TU_CREDENCIAL_OPENAI`): conéctala con la tuya.

### Vibe coding

Guía práctica, un caso con datos de ejemplo y plantillas de configuración (`CLAUDE.md`, `AGENTS.md`, `.cursorrules`): [`ejercicios/vibe-coding`](ejercicios/vibe-coding/00_GUIA_PRACTICA_VIBE_CODING.md).

## Enlaces de interés

[`enlaces/`](enlaces/README.md): las webs del curso y la documentación oficial de las herramientas.

---

Material de José León para CEI. Puedes usarlo y adaptarlo para tu aprendizaje; si lo compartes, cita la fuente.
