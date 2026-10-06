# Guía práctica de Vibe Coding para el alumno · CEI
**Curso:** IA NO CODE · **Bloque:** 06 Vibe Coding · **Herramientas:** Cursor, Claude Code, Lovable, v0, Bolt

---

## 1. Qué es el Vibe Coding y cómo se trabaja en el mundo profesional

El **Vibe Coding** consiste en programar mediante lenguaje natural con criterio de dirección técnica: tú defines la arquitectura, las reglas del negocio, el diseño visual y los criterios de aceptación, mientras el modelo de IA escribe, modifica y refactoriza el código fuente.

No consiste en desentenderse del código, sino en **elevar tu rol a director de proyecto y arquitecto de software**.

---

## 2. El ciclo operativo en 4 pasos

```
[1. Contexto y Reglas] ──→ [2. Especificación ($P)] ──→ [3. Generación Modular] ──→ [4. Verificación y Commit]
```

1. **Contexto y Reglas:** Antes de pedir la primera línea de código, define en la raíz del proyecto las directrices de estilo y stack en un archivo de configuración (`.cursorrules` en Cursor, `CLAUDE.md` en Claude Code o `AGENTS.md`).
2. **Especificación modular con `$P`:** No pidas "hazme una aplicación de marketing entera". Pide piezas concretas y comprobables: primero los tipos de datos y el mock, luego las tarjetas de KPI, luego los gráficos y finalmente los filtros.
3. **Generación e Inspección:** Deja que el asistente genere el archivo. Lee el diff (cambios propuestos) y comprueba que no haya introducido dependencias absurdas ni inventado nombres de variables.
4. **Verificación y Commit:** Abre el navegador en `localhost:5173` (o la preview de Lovable/v0), comprueba que la pieza funciona y haz un commit en git (`git commit -m "feat: kpi cards"`) antes de pedir el siguiente bloque.

---

## 3. Los 4 errores más habituales del alumno novato

| Error | Por qué falla | Cómo resolverlo |
|---|---|---|
| **Pedir todo en un solo prompt** | El modelo satura su ventana de generación, omite detalles y produce bugs difíciles de aislar. | Construye en capas: 1º Estructura y datos, 2º Componentes visuales, 3º Interactividad. |
| **No guardar versiones (Git)** | Cuando un cambio posterior rompe la app, no hay forma de volver atrás. | Haz un commit o duplicado tras cada paso que funcione correctamente. |
| **Ignorar la consola del navegador** | Intentar corregir un error visual sin ver el mensaje en rojo de la consola de JavaScript. | Abre siempre las DevTools (`F12` / `Cmd + Option + I`) y copia el error exacto al asistente. |
| **Aceptar librerías innecesarias** | El asistente instala paquetes gigantes para hacer operaciones que JavaScript resuelve nativamente. | Limita en tus reglas qué librerías se permiten y pide siempre soluciones limpias. |

---

## 4. Recursos incluidos en esta carpeta

- [`PLANTILLAS_CONFIGURACION/`](file:///Volumes/Extreme%20SSD/CEI/CEI_IA/IA_NO_CODE/06_VIBE_CODING/05_EJERCICIOS_Y_PLANTILLAS/PLANTILLAS_CONFIGURACION/): Plantillas listas para copiar a la raíz de tu proyecto (`.cursorrules`, `CLAUDE.md`, `AGENTS.md`).
- [`CASO_DASHBOARD_MARKETING/`](file:///Volumes/Extreme%20SSD/CEI/CEI_IA/IA_NO_CODE/06_VIBE_CODING/05_EJERCICIOS_Y_PLANTILLAS/CASO_DASHBOARD_MARKETING/): Enunciado paso a paso y dataset de 740 registros en JSON limpio para el ejercicio del dashboard interactivo.
