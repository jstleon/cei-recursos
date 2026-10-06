# Ejercicio 03 · Control de lógica, bifurcaciones y manejo de errores

## Objetivo
Aprender a enrutar datos según condiciones con el nodo **Switch**, validar campos obligatorios mediante un nodo **Code** en JavaScript y gestionar fallos controlados para que el flujo no se detenga sin aviso.

---

## Estructura del flujo

```
[Disparador Manual] 
        ↓
[Cargar Lista de Pedidos] (Code con dataset)
        ↓
[Validar Datos Obligatorios] (Code con try/catch o verificación)
     ├── (Datos Válidos) ──→ [Switch por Estado]
     │                             ├── entregado ──→ [Registrar Archivo]
     │                             ├── en_reparto ──→ [Aviso Seguimiento]
     │                             ├── preparacion ──→ [Aviso Horno Taller]
     │                             └── default / otros ──→ [Revisión Pendiente]
     └── (Datos Inválidos) ─→ [Bandeja de Errores]
```

---

## Conceptos clave explicados

1. **El nodo Switch vs. If:**
   - Usa `If` cuando tengas una única condición binaria (verdadero / falso).
   - Usa `Switch` cuando un mismo campo (`$json.estado`) pueda tomar múltiples valores ("entregado", "en_reparto", "preparacion"), evitando encadenar múltiples bloques `If`.
2. **Validación defensiva en Code:**
   - Antes de enviar datos a otros servicios, comprobamos que `email` contenga `@` y que `total` sea mayor que cero. Si no lo cumple, marcamos el item con `valido: false` y lo enviamos a una ruta de auditoría.

---

## Archivo importable
- [`flujo_03_switch_y_errores.json`](file:///Volumes/Extreme%20SSD/CEI/CEI_IA/IA_NO_CODE/04_LLMS%20+%20AUTOMATISMOS/05_EJERCICIOS_ALUMNO/E03_Control_Logica_y_Errores/flujo_03_switch_y_errores.json)
