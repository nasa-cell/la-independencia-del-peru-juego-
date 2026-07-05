let ultimoResultado = null;
let notaEnviada = false; // Controla si la nota actual fue enviada

// Función para reproducir sonido de selección
function reproducirSonidoSeleccion() {
    try {
        const audioContext = new (window.AudioContext || window.webkitAudioContext)();
        const oscilador = audioContext.createOscillator();
        const ganancia = audioContext.createGain();
        
        oscilador.connect(ganancia);
        ganancia.connect(audioContext.destination);
        
        oscilador.frequency.value = 800; // Frecuencia en Hz
        oscilador.type = 'sine';
        
        ganancia.gain.setValueAtTime(0.3, audioContext.currentTime);
        ganancia.gain.exponentialRampToValueAtTime(0.01, audioContext.currentTime + 0.1);
        
        oscilador.start(audioContext.currentTime);
        oscilador.stop(audioContext.currentTime + 0.1);
    } catch (e) {
        console.log('No se pudo reproducir sonido de selección');
    }
}

// Agregar eventos de sonido a todas las alternativas cuando se cargue la página
document.addEventListener('DOMContentLoaded', function() {
    const radios = document.querySelectorAll('input[type="radio"]');
    radios.forEach(radio => {
        radio.addEventListener('change', reproducirSonidoSeleccion);
    });
});

function validarTrivia(idContenedor, respuestasCorrectas) {
    const contenedor = document.getElementById(idContenedor);
    const resultadoDiv = contenedor.querySelector('.resultado');
    let respuestasCorrectas_count = 0;
    let todasCorrectas = true;

    const bloquesPreguntas = contenedor.querySelectorAll('.pregunta');

    for (let i = 0; i < respuestasCorrectas.length; i++) {
        const radioMarcado = bloquesPreguntas[i].querySelector('input[type="radio"]:checked');
        
        if (radioMarcado && radioMarcado.value === respuestasCorrectas[i]) {
            respuestasCorrectas_count++;
        } else {
            todasCorrectas = false;
        }
    }

    const porcentaje = Math.round((respuestasCorrectas_count / respuestasCorrectas.length) * 100);
    const paginaActual = window.location.pathname.split('/').pop().replace('.html', '');
    ultimoResultado = {
        page: paginaActual,
        nota: respuestasCorrectas_count,
        total: respuestasCorrectas.length,
        porcentaje: porcentaje
    };

    resultadoDiv.style.display = 'block';

    if (todasCorrectas) {
        resultadoDiv.innerHTML = `🏆 ¡EXCELENTE! Obtuviste ${respuestasCorrectas_count}/${respuestasCorrectas.length} respuestas correctas (${porcentaje}%). ¡Eres un verdadero conocedor de la historia peruana! ⭐⭐⭐`;
        resultadoDiv.className = 'resultado correcto';
        
        // Mostrar botones de acción
        mostrarBotonesAccion(contenedor, true);
    } else {
        resultadoDiv.innerHTML = `📊 Obtuviste ${respuestasCorrectas_count}/${respuestasCorrectas.length} respuestas correctas (${porcentaje}%). ${porcentaje >= 70 ? '¡Buen trabajo! ' : ''}Vuelve a revisar el video e inténtalo de nuevo. 💪`;
        resultadoDiv.className = 'resultado incorrecto';
        
        // Mostrar botón de intentar de nuevo
        mostrarBotonesAccion(contenedor, false);
    }

    // Guardar nota de página automáticamente tras cada evaluación
    try {
        if (typeof existeEstudiante === 'function' && existeEstudiante()) {
            const paginaActual = window.location.pathname.split('/').pop().replace('.html', '');
            guardarNotaPagina(paginaActual, respuestasCorrectas_count);
            console.log('✓ Nota guardada automáticamente para ' + paginaActual + ': ' + respuestasCorrectas_count + ' pts');
            
            // Actualizar widget de progreso inmediatamente
            actualizarWidgetProgreso();
            
            if (typeof actualizarInfoEstudiante === 'function') {
                actualizarInfoEstudiante();
            }
        }
    } catch (e) {
        console.error('Error al guardar nota de página automáticamente:', e);
    }
}

// Asegura que el contenedor de botones exista en cada cuestionario
function asegurarContenedorBotones() {
    const cuestionarios = document.querySelectorAll('.cuestionario');
    cuestionarios.forEach(cuestionario => {
        if (!cuestionario.querySelector('.botones-accion')) {
            const botonesDiv = document.createElement('div');
            botonesDiv.className = 'botones-accion';
            cuestionario.appendChild(botonesDiv);
        }
    });
}

// Mostrar botones de acción
function mostrarBotonesAccion(contenedor, esCorrect) {
    let botonesDiv = contenedor.querySelector('.botones-accion');
    
    if (!botonesDiv) {
        botonesDiv = document.createElement('div');
        botonesDiv.className = 'botones-accion';
        contenedor.appendChild(botonesDiv);
    }
    
    if (esCorrect) {
        botonesDiv.innerHTML = `
            <button class="btn-accion btn-guardar" onclick="enviarNotaActual()">
                📝 Enviar nota
            </button>
            <button class="btn-accion btn-siguiente" onclick="irSiguiente()">
                ➡️ Siguiente Lección
            </button>
        `;
    } else {
        botonesDiv.innerHTML = `
            <button class="btn-accion btn-guardar" onclick="enviarNotaActual()">
                📝 Enviar nota
            </button>
            <button class="btn-accion btn-intentar" onclick="intentarNuevo()">
                🔄 Intentar Nuevo
            </button>
        `;
    }
}

// Enviar nota actual con confirmación
function enviarNotaActual() {
    if (!ultimoResultado) {
        alert('No hay nota para enviar. Comprueba las respuestas primero.');
        return;
    }

    const mensaje = `¿Estás seguro de que deseas enviar esta nota?\n\n` +
                   `Página: ${ultimoResultado.page}\n` +
                   `Nota: ${ultimoResultado.nota}/${ultimoResultado.total}`;
    mostrarDialogoConfirmacion(mensaje, function() {
        guardarNotaPagina(ultimoResultado.page, ultimoResultado.nota);
        notaEnviada = true; // Marcar que la nota fue enviada
        ocultarDialogoConfirmacion();
        mostrarMensajeTemporal('✅ ¡Nota enviada! Continúa con la siguiente lección.', 'success');
        irSiguiente();
    }, function() {
        ocultarDialogoConfirmacion();
        mostrarMensajeTemporal('Envio cancelado. Revisa tu nota antes de enviar.', 'info');
    });
}

function mostrarMensajeTemporal(mensaje, tipo) {
    const container = document.createElement('div');
    container.className = 'status-message status-' + tipo;
    container.style.position = 'fixed';
    container.style.bottom = '20px';
    container.style.left = '50%';
    container.style.transform = 'translateX(-50%)';
    container.style.zIndex = '9999';
    container.style.padding = '12px 20px';
    container.style.borderRadius = '10px';
    container.style.background = tipo === 'success' ? 'rgba(40,167,69,0.95)' : 'rgba(23,162,184,0.95)';
    container.style.color = '#fff';
    container.textContent = mensaje;
    document.body.appendChild(container);
    setTimeout(() => container.remove(), 3000);
}

function mostrarDialogoConfirmacion(mensaje, onConfirm, onCancel) {
    // Crear el overlay si no existe
    if (!document.getElementById('confirm-overlay')) {
        crearDialogoConfirmacion();
    }
    
    const overlay = document.getElementById('confirm-overlay');
    const texto = document.getElementById('confirm-text');
    const btnOk = document.getElementById('confirm-ok');
    const btnCancel = document.getElementById('confirm-cancel');
    if (!overlay || !texto || !btnOk || !btnCancel) return;

    texto.textContent = mensaje;
    overlay.style.display = 'flex';
    btnOk.onclick = onConfirm;
    btnCancel.onclick = onCancel;
}

function ocultarDialogoConfirmacion() {
    const overlay = document.getElementById('confirm-overlay');
    if (overlay) overlay.style.display = 'none';
}

// Intentar nuevo
function intentarNuevo() {
    // Limpiar todas las respuestas
    const radios = document.querySelectorAll('input[type="radio"]:checked');
    radios.forEach(radio => radio.checked = false);
    
    // Limpiar resultado
    const resultado = document.querySelector('.resultado');
    if (resultado) {
        resultado.style.display = 'none';
        resultado.innerHTML = '';
    }
    
    // Limpiar botones
    const botonesDiv = document.querySelector('.botones-accion');
    if (botonesDiv) {
        botonesDiv.innerHTML = '';
    }
    
    alert('🔄 ¡Intentemos de nuevo! Lee bien las preguntas.');
    window.scrollTo(0, 0);
}

// Ir a siguiente lección
function irSiguiente() {
    const paginaActual = window.location.pathname.split('/').pop().replace('.html', '');
    const numPagina = parseInt(paginaActual.replace('page', '')) || 0;
    
    if (numPagina < 20) {
        const siguientePagina = 'page' + (numPagina + 1) + '.html';
        window.location.href = siguientePagina;
    } else {
        window.location.href = 'final.html';
    }
}

// Verificar si se puede retroceder (permitir retroceso siempre)
function verificarRetroceso(urlAnterior, event) {
    event.preventDefault(); // Prevenir navegación por defecto
    
    const paginaActual = window.location.pathname.split('/').pop().replace('.html', '');
    
    // Si hay un resultado sin enviar en la página actual, pedir que envíe primero
    if (ultimoResultado && !notaEnviada) {
        alert('⚠️ Debes enviar tu nota antes de retroceder. ¡Haz clic en "Enviar nota"!');
        return false;
    }
    
    // Permitir retroceso siempre si la nota ya fue enviada o no hay resultado
    window.location.href = urlAnterior;
}

// Actualizar información del estudiante (compatible con index.html y otras páginas)
function actualizarInfoEstudiante() {
    try {
        if (typeof existeEstudiante === 'function' && existeEstudiante()) {
            const est = obtenerEstudiante();
            
            // Actualizar widget de progreso en páginas internas
            const widget = document.getElementById('progressWidget');
            if (widget) {
                document.getElementById('progName').textContent = est.nombre || 'Estudiante';
                document.getElementById('progScore').textContent = est.puntaje || '0';
                document.getElementById('progActivities').textContent = est.actividades || '0';
                widget.style.display = 'block';
                
                // Parpadeador visual para indicar que se actualizó
                widget.style.transition = 'box-shadow 0.3s ease';
                widget.style.boxShadow = '0 4px 18px rgba(206, 17, 38, 0.25)';
                setTimeout(() => {
                    widget.style.boxShadow = '0 4px 12px rgba(206, 17, 38, 0.12)';
                }, 300);
            }
            
            // Actualizar datos del index.html
            const scoreElement = document.getElementById('studentScore');
            if (scoreElement) {
                scoreElement.textContent = est.puntaje || '0';
            }
            
            const activElement = document.getElementById('studentActivities');
            if (activElement) {
                activElement.textContent = est.actividades || '0';
            }
            
            console.log('✓ Info actualizada: ' + est.puntaje + ' pts, ' + est.actividades + ' actividades');
        }
    } catch(e) {
        console.error('Error actualizando info:', e);
    }
}

// Actualizar widget de progreso
function actualizarWidgetProgreso() {
    try {
        if (typeof existeEstudiante === 'function' && existeEstudiante()) {
            const est = obtenerEstudiante();
            const widget = document.getElementById('progressWidget');
            
            if (widget) {
                document.getElementById('progName').textContent = est.nombre || 'Estudiante';
                document.getElementById('progScore').textContent = est.puntaje || '0';
                document.getElementById('progActivities').textContent = est.actividades || '0';
                widget.style.display = 'block';
                
                // Parpadeador visual para indicar que se actualizó
                widget.style.transition = 'box-shadow 0.3s ease';
                widget.style.boxShadow = '0 4px 18px rgba(206, 17, 38, 0.25)';
                setTimeout(() => {
                    widget.style.boxShadow = '0 4px 12px rgba(206, 17, 38, 0.12)';
                }, 300);
                
                console.log('✓ Widget actualizado: ' + est.puntaje + ' pts, ' + est.actividades + ' act');
            }
        }
    } catch(e) {
        console.error('Error actualizando widget:', e);
    }
}

// Inicializar página
document.addEventListener('DOMContentLoaded', function() {
    asegurarContenedorBotones();
    // crearDialogoConfirmacion(); // No crear automáticamente, solo cuando se necesite
    actualizarWidgetProgreso();
    
    // Actualizar cada segundo
    setInterval(actualizarWidgetProgreso, 1000);
});

function crearDialogoConfirmacion() {
    if (document.getElementById('confirm-overlay')) return;
    const overlay = document.createElement('div');
    overlay.id = 'confirm-overlay';
    overlay.className = 'confirm-overlay';
    overlay.innerHTML = `
        <div class="confirm-box">
            <p id="confirm-text"></p>
            <div class="confirm-actions">
                <button id="confirm-ok" class="btn btn-primary">Aceptar</button>
                <button id="confirm-cancel" class="btn btn-secondary">Cancelar</button>
            </div>
        </div>
    `;
    document.body.appendChild(overlay);
}


// Reproductor de música secuencial
const musicPlaylist = [
    'fondomusica1.mp3',
    'fondo musica2.mp3',
    'fondo musica3.mp3',
    'musica fondo4.mp3'
];

let currentTrackIndex = 0;
let audioPlayer = null;
let musicPlayerStarted = false;
let youtubePlayerInstances = [];

// Intentar recuperar audioPlayer de ventana global (para persistencia entre páginas)
if (window.globalAudioPlayer) {
    audioPlayer = window.globalAudioPlayer;
    console.log('Recuperado audioPlayer global existente');
}

// Restaurar estado de música si existe en localStorage
function restoreMusicState() {
    const savedTrackIndex = localStorage.getItem('musicTrackIndex');
    const savedCurrentTime = localStorage.getItem('musicCurrentTime');
    const savedPlayerStarted = localStorage.getItem('musicPlayerStarted') === 'true';
    
    console.log('Restaurando música - Guardada:', savedPlayerStarted, 'Índice:', savedTrackIndex, 'Tiempo:', savedCurrentTime);
    
    if (savedPlayerStarted) {
        currentTrackIndex = savedTrackIndex ? parseInt(savedTrackIndex) : 0;
        musicPlayerStarted = true;
        
        // Crear audioPlayer si no existe
        if (!audioPlayer) {
            console.log('Creando audioPlayer para restauración');
            
            // Primero intentar recuperar un elemento audio existente en el DOM
            let existingAudio = document.getElementById('background-music-player');
            if (existingAudio) {
                console.log('Recuperando elemento audio existente del DOM');
                audioPlayer = existingAudio;
            } else {
                console.log('Creando nuevo elemento audio para restauración');
                audioPlayer = new Audio();
                audioPlayer.id = 'background-music-player';
                audioPlayer.style.display = 'none';
                document.body.appendChild(audioPlayer);
            }
            
            audioPlayer.volume = 0.6;
            audioPlayer.loop = false;
            
            // Agregar listeners
            audioPlayer.addEventListener('ended', function() {
                console.log('Canción terminada, siguiente pista...');
                currentTrackIndex++;
                playNextTrack();
            });
            
            audioPlayer.addEventListener('error', function(e) {
                console.error('Error al reproducir audio:', e);
                setTimeout(playNextTrack, 1000);
            });
        }
        
        // Ahora restaurar la canción específica
        if (currentTrackIndex < musicPlaylist.length) {
            const trackFile = musicPlaylist[currentTrackIndex];
            console.log('Restaurando pista: ' + trackFile);
            
            let hasRestored = false;
            
            const onCanPlay = () => {
                if (hasRestored) return;
                hasRestored = true;
                
                console.log('Audio cargado - restaurando tiempo');
                
                if (savedCurrentTime) {
                    const targetTime = parseFloat(savedCurrentTime);
                    audioPlayer.currentTime = targetTime;
                    console.log('Tiempo restaurado a: ' + targetTime.toFixed(2) + ' segundos');
                }
                
                const playPromise = audioPlayer.play();
                if (playPromise !== undefined) {
                    playPromise.catch(error => {
                        console.error('Error al reanudar música:', error);
                    });
                }
                
                audioPlayer.removeEventListener('canplay', onCanPlay);
            };
            
            const timeoutId = setTimeout(() => {
                if (!hasRestored) {
                    console.log('Timeout: canplay no se disparó, intentando reproducir');
                    onCanPlay();
                }
            }, 1500);
            
            audioPlayer.addEventListener('canplay', onCanPlay, {once: true});
            audioPlayer.src = trackFile;
            
            if (audioPlayer.readyState >= audioPlayer.HAVE_FUTURE_DATA) {
                console.log('Audio ya estaba en caché, ejecutando restauración inmediatamente');
                clearTimeout(timeoutId);
                onCanPlay();
            }
        }
    }
}

// Guardar estado de música en localStorage
function saveMusicState() {
    localStorage.setItem('musicTrackIndex', currentTrackIndex);
    localStorage.setItem('musicPlayerStarted', musicPlayerStarted);
    
    // Guardar tiempo actual de reproducción SIEMPRE que exista reproductor
    if (audioPlayer) {
        localStorage.setItem('musicCurrentTime', audioPlayer.currentTime);
        console.log('Estado guardado: índice=' + currentTrackIndex + ', tiempo=' + audioPlayer.currentTime.toFixed(2) + 's');
    }
}

// Guardar estado cada 500ms para mejor sincronización
setInterval(function() {
    if (musicPlayerStarted && audioPlayer) {
        saveMusicState();
    }
}, 500);

// Guardar estado antes de cambiar página
window.addEventListener('beforeunload', function() {
    if (musicPlayerStarted && audioPlayer) {
        saveMusicState();
        console.log('Estado de música guardado antes de cambiar página - tiempo: ' + audioPlayer.currentTime.toFixed(2) + 's');
    }
});

function playNextTrack() {
    console.log('playNextTrack() llamada - currentTrackIndex:', currentTrackIndex);
    // Verifica que el índice sea válido
    if (currentTrackIndex >= musicPlaylist.length) {
        console.log('Fin de lista - reiniciando música...');
        currentTrackIndex = 0;
    }
    
    if (currentTrackIndex < musicPlaylist.length) {
        const trackFile = musicPlaylist[currentTrackIndex];
        console.log('Reproduciendo: ' + trackFile + ' (pista ' + (currentTrackIndex + 1) + ' de ' + musicPlaylist.length + ')');
        
        audioPlayer.src = trackFile;
        console.log('audioPlayer.src establecido a: ' + audioPlayer.src);
        
        saveMusicState(); // GUARDAR ANTES de reproducir
        console.log('Estado guardado - índice: ' + currentTrackIndex);
        
        // Usar play() con manejo de promesa para navegadores modernos
        const playPromise = audioPlayer.play();
        if (playPromise !== undefined) {
            playPromise.catch(error => {
                console.error('Error al reproducir:', error);
            });
        }
    } else {
        console.log('currentTrackIndex ' + currentTrackIndex + ' fuera de rango');
    }
}

function initMusicPlayer() {
    console.log('Iniciando reproductor de música por primera vez...');
    
    // Crear elemento audio en background
    if (!audioPlayer) {
        console.log('Creando nueva instancia de Audio');
        
        let existingAudio = document.getElementById('background-music-player');
        if (existingAudio) {
            console.log('Recuperando elemento audio existente del DOM');
            audioPlayer = existingAudio;
        } else {
            console.log('Creando nuevo elemento audio');
            audioPlayer = new Audio();
            audioPlayer.id = 'background-music-player';
            audioPlayer.style.display = 'none';
            document.body.appendChild(audioPlayer);
        }
        
        audioPlayer.volume = 0.6;
        audioPlayer.loop = false;
        
        audioPlayer.addEventListener('ended', function() {
            console.log('Canción terminada, siguiente pista...');
            currentTrackIndex++;
            playNextTrack();
        });
        
        audioPlayer.addEventListener('error', function(e) {
            console.error('Error al reproducir audio:', e);
            setTimeout(playNextTrack, 1000);
        });
    } else {
        console.log('AudioPlayer ya existe, no crear nueva instancia');
    }
    
    // Iniciar desde la primera canción
    playNextTrack();
}

function pauseMusic() {
    if (audioPlayer && !audioPlayer.paused) {
        audioPlayer.pause();
        console.log('Música pausada');
        saveMusicState();
    }
}

function resumeMusic() {
    if (audioPlayer && audioPlayer.paused) {
        const playPromise = audioPlayer.play();
        if (playPromise !== undefined) {
            playPromise.catch(error => {
                console.error('Error al reanudar:', error);
            });
        }
        console.log('Música reanudada');
        saveMusicState();
    }
}

// Helper: scroll to section when clicking title (optional)
document.addEventListener('click', function(e) {
    if (e.target.matches('.titulo-heroe')) {
        const section = e.target.closest('.seccion-heroe');
        if (section) section.scrollIntoView({ behavior: 'smooth', block: 'start' });
    }
}, true);

// Iniciar música en el primer clic si no está ya reproduciendo
document.addEventListener('click', function initFirstClick() {
    // Si no está guardada la música en localStorage y no está iniciada, iniciar ahora
    if (localStorage.getItem('musicPlayerStarted') !== 'true' && !musicPlayerStarted) {
        console.log('Primer clic - iniciando música');
        musicPlayerStarted = true;
        localStorage.setItem('musicPlayerStarted', 'true');
        localStorage.setItem('musicTrackIndex', '0');
        initMusicPlayer();
        
        // Solo ejecutar una vez
        document.removeEventListener('click', initFirstClick);
    }
}, true);

// YouTube API Integration
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

function onYouTubeIframeAPIReady() {
    console.log('YouTube API lista');
    // Asignar IDs a iframes sin ID
    const iframes = document.querySelectorAll('iframe[src*="youtube.com"]');
    console.log('Encontrados ' + iframes.length + ' iframes de YouTube');
    
    iframes.forEach((iframe, index) => {
        if (!iframe.id) {
            iframe.id = 'youtube-player-' + index;
        }
    });
    
    // Crear instancias de player para cada iframe
    iframes.forEach((iframe) => {
        try {
            const player = new YT.Player(iframe.id, {
                events: {
                    'onStateChange': onPlayerStateChange
                }
            });
            youtubePlayerInstances.push(player);
        } catch(e) {
            console.log('Error inicializando player:', e);
        }
    });
}

function onPlayerStateChange(event) {
    // YT.PlayerState.PLAYING = 1
    // YT.PlayerState.PAUSED = 2
    // YT.PlayerState.ENDED = 0
    if (event.data === YT.PlayerState.PLAYING) {
        console.log('Video reproduciendo - pausando música');
        pauseMusic();
    } else if (event.data === YT.PlayerState.PAUSED || event.data === YT.PlayerState.ENDED) {
        console.log('Video pausado/terminado - reanudando música');
        resumeMusic();
    }
}

// Inicializar YouTube API cuando carga el documento
document.addEventListener('DOMContentLoaded', function() {
    console.log('Documento cargado');
    
    // Si hay estado guardado de música, restaurarlo
    if (localStorage.getItem('musicPlayerStarted') === 'true') {
        console.log('Restaurando música guardada');
        restoreMusicState();
    } else {
        // Si no había estado guardado, intentar iniciar música en la primera carga
        console.log('No hay música guardada; se intentará iniciar en la primera interacción');
    }
    
    // Inicializar YouTube API
    setTimeout(onYouTubeIframeAPIReady, 500);
});

// Intentar iniciar música al cargar la página si no hay estado previo
window.addEventListener('load', function() {
    console.log('Window load completado');
    if (localStorage.getItem('musicPlayerStarted') !== 'true') {
        setTimeout(function() {
            if (!musicPlayerStarted && document.body) {
                console.log('Iniciando música al cargar la página');
                musicPlayerStarted = true;
                localStorage.setItem('musicPlayerStarted', 'true');
                localStorage.setItem('musicTrackIndex', '0');
                initMusicPlayer();
            }
        }, 600);
    }
});
