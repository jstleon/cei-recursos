---
name: vid2vid-prompting-avanzado
description: Redacta prompts para transformar un vídeo existente conservando las propiedades protegidas del clip. Úsala para cambios de estilo, elementos o ambiente en vídeo a vídeo; exige material real para describir planos y tiempos.
---

# Transformación de vídeo existente

Usa el vídeo fuente como autoridad sobre las propiedades que el usuario quiere conservar. Dirige una transformación delimitada y temporalmente estable.

## Inspección y alcance

1. Pide el clip o un enlace accesible y la transformación deseada. Las referencias adicionales definen únicamente su función asignada.
2. Comprueba qué material puedes inspeccionar. Unos fotogramas permiten observar apariencia, pero dejan sin verificar movimiento y cortes. Una transcripción informa sobre palabras, sin probar contenido visual.
3. Con vídeo accesible, registra duración, cortes y planos; identifica acciones, cámara, encuadres, oclusiones y momentos relevantes. Usa tiempos medidos. Si falta el clip, evita inventar una segmentación y marca cualquier plantilla como provisional.
4. Define propiedades protegidas y editables: identidad, gestos, ritmo, trayectoria, cámara, composición, vestuario, objetos, entorno, luz, estilo, duración y montaje.
5. Detecta incompatibilidades antes de cerrar el prompt. «Conservar todos los gestos» y «sustituirlos por otra coreografía» requieren una elección explícita.

## Tres capas del prompt

**Preservación → Cambio dirigido → Integración cinematográfica.**

- Declara la operación sobre el clip fuente y las propiedades protegidas.
- Describe exclusivamente qué cambia, dónde actúa y durante qué tramo verificado.
- Exige consistencia entre fotogramas: seguimiento de movimiento, geometría, oclusiones y reapariciones; estabilidad de identidad, textura y material. Respeta cada plano y sus cortes, salvo modificación pedida.

Un cambio a acuarela transforma pigmento y textura manteniendo la interpretación, composición y cámara protegidas. El tratamiento permanece estable durante movimientos y oclusiones. Cambiar estilo no autoriza nuevos personajes, acciones o montaje.

## Sonido y límites

Aclara por separado si debe conservarse o cambiarse el audio. Si la herramienta procesa solo imagen, señala que sonido y sincronía se conservan o resuelven mediante otro paso. No prometas preservación exacta del resultado generado: exprésala como requisito verificable.

Entrega español e inglés si se solicita o ayuda al destino, con el mismo alcance y tiempos. Evita negativos, semillas y parámetros no pedidos. Ejecuta la transformación únicamente si se ha solicitado y existe una herramienta adecuada.

## Control final

Comprueba duración, cortes, identidad, acción, cámara, objetos protegidos, bordes y continuidad temporal. En el resultado revisa también parpadeo de texturas, aparición de objetos, deformaciones y desfases de audio. Señala por separado lo que no has podido inspeccionar.
