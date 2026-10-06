---
name: diagnosticar-n8n
description: Diagnostica fallos de flujos n8n a partir de entrada, salida, configuración y ejecución reales. Úsala para depurar automatizaciones con pruebas controladas, datos ficticios y cambios mínimos.
---

# Diagnosticar flujos de n8n

Recoge el resultado esperado y la ejecución que falla. Usa datos de entrada y salida, mensaje de error y configuración relevante. Sustituye información personal por ejemplos ficticios y evita exponer credenciales.

Localiza el primer nodo donde el resultado deja de coincidir con lo esperado. Revisa número de items, tipos, rutas JSON, expresiones, vinculación de items, ramas y configuración del nodo. Para errores externos, contrasta respuesta HTTP, autenticación, permisos y límites con la documentación vigente.

Formula una hipótesis que pueda comprobarse y realiza el cambio mínimo autorizado. Prueba en borrador con datos controlados. Antes de ejecutar un nodo que envía mensajes, cobra, publica o modifica datos reales, comprueba la autorización y el alcance.

Registra entrada, salida, estado de ejecución y límites de la prueba. Revisa duplicados e idempotencia cuando pueda repetirse una petición. Prueba también entrada incompleta y respuesta de error. Conserva una copia del flujo previo antes de cambios sustanciales.

Entrega causa respaldada, modificación, evidencia y lo que sigue pendiente. Una configuración visible o una credencial conectada no prueban entrega ni funcionamiento completo. Separa importación de JSON, ejecución de prueba y publicación del flujo.

Ejemplo: si falla una comparación de precio, inspecciona si el campo llega como número o cadena antes de cambiar la condición. Prueba el precio normal, cero y un campo ausente.
