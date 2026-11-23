# E09 · Landing en local

La misma landing de E07, pero contra tu n8n en local y sin Sheets ni Gmail: solo comprobar que el dato llega.

## Pasos
1. Arranca n8n en local e importa `flujo_09_landing_local.json`.
2. En el Webhook copia la **Test URL** (empieza por `http://localhost:5678/webhook-test/...`) y pulsa **Listen for test event**.
3. Copia `landing.html` de la carpeta E07, pega la URL en `URL_DE_PRUEBA` y sírvela desde esa carpeta con:
   ```bash
   python3 -m http.server 8000
   ```
   Abre `http://localhost:8000/landing.html`. (El Webhook solo acepta peticiones de `http://localhost:8000`; si abres el archivo con doble clic, el navegador lo bloqueará por CORS.)
4. Envía y mira en n8n qué datos llegaron. Para repetir, vuelve a pulsar *Listen*.

Esto no guarda nada ni envía correos: confirma la llegada del dato. No actives el flujo ni lo publiques.
