---
name: img2img-prompting-avanzado
description: Redacta prompts de edición y composición de imágenes a partir de una imagen base y referencias. Úsala para cambiar fondos, objetos, materiales o estilo manteniendo las propiedades protegidas. La edición efectiva requiere una herramienta de imagen.
---

# Edición y composición de imágenes

Convierte el encargo en una operación localizada sobre una imagen base. Conserva todo lo que el usuario haya protegido y limita las modificaciones a lo solicitado.

## Material y decisiones

1. Inspecciona la imagen real antes de describirla. Identifica cuál es la base y la función de cada referencia: sujeto, objeto, entorno o tratamiento visual.
2. Lee encuadre, perspectiva, escala, pose, luz, profundidad de campo, textura y contornos. Describe únicamente lo que puedes observar.
3. Separa propiedades protegidas, propiedades editables y ajustes necesarios para integrar la edición. Si faltan archivos, pide la imagen; puedes entregar una plantilla marcada como provisional, sin atribuirle rasgos inventados.
4. Ante restricciones incompatibles sobre una misma propiedad, explica el conflicto y pregunta cuál tiene prioridad. Una orden de cambiar el fondo conserva cara, expresión, ropa y pose salvo autorización adicional.
5. Si una decisión cambia sustancialmente el resultado y no ha sido delegada, pregunta una cosa cada vez. Aprovecha los datos que ya existen.

## Construcción del prompt

Usa esta secuencia en español y, cuando sea útil o solicitado, en inglés:

**Preservación → Ediciones localizadas → Integración visual → Coherencia estética.**

- Preservación: establece la imagen base y las propiedades protegidas.
- Ediciones: identifica el elemento, ubicación y resultado concreto de cada cambio.
- Integración: ajusta el elemento nuevo a perspectiva, tamaño, oclusiones, sombras de contacto, reflejos y profundidad de campo existentes. Mantén los ajustes sobre áreas protegidas dentro del margen autorizado.
- Coherencia: conserva el lenguaje visual original, o aplica el nuevo tratamiento que haya pedido el usuario.

En composiciones con varias referencias, especifica qué se toma de cada una. Evita una mezcla global de sus estilos y proporciones. Si el encargo preserva la cara de manera estricta, adapta la luz del fondo al retrato; pregunta antes de modificar la luz de la cara.

## Salida y revisión

Entrega un prompt listo para usar, separado de los supuestos o preguntas. Ambos idiomas deben indicar los mismos cambios. Evita negativos, semillas y parámetros del modelo que nadie haya pedido. Redactar un prompt no autoriza por sí mismo ejecutar una edición.

Comprueba que las propiedades protegidas sobreviven, que cada cambio está localizado y que perspectiva, escala, sombras y bordes son compatibles. Distingue instrucciones de preservación y garantías: el resultado generado se revisa después.

## Ejemplo de encargo

«Sustituye el fondo del retrato por un estudio verde. Conserva cara, expresión, ropa y pose. Adapta el fondo a la luz existente».

La respuesta debe identificar la base, limitar el cambio al fondo y controlar la integración del cabello, silueta y sombras. Si falta el retrato, pide adjuntarlo y ofrece una plantilla provisional solo si resulta útil.
