# Ejercicio 04 · Webhooks y llamadas HTTP en n8n

## Objetivo
Aprender a conectar tu flujo con el mundo exterior: recibir datos desde un formulario web o webhook externo en tiempo real, enviar una respuesta HTTP inmediata (201 Created) y consultar o persistir datos en APIs externas mediante el nodo **HTTP Request**.

---

## Estructura del flujo

```
[Webhook (POST)] ──→ [Validar Payload] ──→ [Respond to Webhook (201 Created)]
                           ↓
               [HTTP Request a API Externa] ──→ [Confirmación Final]
```

---

## Conceptos clave explicados

1. **Webhook de prueba (Test URL) vs. Producción (Production URL):**
   - La **Test URL** solo escucha cuando pulsas **Listen for test event** en n8n. Sirve para depurar.
   - La **Production URL** solo escucha cuando el flujo está activado (**Active: ON**).
2. **Respond to Webhook:**
   - Por defecto, n8n responde inmediatamente cuando recibe el webhook.
   - Usar `Respond to Webhook` permite devolver una respuesta JSON personalizada al cliente que llamó (ej. `{ "status": "recibido", "id_tramite": "TR-491" }`) y un código de estado como `201 Created`.
3. **HTTP Request:**
   - Permite conectar cualquier servicio que tenga API REST: cabeceras personalizadas (`Authorization: Bearer ...`), parámetros de query y cuerpo en JSON.

---

## Archivo importable
- [`flujo_04_webhook_y_api.json`](file:///Volumes/Extreme%20SSD/CEI/CEI_IA/IA_NO_CODE/04_LLMS%20+%20AUTOMATISMOS/05_EJERCICIOS_ALUMNO/E04_Webhooks_y_Llamadas_HTTP/flujo_04_webhook_y_api.json)
