# E10 · Datos y lógica: Y, O, Switch y Filter

Seis pedidos ficticios pasan a la vez por cuatro decisiones. Antes de ejecutar, **predice en papel** qué pedidos saldrán por cada salida; después ejecuta y compara.

Acompaña a las secciones «Los tipos de datos» (capítulo 3) y «Cómo funciona una condición», «Varias condiciones: Y, O y NO» y «Un If paso a paso» (capítulo 5).

## Los pedidos

| Pedido | Cliente | Importe | País | Urgente |
|---|---|---:|---|---|
| 1101 | Lucía | 250 | España | no |
| 1102 | Marco | 80 | Italia | sí |
| 1103 | Elena | 100 | España | no |
| 1104 | David | 130 | Francia | no |
| 1105 | Sara | 420 | España | sí |
| 1106 | Ana | 60 | españa | no |

## Pasos
1. En n8n: **⋯ → Import from File** y elige `flujo_10_datos_y_logica.json`. No necesita credenciales.
2. Abre **Un item por pedido** y mira la vista de esquema: ¿qué tipo tiene cada campo?
3. Rellena la columna «Tu predicción» de la tabla de abajo.
4. Pulsa **Execute workflow** y comprueba los números sobre cada flecha.

## Qué debe salir

| Nodo | Salida | Tu predicción | Resultado esperado |
|---|---|---|---|
| Y: grande y de España | verdadero | | 1101, 1105 (2) |
| | falso | | 1102, 1103, 1104, 1106 (4) |
| O: grande o urgente | verdadero | | 1101, 1102, 1104, 1105 (4) |
| | falso | | 1103, 1106 (2) |
| Switch: tamaño | pequeño (≤ 100) | | 1102, 1103, 1106 (3) |
| | mediano (≤ 300) | | 1101, 1104 (2) |
| | grande (> 300) | | 1105 (1) |
| | Fallback | | ninguno |
| Filter: solo España | se quedan | | 1101, 1103, 1105 (3) |

## Las tres trampas
- **1103 con 100 €** no es «mayor que 100»: va por falso en Y y en O, y por «pequeño» en el Switch.
- **1106 con «españa» en minúscula** no pasa el Filter: la comparación distingue mayúsculas. Activa **Ignore Case** en las opciones del Filter y vuelve a ejecutar: ahora se quedan 4.
- **El Switch para en la primera regla que se cumple.** 1102 (80 €) cumple «≤ 100» y también «≤ 300», pero sale solo por «pequeño» porque esa regla va primero.

## Retos
1. En **Pedidos ficticios**, cambia el importe de 1105 de `420` a `"420"` (entre comillas) y ejecuta. ¿Qué pasa en los nodos con condiciones de número? Arréglalo con `{{ $json.importe.toNumber() }}` en la condición.
2. Cambia el If «Y» para que sea «(grande y de España) **o** urgente» encadenando un segundo If en su salida falso. Deberían salir por verdadero 1101 y 1105 en el primer If, y 1102 en el segundo.
3. Deja la salida falso de un If sin conectar y ejecuta: ¿hay algún error? ¿Dónde se ve qué pasó con esos pedidos?

> Probado el 23-11-2026 en n8n: las cuatro decisiones dan exactamente la tabla «Qué debe salir».
