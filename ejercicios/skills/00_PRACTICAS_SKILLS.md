# Prácticas con skills

Instala únicamente las skills que vayas a utilizar. Pide al asistente que use una por su nombre y aporta el material necesario. Revisa las decisiones y el resultado antes de ejecutar o publicar.

## Elegir la modalidad audiovisual

| Tu material de partida | Tarea | Skill |
|---|---|---|
| Una idea escrita | Crear el prompt de una imagen | txt2img-prompting-avanzado |
| Una imagen base | Cambiar una parte o componer elementos | img2img-prompting-avanzado |
| Una idea escrita | Dirigir una escena de vídeo | txt2vid-prompting-avanzado |
| Un fotograma inicial | Describir el movimiento que continúa esa imagen | directing-image-to-video |
| Un clip existente | Transformar su apariencia o elementos | vid2vid-prompting-avanzado |
| Un brief de una pieza completa | Planificar sus planos | storyboard-audiovisual |

### Casos de comprobación

| Skill | Caso completo | Falta información | Conflicto o límite |
|---|---|---|---|
| txt2img | Cartel fotográfico de una taza artesanal, plano cercano, luz de ventana y calma | «Una imagen bonita» requiere concretar sujeto o uso | Conservar un logotipo y cambiar sus letras exige decidir prioridad |
| img2img | Cambiar el fondo de un retrato adjunto, conservando cara, expresión, pose y ropa | Sin imagen, pedirla o preparar una plantilla provisional | Conservar expresión y cambiar sonrisa por enfado requiere aclaración |
| txt2vid | Plano único de seis segundos de ceramista, acercamiento lento y cierre al retirar manos | «Vídeo precioso» requiere concretar qué ocurre | Cámara fija y órbita a la vez son incompatibles; diez acciones en un segundo necesitan ajuste |
| img2vid | Fotograma adjunto, cinco segundos, respiración y acercamiento lento, cierre en la mirada | Sin imagen, pedir un archivo accesible antes de describirla | Cambiar vestuario contradice su preservación; una órbita debe respetar la geometría visible |
| vid2vid | Clip accesible a transformar a acuarela, preservando cámara, cortes y gestos | Sin clip, el prompt es provisional | Tres fotogramas dejan movimiento y montaje pendientes; otra coreografía cambia los gestos |

Usa personajes y materiales ficticios. En encargos de edición, separa las propiedades protegidas de los cambios permitidos. Compara los prompts español e inglés: deben dirigir la misma escena. Después de generar, revisa lo que realmente produjo la herramienta.

## Proyecto de reservas

Usa `prd-para-lovable` para una agenda de taller con visitantes y administración. Delimita el MVP: consultar sesiones, solicitar plaza, crear sesiones y confirmar o rechazar solicitudes. Comprueba que las pantallas salen de esos flujos y que los permisos protegen nombres y correos. Ensaya dos confirmaciones para la última plaza y un visitante intentando leer solicitudes ajenas.

## Investigación

Con `verificar-fuentes`, contrasta tres afirmaciones de un texto. Aporta los documentos y pide una tabla de evidencia. Incluye una cifra sin denominador y una fuente inaccesible. Comprueba que el asistente declara la incertidumbre y conserva fechas y unidades.

## Automatización y agentes

Con `diagnosticar-n8n`, usa un flujo de los ejercicios y datos ficticios. Compara entrada, salida y ejecución. Prueba un campo ausente y una petición repetida. Registra qué nodos se ejecutaron y qué acciones externas quedaron sin probar.

Con `disenar-agente-verificable`, especifica un agente que consulta el estado de pedidos ficticios. Define herramientas y permisos. Comprueba que una consulta no permite cambiar una dirección o emitir un reembolso sin autorización adicional.

## Escritura y encargos

Usa `encargo-claro` para preparar un brief con objetivo, fuentes, formato y límites. Usa `escritura-natural` sobre una respuesta larga y coteja nombres, cifras y enlaces antes de aceptar la revisión.
