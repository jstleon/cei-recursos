---
name: encargo-claro
description: Convertir una petición vaga en un encargo claro para un asistente o agente de IA (ChatGPT, Claude, Gemini, n8n, agentes), con objetivo, contexto, material, formato, límites y forma de comprobar el resultado. Úsala antes de pedir un trabajo de más de unas líneas.
---

# Encargo claro

Un buen encargo dice qué quieres, para qué, con qué material, cómo lo quieres recibir, qué no debe hacerse y cómo sabrás que está bien.

## Pasos

1. **Objetivo.** Qué resultado concreto necesitas y para quién. Una frase.
2. **Contexto.** Lo que el asistente no puede adivinar: situación, público, decisiones ya tomadas.
3. **Material.** Documentos, datos o enlaces que debe usar. Si debe limitarse a ellos, dilo.
4. **Formato.** Extensión, estructura (tabla, lista, correo, JSON), tono e idioma.
5. **Límites.** Qué no debe hacer: inventar datos, enviar mensajes, modificar archivos, salir de unas fuentes.
6. **Comprobación.** Cómo vas a revisar el resultado y qué debe señalar el asistente si le falta información.

## Plantilla

> Necesito [resultado] para [destinatario y uso].
> Contexto: [situación y decisiones tomadas].
> Usa solo [material]. Si falta un dato, indícalo como pendiente en lugar de suponerlo.
> Entrégalo como [formato, extensión, tono].
> No [acciones prohibidas].
> Al final, lista lo que no has podido confirmar.

## Ejemplo

Petición vaga: «Resume mis correos.»

Encargo claro:

> Busca los correos de esta semana sobre el taller de cerámica. Lista la fecha propuesta, la capacidad, los materiales incluidos y lo que está pendiente de mí. Entrega una tabla con el enlace a cada mensaje y tres tareas para hoy. No envíes mensajes ni modifiques eventos.

## Para agentes y automatizaciones

Añade los permisos (qué herramientas puede usar), el punto en que debe pedir aprobación y qué hacer si algo falla. Prueba el encargo con un caso completo y otro incompleto antes de usarlo en serio.
