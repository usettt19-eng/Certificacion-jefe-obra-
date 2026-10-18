# Resumen de lo desarrollado

Proyecto: **Certificación Jefe de Obra** — materiales para formar y certificar a Jefes de Obra (edificación y obra civil) en el uso de Claude en su trabajo diario.

## Contenido del repositorio

| Ruta | Qué es |
|---|---|
| `prompts/prompt-maestro-jefe-obra.md` | Prompt maestro v2 del simulador e instructor de Jefes de Obra |
| `docs/guia-prompt-maestro.pdf` | El prompt en PDF de texto plano, para copiar y pegar |
| `docs/guia-maquetada.pdf` | Guía maquetada del simulador para leer (fuente: `docs/src/guia-maquetada.html`) |
| `app/certificacion-ia.html` | App web "Claude para Jefes de Obra": programa de 28 días |
| `scripts/build-pdf.sh`, `scripts/pdf.css` | Generación del PDF del prompt (pandoc + Chromium headless) |

## Historial

1. **Prompt maestro v2 y guía en PDF** — simulador con 5 módulos, top 5 de soft skills, módulo de puntos ciegos (asertividad, empatía, aceptación de críticas) y evaluación triple.
2. **Guía maquetada en PDF** — versión diseñada para lectura.
3. **App de certificación** — primera versión de la app interactiva.
4. **Programa de 28 días** — reestructuración en 30 lecciones y un proyecto final.

## 1. Prompt maestro (v2)

Convierte a Claude en un simulador e instructor interactivo.

**Módulos:**
1. Gestión técnica, planificación y tiempo (soft skill #1: gestión del tiempo).
2. Gestión económica y toma de decisiones (soft skill #2).
3. Liderazgo, organización y trabajo en equipo (soft skills #3–#5).
4. Puntos ciegos del sector: asertividad, empatía y aceptación de críticas.
5. PRL, calidad, sostenibilidad y representación ante DF, propiedad y organismos.

**Evaluación triple tras cada decisión:**
- ⏱️ Impacto técnico y de plazo.
- 💰 Impacto económico y contractual.
- 🧠 Habilidades blandas (asertividad, liderazgo, priorización, gestión del conflicto).

**Modos:** simulador de casos prácticos, role-play de negociación y asertividad, y autoevaluación con test.

## 2. App "Claude para Jefes de Obra" (28 días)

Página HTML única pensada para publicarse en claude.ai. Usa la cuenta de Claude de quien la abre, sin clave API.

### Programa

| Días | Bloque | Lecciones |
|---|---|---|
| 1–5 | Cronogramas de obra | 1.1 Tu primer cronograma · 1.2 Precedencias y ruta crítica · 1.3 Del cronograma a Excel o Project · 1.4 Recursos y cuadrillas · 1.5 Planificación a 3 semanas · 1.6 Recuperar un retraso · 1.7 Organizar tu día · 1.8 Comunicar el plazo a la propiedad |
| 6–10 | Revisión de contratos | 2.1 Resumir un contrato de subcontrata · 2.2 Detectar cláusulas de riesgo · 2.3 Comparar ofertas · 2.4 Penalizaciones y plazos de aviso · 2.5 Justificar un precio contradictorio · 2.6 Responder a una reclamación |
| 11–15 | Solicitudes de información | 3.1 Redactar una RFI clara · 3.2 Detectar incoherencias en el proyecto · 3.3 Registro de RFIs · 3.4 Preparar la visita de la DF · 3.5 Encajar las críticas de la DF · 3.6 Acta de la reunión de coordinación |
| 16–20 | Control de presupuesto | 4.1 Desviación por capítulos · 4.2 Certificación mensual · 4.3 Consumo real frente al teórico · 4.4 Tesorería de la obra · 4.5 Informe económico para dirección |
| 21–25 | Listas de seguridad | 5.1 Lista diaria de inspección · 5.2 Huecos y bordes sin protección · 5.3 Charla de seguridad de 5 minutos · 5.4 Investigar un incidente · 5.5 Paralizar un tajo por seguridad |
| 26–28 | Proyecto final | 6.1 La semana más difícil de la obra (caso integrado) |

Cada bloque incluye un resumen y buenas prácticas. Cada lección trae situación, datos del caso y tarea.

### Flujo de una lección

1. El alumno lee el caso y escribe su prompt (puede insertar los datos del caso con un botón).
2. **Probar**: lo ejecuta con Claude y ve la respuesta.
3. **Evaluar**: Claude puntúa el prompt con una rúbrica de 6 criterios (0–5 cada uno, nota sobre 100):
   - **Contexto** — rol, tipo de obra, situación.
   - **Tarea** — objetivo y entregable claros.
   - **Datos** — cifras y hechos críticos del caso.
   - **Formato** — salida usable en obra (tabla, correo, acta, informe).
   - **Criterio** — ruta crítica, margen y contrato, PRL, normativa, soft skills.
   - **Control** — supuestos explícitos, verificación, decisión final del jefe de obra, protección de datos.
4. Recibe impacto en plazo, económico y en habilidades blandas, hasta 3 fortalezas, 3 mejoras y un prompt mejorado de ejemplo.
5. Se guarda la mejor nota y el número de intentos.

### Certificado

- Requisitos: las 30 lecciones con nota ≥ 60 y el proyecto final ≥ 70.
- Se descarga en PDF (jsPDF) con nombre, nivel, notas y un código de verificación (`CJO-AAAA-XXXXXX`, hash de nombre y notas).

### Aspectos técnicos

- Un solo archivo HTML, sin backend propio.
- Librerías desde cdnjs: marked, DOMPurify y jsPDF.
- Capacidades de claude.ai: `sample` (probar y evaluar con Claude), `user` + `db` (progreso guardado en la cuenta) y `downloads` (PDF).
- El progreso también se guarda en `localStorage`; al abrir, se queda con la versión más reciente entre local y cuenta.
- Fuera de claude.ai la app se puede recorrer, pero probar, evaluar y descargar no están disponibles.

## Regenerar el PDF del prompt

```bash
./scripts/build-pdf.sh
```

Requiere `pandoc` y Chromium (variable `CHROMIUM` opcional).
