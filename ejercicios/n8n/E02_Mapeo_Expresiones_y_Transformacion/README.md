# Ejercicio 02 · Mapeo, expresiones y transformación de datos

## Objetivo
Dominar cómo viajan los datos entre nodos en n8n: acceder a propiedades anidadas (`$json.cliente.nombre`), calcular totales usando expresiones matemáticas (`{{ $json.subtotal + $json.envio }}`) y desglosar listas de items con el nodo **Item Lists**.

---

## Estructura del flujo

```
[Disparador Manual] 
        ↓
[Fijar Pedido Ejemplo (Pin Data)] 
        ↓
[Calcular Total y Normalizar Cliente] (Set)
        ↓
[Desglosar Productos] (Item Lists - Split Out)
```

---

## Conceptos clave explicados

1. **Acceso a datos anidados:**
   - Para leer el nombre del cliente cuando el objeto es `cliente: { nombre: "Elena" }`:
     ```javascript
     {{ $json.cliente.nombre }}
     ```
2. **Expresiones con cálculo:**
   - Para sumar importes numéricos asegurando que no se concatenen como texto:
     ```javascript
     {{ Number($json.subtotal) + Number($json.envio) }}
     ```
3. **El nodo Item Lists:**
   - Convierte un array de productos (`items: [...]`) en items individuales de n8n para que los siguientes nodos puedan procesar cada producto uno a uno.

---

## Archivo importable
- [`flujo_02_mapeo_y_calculo.json`](file:///Volumes/Extreme%20SSD/CEI/CEI_IA/IA_NO_CODE/04_LLMS%20+%20AUTOMATISMOS/05_EJERCICIOS_ALUMNO/E02_Mapeo_Expresiones_y_Transformacion/flujo_02_mapeo_y_calculo.json)
