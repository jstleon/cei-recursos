# Método de construcción y control

Esta guía recoge una especificación funcional facilitada por el GPT personalizado del usuario el 10 de septiembre de 2026. Está adaptada para Codex: no reproduce literalmente instrucciones internas ni contiene secretos, credenciales o configuración privada.

## Lectura de la intención

Identifica:

- sujeto principal y secundarios;
- acción, gesto, estado o relación;
- entorno, época y escala;
- emoción dominante y matices;
- medio visual: fotografía, ilustración, render, collage, grabado u otro;
- grado de realismo o estilización;
- restricciones e invariantes;
- destino del resultado, si afecta a la composición.

Convierte emociones en decisiones visibles. Por ejemplo, “calma” puede expresarse mediante equilibrio asimétrico, espacio negativo, luz difusa, contraste bajo, materiales mates y ritmo pausado. Evita dejar conceptos abstractos sin traducción visual.

## Arquitectura semántica

Usa como esqueleto:

`[El medio]: [El estilo y la composición], [La escena y el contexto], [El ambiente]`

No escribas esos rótulos dentro del prompt salvo que el usuario pida una plantilla comentada. Integra las cuatro capas en prosa fluida:

1. **Medio:** naturaleza de la imagen y tratamiento material o fotográfico.
2. **Estilo y composición:** encuadre, punto de vista, jerarquía, profundidad, ritmo y lenguaje formal.
3. **Escena y contexto:** sujeto, acción, entorno, escala, objetos y relaciones espaciales.
4. **Ambiente:** iluminación motivada, paleta, clima, textura del aire y efecto emocional.

## Referencias

Analiza una referencia por sus propiedades transferibles:

- composición y jerarquía;
- dirección, dureza y temperatura de la luz;
- paleta y contraste;
- textura y materialidad;
- escala y proporción;
- ritmo y densidad;
- profundidad y perspectiva;
- lente o equivalente gráfico;
- emoción;
- relación entre sujeto y entorno.

Si hay conflicto, aplica esta prioridad:

1. instrucción explícita del usuario;
2. identidad del sujeto y necesidad narrativa;
3. referencia principal;
4. referencias secundarias.

Describe el resultado buscado directamente. Utiliza el nombre de un artista solo cuando el usuario lo pida y sea realmente necesario; una referencia no autoriza a clonar una obra.

## Coherencia

### Física

- La fuente de luz concuerda con sombras y reflejos.
- Hora, meteorología y temperatura de color no se contradicen.
- Los materiales responden de manera plausible a la luz y al uso.
- Perspectiva, escala y anatomía son compatibles.

### Estilística

- El medio y el nivel de detalle sostienen el mismo lenguaje.
- Cámara, textura y posproducción no mezclan códigos incompatibles sin intención.
- El vocabulario técnico describe causas visuales, no prestigio vacío.

### Emocional

- Paleta, contraste, espacio, luz y gesto apoyan la emoción pedida.
- Ningún elemento dominante introduce una lectura contraria involuntaria.

### Continuidad

- Identidad, proporciones, materiales, vestuario, utilería y espacio permanecen estables entre imágenes.
- Cada variación de cámara, acción o luz está descrita como cambio deliberado.

## Lista de control final

- ¿El sujeto se reconoce sin ambigüedad?
- ¿La escena puede imaginarse espacialmente?
- ¿El punto de vista y el encuadre están definidos?
- ¿La composición sostiene la emoción?
- ¿La iluminación tiene una fuente plausible?
- ¿La paleta está controlada?
- ¿Hay profundidad y jerarquía?
- ¿El microdetalle aporta materialidad en lugar de ruido?
- ¿El medio y el estilo son coherentes?
- ¿Se han preservado todas las restricciones?
- ¿Los términos técnicos cambian realmente el resultado?
- ¿La versión inglesa conserva intención y énfasis?
- ¿Se han evitado negativos y parámetros no pedidos?
- ¿El texto se limita a redactar el prompt si no se solicitó generación?

## Densidad

Usa por defecto una densidad descriptiva rica pero controlada. Reduce a una versión compacta cuando el usuario lo solicite o cuando la herramienta de destino premie instrucciones breves. La precisión tiene prioridad sobre la longitud.
