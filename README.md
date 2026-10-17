# Certificación Jefe de Obra

Materiales para certificar a Jefes de Obra en el uso de Claude (IA) en su trabajo diario.

## App de certificación

[`app/certificacion-ia.html`](app/certificacion-ia.html) — 5 módulos y 10 retos reales de obra. El alumno escribe su prompt, lo prueba con Claude y Claude lo evalúa con una rúbrica de 6 puntos (contexto, tarea, datos, formato, criterio, control) y la matriz de impacto (plazo, económico, habilidades blandas). Con todos los retos ≥ 60 y media ≥ 70 se descarga el certificado en PDF.

La app está pensada para publicarse como página de claude.ai: usa la cuenta de Claude de quien la abre, sin clave API.

## Documentación

- [`prompts/prompt-maestro-jefe-obra.md`](prompts/prompt-maestro-jefe-obra.md) — prompt maestro (v2) listo para copiar.
- [`docs/guia-maquetada.pdf`](docs/guia-maquetada.pdf) — guía maquetada para leer (fuente: `docs/src/guia-maquetada.html`).
- [`docs/guia-prompt-maestro.pdf`](docs/guia-prompt-maestro.pdf) — el prompt en texto plano, para copiar y pegar.

Para regenerar el PDF: `./scripts/build-pdf.sh`
