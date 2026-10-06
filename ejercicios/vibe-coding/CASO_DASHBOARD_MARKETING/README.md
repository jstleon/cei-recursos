# Ejercicio práctico · Dashboard interactivo de campañas (Vibe Coding)
**Herramientas recomendadas:** Cursor, Claude Code, Lovable, v0 o Bolt · **Dataset:** 740 registros (2025)

---

## 1. El encargo del proyecto

Construir una aplicación web interactiva (Single Page Application) que sirva como **Dashboard de Rendimiento de Marketing** para un equipo de adquisición digital.

El dashboard debe permitir explorar el rendimiento publicitario a partir del dataset oficial proporcionado en:
- [`campanas_datos_mock.json`](file:///Volumes/Extreme%20SSD/CEI/CEI_IA/IA_NO_CODE/06_VIBE_CODING/05_EJERCICIOS_Y_PLANTILLAS/CASO_DASHBOARD_MARKETING/campanas_datos_mock.json) (740 registros listos para importar directamente en frontend).
- [`01_RECURSOS/campanas_dashboard_ejercicio.xlsx`](file:///Volumes/Extreme%20SSD/CEI/CEI_IA/IA_NO_CODE/06_VIBE_CODING/01_RECURSOS/campanas_dashboard_ejercicio.xlsx) (versión original con diccionario y totales de validación).

---

## 2. Los 3 niveles de desarrollo

### Nivel 1 · MVP (Vista General)
- **KPI Cards principales:** Gasto Total (€), Ingresos Totales (€), Compras Totales, ROAS global y CTR promedio.
- **Gráfico de evolución temporal:** Gráfico de líneas o barras mostrando la tendencia mensual de Gasto vs. Ingresos.
- **Filtros globales:** Selector de Mes, País (España, México, Colombia, etc.) y Canal (Google Ads, Meta Ads, TikTok Ads, LinkedIn Ads).

### Nivel 2 · Vista Detalle por Campaña
- **Selector de Campaña:** Desplegable para analizar una campaña concreta (`Search Siempre On`, `Brand Awareness Primavera`, etc.).
- **Desglose de métricas:** Impresiones, clics, CPC medio, CPL y Ticket Medio.
- **Gráficos secundarios:** Desglose porcentual de ingresos por canal y distribución por país.

### Nivel 3 · Vista Comparativa y Exportación
- **Comparador:** Permitir seleccionar 2 o 3 campañas a la vez y mostrar un gráfico de barras comparativo (ROAS y Compras).
- **Tabla interactiva:** Tabla con ordenación por columnas (sort) y paginación.
- **Exportación:** Botón para exportar la vista actual a CSV.

---

## 3. Prompt de inicio optimizado ($P) para lanzar el asistente

Copia y pega este prompt en tu herramienta de Vibe Coding (Cursor / Claude Code / Lovable / v0) para arrancar con las especificaciones claras:

```markdown
Contexto / Rol:
Eres un desarrollador frontend senior especializado en React, Tailwind CSS y componentes de visualización de datos (Recharts o Chart.js).

Consulta / Tarea:
Construye un Dashboard interactivo de marketing digital moderno, limpio y responsive utilizando el dataset JSON de 740 registros que te proporciono en 'campanas_datos_mock.json'.

Especificaciones de diseño y arquitectura:
1. Interfaz: Diseño profesional minimalista, tema claro/oscuro o paleta neutra con acentos elegantes. Sin elementos recargados.
2. Estructura:
   - Header con título y selector de filtros globales (Mes, País, Canal).
   - Fila de 5 tarjetas de KPI: Gasto Total (€), Ingresos (€), Compras, ROAS y CTR.
   - Gráfico de barras/líneas de evolución mensual (Ingresos vs Gasto).
   - Tabla interactiva de campañas con ordenación por ROAS o Ingresos y búsqueda rápida.
3. Tratamiento de datos:
   - Los importes deben formatearse con símbolo € y dos decimales (ej. 26.292,48 €).
   - Los porcentajes (CTR, Tasa de conversión) deben mostrarse multiplicados por 100 y con símbolo % (ej. 4,31%).

Criterios de calidad:
- Código modular, limpio y sin librerías innecesarias.
- El filtrado de datos debe recalcular automáticamente todos los KPIs y gráficos al instante.
- Responsive en pantallas móviles y escritorio.
```

---

## 4. Totales de control (para verificar que los cálculos son correctos)

Comprueba que sin filtros aplicados tu dashboard coincida con los totales de validación:
- **Gasto Total:** 4.286.910 €
- **Ingresos Totales:** 16.942.340 €
- **Compras Totales:** 142.850
- **ROAS global promedio:** ~ 3,95x
