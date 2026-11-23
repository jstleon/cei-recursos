# E07 · Landing → Webhook → Sheets → Gmail

Un formulario web envía los datos a n8n, que los guarda en una hoja y te avisa por correo. **Solo datos ficticios.**

## Archivos
- `flujo_07_landing_sheets_gmail.json` · el flujo para importar.
- `landing.html` · la página con el formulario.

## Pasos
1. En n8n: menú **⋯ → Import from File** y elige el JSON.
2. Crea una hoja de Google con las columnas `Fecha`, `Nombre`, `Email`, `Mensaje`. Pega su URL en **Guardar en Sheets** y elige tu credencial de Google.
3. En **Avisarme por Gmail**, pon tu correo y tu credencial.
4. En **Webhook**, copia la **Test URL** y pulsa **Listen for test event**.
5. Abre `landing.html` con un editor, pega la Test URL en `URL_DE_PRUEBA`, guarda y ábrela en el navegador. Envía el formulario.
6. Comprueba por separado: la ejecución en n8n, la fila en la hoja y el correo.

## Si algo falla
- **El correo sale vacío:** los datos se leen del Webhook con `$('Webhook').item.json.body`, porque Sheets no devuelve `body`. No lo cambies por `$json.body`.
- **"Enviado" pero no hay fila:** la respuesta llega al recibir, no al terminar. Mira la ejecución.
- **Error de CORS o de conexión:** vuelve a pulsar *Listen for test event* (escucha una sola petición) y revisa la consola del navegador.
- **Filas duplicadas:** cada envío o reintento crea una fila.
- `allowedOrigins` está en `*` para la práctica. En un proyecto real, pon el dominio de tu web.
