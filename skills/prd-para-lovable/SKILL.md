---
name: prd-para-lovable
description: Convierte una idea en un PRD para construir una aplicación o web con Lovable, con alcance MVP, flujos, pantallas, datos, permisos y criterios de aceptación. Úsala antes de implementar; adapta el stack a decisiones confirmadas.
---

# PRD para Lovable

Un PRD recoge requisitos de producto que permiten construir y comprobar una primera versión. Reduce las decisiones implícitas y mantiene separadas las funciones confirmadas y las propuestas.

## Aclarar el producto

Identifica objetivo, usuarios, problema y tipo de producto. Distingue necesidades de una web informativa y de una aplicación con datos y operaciones; ambas pueden tener formularios o administración. Evita una clasificación que imponga decisiones innecesarias.

Formula una pregunta material cada vez cuando falte información. Usa el contexto disponible y declara los supuestos delegados. Delimita el MVP, las exclusiones y las decisiones abiertas. El uso de Lovable no autoriza a añadir pagos, correo, IA ni servicios externos.

## Derivar los requisitos

1. Describe los flujos por tipo de usuario, desde la entrada hasta el resultado. Incluye errores, datos incompletos, estados vacíos y acciones concurrentes cuando afecten al objetivo.
2. Deriva pantallas y navegación de esos flujos. Para cada pantalla especifica información, acciones, estados y comportamiento móvil.
3. Define entidades, campos necesarios, relaciones, validaciones y transiciones de estado. Cada entidad debe sostener una función del MVP.
4. Crea una matriz de permisos por rol: lectura, creación y modificación. La autenticación identifica al usuario; la autorización determina qué puede hacer. El acceso administrativo debe estar restringido al rol permitido.
5. Explicita reglas que necesitan protección en el servidor, como aforo, propiedad de datos o cobros. Ocultar un botón no prueba que la operación esté protegida.
6. Incluye solo las integraciones aprobadas. Comprueba documentación actual si vas a recomendar un stack o un servicio. Si aún no está decidido, ofrece opciones con sus consecuencias y deja la elección abierta.
7. Recoge dirección visual, referencias, paleta, tipografía, densidad y accesibilidad. Respeta el diseño existente y evita convertir la preferencia por una herramienta en una estética.
8. Escribe criterios de aceptación comprobables que se correspondan con cada requisito, usando datos ficticios en las pruebas.

## Entrega

Devuelve un documento Markdown con visión, usuarios, MVP y exclusiones, flujos, pantallas, datos, reglas de negocio, permisos, integraciones, diseño, criterios de aceptación y decisiones abiertas. Ajusta su extensión a la complejidad y elimina duplicaciones.

Añade un prompt inicial de implementación solo cuando lo pidan. Divide el trabajo en pasos revisables y conserva requisitos pendientes sin presentarlos como decisiones tomadas. Preparar el PRD no autoriza conectar servicios, publicar ni ejecutar pagos.

## Ejemplo de comprobación

En una agenda con aforo de ocho plazas, dos confirmaciones simultáneas que compiten por la última plaza deben producir una sola confirmación. Los visitantes pueden consultar sesiones y enviar solicitudes, pero no leer nombres o correos de otros visitantes. Estas condiciones deben probarse en backend además de revisarse en pantalla.
