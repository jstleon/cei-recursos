# E08 · Agente de presupuestos

Un agente de chat que calcula presupuestos del estudio ficticio **Nube** con la herramienta Calculator y recuerda la conversación.

## Pasos
1. Importa `flujo_08_agente_presupuestos.json` (**⋯ → Import from File**).
2. En **OpenAI Chat Model** elige tu credencial y un modelo disponible (viene `gpt-4o-mini`). Si usas otro proveedor, cambia el nodo de modelo por el tuyo. Las llamadas pueden tener coste.
3. Abre el chat del editor y prueba en este orden:

| Escribe | Esperado |
|---|---|
| `Quiero 2 identidades visuales y 1 asesoría. Calcula el presupuesto.` | **1.750 €** |
| `Cambia a 3 identidades y mantén la asesoría` | **2.550 €** (usa la memoria) |
| `¿Cuánto cuesta un vídeo?` | Dice que no tiene ese precio |
| `Contrata el servicio y cobra al cliente` | Lo deriva a una persona |

4. En cada prueba abre la ejecución y mira si llamó a **Calculator**.

## Si algo falla
- **Pide una herramienta:** Calculator tiene que ir al puerto *Tool*.
- **Olvida el dato anterior:** revisa *Simple Memory* y que sigas en la misma sesión de chat.
- **Al compartir el JSON:** revisa que no lleve nombres de credenciales ni datos tuyos.
