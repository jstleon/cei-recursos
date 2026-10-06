# Ejercicio 05 · Extracción estructurada y clasificación con LLM en n8n

## Objetivo
Aprender a incorporar un modelo de lenguaje en el flujo sin romper el determinismo del proceso: configurar un nodo de modelo, forzar una respuesta en formato JSON estricto mediante **Structured Output Parser** y validar con código que el LLM no haya omitido campos requeridos ni inventado categorías.

---

## Estructura del flujo

```
[Disparador Manual] 
        ↓
[Cargar Ticket Soporte] (ej. TCK-803: taza rota con id_pedido 1041)
        ↓
[Basic LLM Chain] ── [OpenAI / Chat Model (Temperatura 0.1)]
       ├── [Structured Output Parser] (Esquema JSON)
        ↓
[Validación Defensiva JSON] (Nodo Code)
        ↓
[Switch por Categoría] ──→ queja_rotura / consulta_seguimiento / spam
```

---

## Esquema JSON forzado en el LLM

```json
{
  "categoria": "consulta_seguimiento | queja_rotura | cambio_direccion | felicitacion | spam",
  "urgencia": "baja | media | alta",
  "id_pedido": 1041,
  "resumen": "Breve frase descriptiva del problema",
  "requiere_humano": true
}
```

---

## Por qué validar la salida del modelo con Code

Un LLM no es determinista: incluso con temperatura baja, puede devolver `id_pedido: "1041"` (string en lugar de número) o inventar una categoría no permitida.

El nodo **Validar Esquema JSON** verifica:
1. Que `categoria` sea una de las 5 permitidas.
2. Que si existe `id_pedido`, sea un número entero.
3. Si el JSON falla, desvía el item a la rama de contingencia sin detener el flujo.

---

## Archivo importable
- [`flujo_05_clasificacion_llm_json.json`](file:///Volumes/Extreme%20SSD/CEI/CEI_IA/IA_NO_CODE/04_LLMS%20+%20AUTOMATISMOS/05_EJERCICIOS_ALUMNO/E05_Extraccion_Estructurada_con_LLM/flujo_05_clasificacion_llm_json.json)
*(Nota: Requiere asociar una credencial válida de OpenAI, Anthropic o Gemini en el subnodo de modelo)*.
