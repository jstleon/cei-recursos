# CLAUDE.md — Contexto operativo del proyecto para Claude Code

## Descripción del proyecto
Aplicación web interactiva desarrollada con enfoque de Vibe Coding.

## Comandos habituales
- Instalación: `npm install`
- Servidor de desarrollo: `npm run dev`
- Compilación de producción: `npm run build`
- Pruebas y linting: `npm run lint`

## Directrices de arquitectura
- Componentes pequeños, funcionales y desacoplados en `src/components/`.
- Hooks personalizados para la manipulación de datasets y filtros en `src/hooks/`.
- Tipos TypeScript centralizados en `src/types/`.

## Reglas de comunicación con el asistente
- En español siempre.
- Respuestas directas, orientadas a la acción y sin introducciones de relleno.
- Antes de realizar refactorizaciones amplias, presenta un plan breve de 3 puntos.
- Siempre verifica que el build pase (`npm run build`) tras realizar modificaciones de archivos.
