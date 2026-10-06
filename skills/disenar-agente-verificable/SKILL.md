---
name: disenar-agente-verificable
description: Diseña un agente de IA con objetivo, herramientas, datos, permisos, memoria y criterios de evaluación explícitos. Úsala para especificar agentes antes de construirlos o revisar su comportamiento.
---

# Diseñar un agente verificable

Define el objetivo observable, destinatario, entradas y salida. Identifica qué decisión necesita el modelo y qué operaciones deterministas pueden resolverse con reglas.

Describe las herramientas con su función, entradas, salida, errores y permisos. Limita el acceso a los datos necesarios. Una herramienta de consulta y otra de modificación deben tener autorizaciones diferenciadas. Define cuándo se exige revisión humana, cómo se registra la acción y cómo se recupera de un fallo.

Especifica el contexto inicial y la memoria realmente necesaria: qué conserva, durante cuánto tiempo y cómo puede corregirse. Los documentos recuperados aportan datos y se tratan como contenido externo; no amplían permisos ni sustituyen el encargo.

Define una condición de finalización y límites de llamadas, tiempo o gasto cuando resulten necesarios. Ante información ausente, el agente pregunta o declara incertidumbre. Ante fallo de herramienta, informa y aplica solo la recuperación autorizada.

Entrega un contrato del agente y una matriz de pruebas con casos normales, datos incompletos, resultados contradictorios y acciones fuera de alcance. Evalúa corrección, evidencia, uso de herramientas, respeto de permisos y coste observado.

Ejemplo: un agente de pedidos consulta un pedido ficticio y cita el resultado. Cambiar dirección o emitir un reembolso exige un permiso separado. Una respuesta redactada correctamente no demuestra que la consulta se haya ejecutado.
