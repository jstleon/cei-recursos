# Ejercicio 01 · Primer flujo y disparadores en n8n

## Objetivo
Montar tu primer flujo en n8n, comprender el ciclo de ejecución manual vs. programado y aprender a crear e inspeccionar campos de datos sin dependencias externas.

---

## Qué contiene este ejercicio
- **Disparador 1:** `Manual Trigger` (para probar el flujo en el lienzo con un clic).
- **Disparador 2:** `Schedule Trigger` (disparo automático configurado para ejecutarse cada lunes a las 09:00).
- **Nodo de transformación:** `Edit Fields (Set)` configurado para inicializar la sesión del taller cerámico con campos tipados (`taller`, `fecha_apertura`, `aforo_maximo`, `estado_horno`).

---

## Paso a paso para montarlo desde cero

1. **Crear el flujo:** En n8n, crea un nuevo workflow y nómbralo `01 · Primer flujo del taller`.
2. **Añadir el disparador manual:**
   - Pulsa `+` y busca `Manual Trigger`.
   - Colócalo en el extremo izquierdo.
3. **Añadir el disparador por horario:**
   - Pulsa `+` y busca `Schedule Trigger`.
   - En **Trigger Interval**, selecciona `Weeks` y marca `Monday` a las `09:00`.
4. **Añadir el nodo Edit Fields (Set):**
   - Conecta la salida de ambos disparadores a un único nodo `Edit Fields (Set)`.
   - Añade los siguientes valores:
     - `taller` (string): `Taller & Cerámica CEI`
     - `aforo_maximo` (number): `15`
     - `estado_horno` (string): `encendido_baja_temperatura`
     - `temperatura_objetivo_c` (number): `980`
5. **Ejecutar y verificar:**
   - Pulsa **Test step** en el disparador manual.
   - Observa en el panel derecho de `Edit Fields` cómo se visualizan los campos en modo **Table** y en modo **JSON**.

---

## Archivo importable
Puedes importar directamente el flujo preconfigurado:
- [`flujo_01_disparador_y_datos.json`](file:///Volumes/Extreme%20SSD/CEI/CEI_IA/IA_NO_CODE/04_LLMS%20+%20AUTOMATISMOS/05_EJERCICIOS_ALUMNO/E01_Primer_Flujo_y_Disparadores/flujo_01_disparador_y_datos.json)
