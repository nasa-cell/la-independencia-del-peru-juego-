================================================================================
README - SISTEMA DE REGISTRO Y SEGUIMIENTO
Hatun Aventuras Heroicas - Juego Educativo Patriótico
================================================================================

DESCRIPCIÓN DEL SISTEMA
================================================================================

Se ha implementado un sistema completo de registro de estudiantes y seguimiento 
de progreso en el juego educativo. El sistema incluye:

✓ Pantalla de registro de estudiantes
✓ Validación de código de aula (2026)
✓ Almacenamiento en localStorage
✓ Seguimiento automático de progreso
✓ Pantalla final con resultados
✓ Integración con Google Sheets vía Google Apps Script
✓ Panel de testing para desarrolladores


ARCHIVOS NUEVOS CREADOS
================================================================================

1. registro.js
   - Funciones de gestión de datos en localStorage
   - Validación de código de aula
   - Funciones para guardar y recuperar progreso
   - Función para enviar resultados a Google Sheets

2. registro.html
   - Pantalla de registro de estudiantes
   - Formulario con campos: código, nombre, grado
   - Diseño infantil y patriótico

3. registro.css
   - Estilos para la pantalla de registro
   - Animaciones y efectos visuales
   - Responsive para móvil y desktop

4. final.html
   - Pantalla de resultados finales
   - Muestra puntaje, tiempo y actividades completadas
   - Botón para enviar resultados

5. final.css
   - Estilos para la pantalla final
   - Animaciones de confeti
   - Diseño celebratorio

6. final.js
   - Funciones para la pantalla final
   - Generación de confeti
   - Reproducción de sonido de celebración

7. testing.html
   - Panel de testing para desarrolladores
   - Permite simular estudiantes y progreso
   - Útil para pruebas sin completar todo el juego

8. GUIA_GOOGLE_APPS_SCRIPT.txt
   - Instrucciones paso a paso para configurar Google Apps Script
   - Código necesario para recibir datos
   - Solución de problemas


FLUJO DEL JUEGO
================================================================================

1. Usuario abre index.html
   ↓
2. Sistema verifica si hay estudiante registrado
   ├─ SÍ → Va al índice de lecciones (index.html)
   └─ NO → Redirige a registro.html

3. Estudiante completa el formulario de registro
   ├─ Ingresa código: 2026
   ├─ Ingresa su nombre
   ├─ Selecciona su grado
   └─ Sistema valida código y guarda en localStorage

4. Estudiante ve el índice y comienza con page1.html
   - La música comienza en el primer clic

5. En cada página:
   - Ve video de YouTube
   - Responde trivia
   - Si responde correctamente:
     ├─ +10 puntos
     ├─ La actividad se marca como completada
     └─ Se actualiza el tiempo total

6. Después de completar page20.html:
   - Se muestra alerta con opción de ver resultados
   - Usuario hace clic en "Enviar resultados al profesor"
   - Sistema envía datos a Google Sheets

7. Datos guardados en Google Sheets:
   - Fecha de envío
   - Código: 2026
   - Nombre del estudiante
   - Grado
   - Page1..Page20 con las notas de cada página
   - NotaFinal (puntaje total)
   - Estado: "Completado"


INTEGRACIÓN EN CÓDIGO EXISTENTE
================================================================================

Se han realizado modificaciones mínimas en archivos existentes:

1. index.html
   - Agregado: <script src="registro.js"></script>
   - Agregado: Información del estudiante en header
   - Agregado: Validación de registro al cargar

2. script.js
   - Modificado: validarTrivia() para registrar progreso
   - Agregado: Detección de última actividad (page17)
   - Se conservó toda la funcionalidad de música y YouTube


ALMACENAMIENTO EN LOCALSTORAGE
================================================================================

Se guardan los siguientes datos:

- estudiante_codigo: "2026"
- estudiante_nombre: "[Nombre del estudiante]"
- estudiante_grado: "[Grado seleccionado]"
- estudiante_puntaje: "[Puntaje acumulado]"
- estudiante_tiempo: "[Segundos transcurridos]"
- estudiante_actividades: "[Número de actividades completadas]"
- estudiante_actividades_completadas: "[Array de páginas completadas]"
- estudiante_resultado_enviado: "true/false"
- estudiante_fecha_inicio: "[Timestamp del inicio]"


CONFIGURACIÓN DE GOOGLE APPS SCRIPT
================================================================================

Para que el envío de datos funcione:

1. Lee el archivo: GUIA_GOOGLE_APPS_SCRIPT.txt
2. Sigue los pasos para crear un Apps Script
3. Reemplaza el SPREADSHEET_ID en el código Apps Script
4. Copia la URL de implementación
5. En registro.js, reemplaza API_URL con tu URL

Ubicación en registro.js:
   const API_URL = "PEGAR_AQUI_URL_DE_GOOGLE_APPS_SCRIPT";


TESTING Y DESARROLLO
================================================================================

Para probar sin completar todo el juego:

1. Abre testing.html en tu navegador
2. Opciones disponibles:
   - Registrar estudiante de prueba
   - Simular progreso rápidamente
   - Ver datos en localStorage
   - Probar envío a Google Sheets
   - Acciones rápidas (ir a páginas específicas)

Esto es muy útil para development y debugging.


VALIDACIONES IMPLEMENTADAS
================================================================================

✓ Código de aula: Debe ser exactamente "2026"
✓ Nombre: No puede estar vacío
✓ Grado: Debe seleccionar una opción válida
✓ Puntaje: Se acumula automáticamente (10 pts por actividad correcta)
✓ Tiempo: Se calcula automáticamente desde el inicio
✓ Último envío: Impide duplicados con "resultadoEnviado"


PUNTUACIÓN Y PROGRESO
================================================================================

- Puntos por actividad correcta: 10 puntos
- Máximo de actividades: 17
- Máximo de puntos posibles: 170 puntos
- Tiempo: Se calcula automáticamente desde registro
- Progreso se guarda automáticamente en localStorage


DISEÑO Y UX
================================================================================

- Colores patrióticos peruanos: Rojo (#CE1126), Blanco, Dorado (#FFD700)
- Fuente infantil: Comic Sans MS
- Animaciones suaves para mejorar UX
- Responsive para móvil (< 600px)
- Emojis para facilitar comprensión
- Mensajes claros y amigables


FLUJO DE DATOS
================================================================================

Usuario Registra
    ↓
Datos guardados en localStorage
    ↓
Usuario juega y completa actividades
    ↓
Progreso se actualiza en localStorage
    ↓
Usuario completa todas las actividades
    ↓
Se muestra pantalla final (final.html)
    ↓
Usuario hace clic en "Enviar resultados"
    ↓
fetch() envía datos a Google Apps Script
    ↓
Apps Script recibe y guarda en Google Sheets
    ↓
Sistema marca "resultadoEnviado = true"


VARIABLES IMPORTANTES
================================================================================

API_URL: URL del Google Apps Script (debe configurarse)
STORAGE_KEYS: Objeto con las claves de localStorage
musicPlaylist: Array con los archivos de música
currentTrackIndex: Índice actual de canción
audioPlayer: Reproductor de audio


FUNCIONES PRINCIPALES
================================================================================

GESTIÓN DE DATOS:
- guardarEstudiante(codigo, nombre, grado)
- obtenerEstudiante()
- existeEstudiante()
- limpiarDatos()
- guardarProgreso(puntaje, actividad)

MÚSICA:
- initMusicPlayer()
- playNextTrack()
- pauseMusic()
- resumeMusic()

RESULTADOS:
- enviarResultados()
- formatearTiempo(segundos)
- obtenerTiempoFormato()

VALIDACIÓN:
- validarCodigo(codigo)

NAVEGACIÓN:
- irAlInicio()
- reiniciarJuego()


COMPATIBILIDAD
================================================================================

Probado en:
✓ Chrome (Desktop y Mobile)
✓ Firefox
✓ Safari
✓ Edge
✓ Navegadores móviles (iOS y Android)

Requisitos:
✓ JavaScript habilitado
✓ localStorage disponible
✓ Conexión a internet (para YouTube y envío de datos)


NOTAS TÉCNICAS
================================================================================

1. sessionStorage se usa para mantener la música entre páginas
2. localStorage persiste incluso después de cerrar el navegador
3. Web Audio API se usa para sonido de celebración
4. YouTube API se carga dinámicamente
5. fetch() es CORS-compatible con Google Apps Script (no-cors mode)


TROUBLESHOOTING
================================================================================

❌ "No me redirige a registro.html"
   → Verifica que el archivo registro.html existe
   → Abre la consola (F12) y busca errores

❌ "Los datos no se guardan"
   → Comprueba que localStorage está habilitado
   → Prueba en modo no-privado

❌ "No se envían los datos a Google Sheets"
   → Lee GUIA_GOOGLE_APPS_SCRIPT.txt
   → Verifica que API_URL esté configurada correctamente
   → Abre consola (F12) y busca errores de red

❌ "La música no suena"
   → Verifica que los archivos MP3 existen
   → Comprueba permisos de acceso a audio
   → Algunos navegadores requieren interacción del usuario


PRÓXIMAS MEJORAS (Opcional)
================================================================================

- Agregar gráficos de progreso en tiempo real
- Exportar reportes de Google Sheets
- Sistema de clasificación (ranking)
- Certificados de finalización
- Retroalimentación personalizada por actividad
- Integración con admin panel


SOPORTE Y CONTACTO
================================================================================

Para problemas o preguntas:
1. Revisa los archivos de documentación
2. Abre la consola del navegador (F12)
3. Verifica GUIA_GOOGLE_APPS_SCRIPT.txt
4. Prueba con testing.html

================================================================================
ÚLTIMA ACTUALIZACIÓN: 04/07/2026
Sistema completo y funcional
================================================================================
