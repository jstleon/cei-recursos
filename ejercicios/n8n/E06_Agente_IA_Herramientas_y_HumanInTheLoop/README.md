# Ejercicio 06 · Agente IA con herramientas y Human-in-the-Loop en n8n

## Objetivo
Montar una arquitectura agéntica segura en n8n: configurar el nodo **AI Agent**, equiparlo con una herramienta personalizada (**Custom Tool**) para consultar la base de datos de pedidos del taller, y aplicar el principio de supervisión humana (**Human-in-the-Loop**) para acciones críticas (cancelaciones o reembolsos).

---

## Estructura del flujo

```
[Disparador Manual] 
        ↓
[Pregunta del Cliente] ("¿Cómo va mi pedido 1043 y qué contiene?")
        ↓
[AI Agent (ReAct)] ── [OpenAI Chat Model]
       ├── [Tool: Consultar Pedido] (JavaScript Tool con DB de pedidos)
        ↓
[Detectar Acción Crítica] (Switch / If)
     ├── (Consulta Informativa) ──→ [Enviar Respuesta Autónoma]
     └── (Reembolso / Cancelación) ──→ [Paso de Aprobación Humana]
```

---

## Reglas del agente (System Prompt)

El agente opera bajo el principio de **privilegio mínimo y supervisión graduada**:
1. Para responder sobre el estado de un pedido, está autorizado a llamar a `consultar_pedido(id)`.
2. Tiene prohibido prometer o ejecutar devoluciones directamente: debe generar una propuesta formal con los datos y marcar `requiere_aprobacion: true`.

---

## Archivo importable
- [`flujo_06_agente_herramientas_aprobacion.json`](file:///Volumes/Extreme%20SSD/CEI/CEI_IA/IA_NO_CODE/04_LLMS%20+%20AUTOMATISMOS/05_EJERCICIOS_ALUMNO/E06_Agente_IA_Herramientas_y_HumanInTheLoop/flujo_06_agente_herramientas_aprobacion.json)
*(Nota: Requiere asociar una credencial válida de OpenAI o Anthropic en el nodo de modelo)*.
