// ============================================
// FUNCIONES PARA PÁGINA FINAL (RESULTADOS)
// ============================================

// Generar confeti
function generarConfeti() {
    const confettiColors = ['🇵🇪', '⭐', '🎊', '🎉', '🏆', '🌟'];
    
    for (let i = 0; i < 50; i++) {
        const confetti = document.createElement('div');
        confetti.className = 'confetti';
        confetti.textContent = confettiColors[Math.floor(Math.random() * confettiColors.length)];
        
        confetti.style.left = Math.random() * 100 + '%';
        confetti.style.delay = Math.random() * 0.3 + 's';
        confetti.style.fontSize = (Math.random() * 20 + 15) + 'px';
        confetti.style.animation = 'confetti-fall ' + (Math.random() * 2 + 3) + 's linear forwards';
        
        document.body.appendChild(confetti);
        
        setTimeout(() => confetti.remove(), 5000);
    }
}

// Cargar y mostrar datos del estudiante
function cargarDatosFinales() {
    const estudiante = obtenerEstudiante();
    
    // Validar que haya datos
    if (!estudiante.nombre) {
        window.location.href = 'registro.html';
        return;
    }
    
    // Llenar datos en la página
    document.getElementById('nombreEstudiante').textContent = estudiante.nombre;
    document.getElementById('gradoEstudiante').textContent = estudiante.grado;
    const puntajeRaw = parseInt(estudiante.puntaje) || 0;
    document.getElementById('puntajeEstudiante').textContent = puntajeRaw + ' pts';
    document.getElementById('tiempoEstudiante').textContent = formatearTiempo(parseInt(estudiante.tiempo));
    document.getElementById('actividadesEstudiante').textContent = estudiante.actividades + '/20';
    
    // Mostrar puntaje acumulado directamente
    document.getElementById('puntajeFinal').textContent = puntajeRaw + ' pts';
    
    // Mostrar mensaje si ya fue enviado
    if (estudiante.resultadoEnviado) {
        const mensajeDiv = document.getElementById('mensajeResultados');
        if (mensajeDiv) {
            mensajeDiv.style.display = 'flex';
        }
    } else {
        // Enviar resultados automáticamente si no han sido enviados
        console.log('Enviando resultados automáticamente...');
        enviarResultados();
        
        // Mostrar mensaje después de enviar
        setTimeout(() => {
            const mensajeDiv = document.getElementById('mensajeResultados');
            if (mensajeDiv) {
                mensajeDiv.textContent = '✅ Resultados fueron enviados automáticamente';
                mensajeDiv.style.display = 'flex';
            }
        }, 500);
    }
    
    // Asegurar que el overlay esté oculto
    const overlay = document.getElementById('confirm-overlay');
    if (overlay) {
        overlay.style.display = 'none';
    }
    
    // Generar confeti
    generarConfeti();
    
    // Reproducir sonido de celebración
    reproducirSonidoCelebracion();
}

// Reproducir sonido de celebración
function reproducirSonidoCelebracion() {
    try {
        const audioContext = new (window.AudioContext || window.webkitAudioContext)();
        const oscillator = audioContext.createOscillator();
        const gain = audioContext.createGain();
        
        oscillator.connect(gain);
        gain.connect(audioContext.destination);
        
        oscillator.frequency.value = 400;
        gain.gain.setValueAtTime(0.3, audioContext.currentTime);
        gain.gain.exponentialRampToValueAtTime(0.01, audioContext.currentTime + 0.3);
        
        oscillator.start(audioContext.currentTime);
        oscillator.stop(audioContext.currentTime + 0.3);
    } catch(e) {
        console.log('Audio no disponible');
    }
}

// Reiniciar juego
function reiniciarJuegoFinal() {
    const confirmacion = confirm('¿Estás seguro de que deseas reiniciar el juego? Se perderán todos los datos.');
    if (confirmacion) {
        reiniciarJuego();
    }
}

// Inicializar página
window.addEventListener('load', function() {
    console.log('Página final cargada');
    cargarDatosFinales();
});
