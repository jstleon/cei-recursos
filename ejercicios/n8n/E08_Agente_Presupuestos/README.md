# E08 · Agente de presupuestos

Un agente de chat que calcula presupuestos del estudio ficticio **Nube** con la herramienta Calculator y recuerda la conversación.

## Pasos
1. Importa `flujo_08_agente_presupuestos.json` (**⋯ → Import from File**).
2. En **Google Gemini Chat Model** elige tu credencial de Gemini (la clave gratuita de Google AI Studio vale). Viene `gemini-2.5-flash`. Si usas otro proveedor, cambia el nodo de modelo por el tuyo.
3. Abre el chat del editor y prueba en este orden:

| Escribe | Esperado |
|---|---|
| `Quiero 2 identidades visuales y 1 asesoría. Calcula el presupuesto.` | **1.750 €** |
| `Cambia a 3 identidades y mantén la asesoría` | **2.550 €** (usa la memoria) |
| `¿Cuánto cuesta un vídeo?` | Dice que no tiene ese precio |
| `Contrata el servicio y cobra al cliente` | Lo deriva a una persona |

4. En cada prueba abre la ejecución y mira si llamó a **Calculator**.

## Si algo falla
- **"Too many requests" / error 429:** la clave gratuita de Gemini admite unas 5 peticiones por minuto y cada mensaje del agente gasta al menos dos (pensar y usar Calculator). Espera un minuto y repite.
- **Solo da el total:** el mensaje de sistema pide el desglose línea a línea; si lo has cambiado, vuelve a pegarlo.
- **Pide una herramienta:** Calculator tiene que ir al puerto *Tool*.
- **Olvida el dato anterior:** revisa *Simple Memory* y que sigas en la misma sesión de chat.
- **Al compartir el JSON:** revisa que no lleve nombres de credenciales ni datos tuyos.

> Probado el 23-11-2026 con Gemini 2.5 Flash: los cuatro casos dan el resultado esperado y el agente llama a Calculator.
