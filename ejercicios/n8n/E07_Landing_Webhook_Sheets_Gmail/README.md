# E07 · Landing → Webhook → Sheets → Gmail

Un formulario web envía los datos a n8n, que los guarda en una hoja y te avisa por correo. **Solo datos ficticios.**

## Archivos
- `flujo_07_landing_sheets_gmail.json` · el flujo para importar.
- `landing.html` · la página de la marca ficticia Estudio Nube: valida los campos, muestra estados de envío y error, evita el doble clic y envía `nombre`, `email`, `proyecto`, `mensaje` y `origen`.

## Pasos
1. En n8n: menú **⋯ → Import from File** y elige el JSON.
2. Crea una hoja de Google con una pestaña `leads` y las columnas `fecha`, `nombre`, `email`, `mensaje`, `proyecto`, `origen`. Pega su URL en **Guardar en Sheets** y elige tu credencial de Google.
3. En **Avisarme por Gmail**, pon tu correo y tu credencial.
4. En **Webhook**, copia la **Test URL** y pulsa **Listen for test event**.
5. Abre `landing.html` con un editor, pega la Test URL en `URL_DE_PRUEBA`, guarda y ábrela en el navegador. Envía el formulario.
6. Comprueba por separado: la ejecución en n8n, la fila en la hoja y el correo.

## Si algo falla
- **El correo sale vacío:** los datos se leen del Webhook con `$('Webhook').item.json.body`, porque Sheets no devuelve `body`. No lo cambies por `$json.body`.
- **"Enviado" pero no hay fila o correo:** el Webhook responde al terminar el último nodo; aun así, comprueba la hoja y el correo por separado.
- **Error de CORS o de conexión:** vuelve a pulsar *Listen for test event* (escucha una sola petición) y revisa la consola del navegador.
- **Filas duplicadas:** cada envío o reintento crea una fila.
- `allowedOrigins` está en `*` para la práctica. En un proyecto real, pon el dominio de tu web.
