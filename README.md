# Certificación Jefe de Obra

Materiales para certificar a Jefes de Obra en el uso de Claude (IA) en su trabajo diario.

## App: Claude para Jefes de Obra (programa de 28 días)

[`app/certificacion-ia.html`](app/certificacion-ia.html) — 30 lecciones con tareas reales y un proyecto final:

| Días | Bloque | Lecciones |
|---|---|---|
| 1–5 | Cronogramas de obra | 8 |
| 6–10 | Revisión de contratos | 6 |
| 11–15 | Solicitudes de información | 6 |
| 16–20 | Control de presupuesto | 5 |
| 21–25 | Listas de seguridad | 5 |
| 26–28 | Proyecto final y certificado | 1 |

En cada lección el alumno escribe su prompt, lo prueba con Claude y Claude lo evalúa con una rúbrica de 6 puntos (contexto, tarea, datos, formato, criterio, control) y el impacto en plazo, económico y habilidades blandas. Certificado en PDF con todas las lecciones a 60 o más y el proyecto final a 70 o más.

La app está pensada para publicarse como página de claude.ai: usa la cuenta de Claude de quien la abre, sin clave API.

## Landing de venta

[`landing/index.html`](landing/index.html) — página de venta del programa. El precio, el enlace de pago y el contacto se cambian en el bloque `CONFIG` al principio del script.

## Documentación

- [`prompts/prompt-maestro-jefe-obra.md`](prompts/prompt-maestro-jefe-obra.md) — prompt maestro (v2) listo para copiar.
- [`docs/guia-maquetada.pdf`](docs/guia-maquetada.pdf) — guía maquetada para leer (fuente: `docs/src/guia-maquetada.html`).
- [`docs/guia-prompt-maestro.pdf`](docs/guia-prompt-maestro.pdf) — el prompt en texto plano, para copiar y pegar.

Para regenerar el PDF: `./scripts/build-pdf.sh`
