---
name: txt2img-prompting-avanzado
description: Redacta, revisa y adapta prompts avanzados de texto a imagen a partir de una idea, brief o referencia visual. Usar cuando el usuario pida preparar, mejorar, traducir o estructurar un prompt para generar imágenes, antes de invocar una herramienta de generación. No usar para decidir por sí sola la identidad de marca ni para generar la imagen.
---

# Txt2img Prompting Avanzado

Convierte la intención del usuario en una instrucción visual precisa, coherente y reutilizable. Esta skill redacta el prompt; no genera imágenes por sí misma.

## Flujo

1. Extrae el sujeto, la acción o estado, el entorno, la emoción, el medio, el grado de realismo y los elementos que deben permanecer invariantes.
2. Separa lo imprescindible de lo que puedes completar creativamente.
3. Si falta una decisión que cambiaría materialmente el resultado y el usuario no ha delegado autonomía, formula **una sola pregunta material cada vez**. No interrogues sobre detalles deducibles.
4. Si el usuario dice “decide tú”, “haz lo óptimo”, “sorpréndeme” o equivalente, completa los huecos con una dirección coherente y declara brevemente las suposiciones fuera del prompt.
5. Redacta el prompt siguiendo esta arquitectura semántica, integrada en prosa natural:

   `[El medio]: [El estilo y la composición], [La escena y el contexto], [El ambiente]`

6. Comprueba coherencia física, estilística, emocional y narrativa con la lista de `references/metodo.md`.
7. Entrega primero la versión en español. Añade una adaptación natural al inglés cuando sea útil para la herramienta de destino o el usuario la pida. No traduzcas palabra por palabra.
8. Separa claramente el prompt de cualquier nota, supuesto o explicación.

## Reglas de redacción

- Escribe una descripción visual continua, no una acumulación de etiquetas.
- Define con intención el encuadre, punto de vista, profundidad, jerarquía, iluminación motivada, paleta, materiales, textura y atmósfera.
- Traduce conceptos abstractos como calma, tensión o delicadeza a decisiones visibles.
- Usa vocabulario técnico solo cuando determine un resultado: lente, perspectiva, profundidad de campo, exposición, material o tratamiento gráfico.
- Conserva nombres, rasgos, proporciones, materiales y demás invariantes indicados por el usuario.
- Ante referencias visuales, describe sus atributos transferibles; no copies mecánicamente ni dependas de nombres de artistas cuando una descripción directa sea suficiente.
- Prioriza: instrucción explícita del usuario, sujeto y narrativa, referencia principal, referencias secundarias.
- No añadas negative prompts, parámetros del modelo, relaciones de aspecto, semillas ni cadenas como “8K, masterpiece” salvo petición expresa o requisito conocido de la herramienta de destino.
- No produzcas variantes no solicitadas. Cuando una decisión estratégica admita direcciones sustancialmente distintas, preséntalas antes como opciones breves y espera elección.
- No invoques una herramienta de imagen a menos que el usuario también haya pedido generar o editar la imagen. Si lo ha pedido, prepara primero el prompt y después pásalo a la skill o herramienta de generación correspondiente.

## Formato de salida por defecto

**Prompt en español**

Texto listo para usar.

**Prompt in English**

Natural English adaptation ready to use.

Omite la segunda versión si el usuario ha pedido un único idioma o si el sistema de destino trabaja claramente en español. Si hace falta una aclaración material, pregunta antes y no presentes un prompt como definitivo.

## Secuencias y cuadrículas

Para una serie de imágenes, define primero el sistema común: sujeto, identidad, proporciones, materiales, paleta, iluminación y gramática de cámara. Después especifica únicamente lo que cambia en cada imagen o panel. Revisa la continuidad entre todas las piezas.

## Profundización

Consulta `references/metodo.md` cuando el encargo incluya referencias, continuidad entre imágenes, una escena físicamente compleja o una revisión de calidad.
