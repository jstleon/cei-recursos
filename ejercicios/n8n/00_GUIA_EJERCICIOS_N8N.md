# Guía de ejercicios prácticos de n8n · CEI
**Curso:** IA NO CODE · **Bloque:** 04 n8n y Automatismos · **Versión:** n8n 2.8+

---

## 1. El caso de estudio: Taller & Obrador de Cerámica

Para que todos los ejercicios tengan sentido operativo real y no sean nodos aislados, utilizaremos un caso transversal: **un taller artesanal de cerámica contemporánea** que vende piezas online, imparte cursos presenciales y gestiona pedidos, incidencias y consultas de clientes.

En la carpeta [`DATASETS/`](file:///Volumes/Extreme%20SSD/CEI/CEI_IA/IA_NO_CODE/04_LLMS%20+%20AUTOMATISMOS/05_EJERCICIOS_ALUMNO/DATASETS/) tienes dos archivos de prueba con datos simulados y seguros:
- `pedidos_taller.json`: 5 pedidos completos con cliente, productos, importes y estados.
- `mensajes_soporte.json`: 5 mensajes de clientes (consultas de seguimiento, quejas por roturas, cambios de dirección, agradecimientos y spam con inyección de prompt).

---

## 2. Mapa de ejercicios de la unidad

| # | Ejercicio | Nodos clave | Qué aprendes a resolver |
|---:|---|---|---|
| **E01** | [Primer flujo y disparadores](E01_Primer_Flujo_y_Disparadores/README.md) | `Manual Trigger`, `Edit Fields (Set)`, `Schedule` | Montar un flujo básico, fijar datos y programar ejecuciones periódicas. |
| **E02** | [Mapeo, expresiones y transformación](E02_Mapeo_Expresiones_y_Transformacion/README.md) | `Edit Fields`, `Item Lists`, expresiones `{{ $json... }}` | Navegar por la estructura de items, calcular subtotales y transformar objetos. |
| **E03** | [Control de lógica, Switch y errores](E03_Control_Logica_y_Errores/README.md) | `Switch`, `If`, `Error Trigger`, reintentos | Bifurcar flujos según estado del pedido y capturar fallos sin detener el flujo. |
| **E04** | [Webhooks y llamadas HTTP](E04_Webhooks_y_Llamadas_HTTP/README.md) | `Webhook`, `HTTP Request`, `Respond to Webhook` | Recibir datos desde formularios web y consultar APIs externas con cabeceras de auth. |
| **E05** | [Extracción y clasificación con LLM](E05_Extraccion_Estructurada_con_LLM/README.md) | `Basic LLM Chain`, `Structured Output Parser`, `Code (Validation)` | Clasificar tickets de soporte en JSON estricto y validar la respuesta con código. |
| **E06** | [Agente IA con herramientas y Human-in-the-Loop](E06_Agente_IA_Herramientas_y_HumanInTheLoop/README.md) | `AI Agent`, `Custom Tool / MCP`, `Manual Approval` | Crear un agente que consulta pedidos y exige aprobación antes de reembolsos. |

---

## 3. Cómo importar un workflow en n8n

Cada carpeta de ejercicio contiene:
1. `README.md`: Instrucciones paso a paso, diagrama de nodos, explicaciones conceptuales y cómo verificar el resultado.
2. `flujo_XX_....json`: El workflow listo para importar y probar.

### Pasos para importar en n8n:
1. Abre tu instancia de n8n en el navegador.
2. Crea un nuevo flujo o abre uno vacío.
3. En la esquina superior derecha, pulsa en el menú de tres puntos `...` y selecciona **Import from File...** (o arrastra directamente el archivo `.json` sobre el lienzo).
4. El flujo aparecerá montado con sus conexiones y parámetros configurados.
5. Haz doble clic en los nodos de credenciales (si aplica en E05/E06) para asociar tu clave de API (OpenAI / Anthropic / Groq / Gemini).
