// ============================================
// SYSTEM DE REGISTRO Y GESTIÓN DE DATOS
// ============================================

// URL de Google Apps Script (VERSIÓN 12 DEL 4 JUL 2026 - CON FUNCIÓN LIMPIAR)
const API_URL = "https://script.google.com/macros/s/AKfycbyUfPfTjCktZ19Zwk3IwTc4ohkIDyEg0DcqAAa3hgIod_RxC9ua59_i3v3F22bJU8RN/exec";

// DATOS DE ESTUDIANTE EN LOCALSTORAGE
const STORAGE_KEYS = {
    codigo: 'estudiante_codigo',
    nombre: 'estudiante_nombre',
    grado: 'estudiante_grado',
    puntaje: 'estudiante_puntaje',
    tiempo: 'estudiante_tiempo',
    actividades: 'estudiante_actividades',
    actividadesCompletadas: 'estudiante_actividades_completadas',
    paginas: 'estudiante_paginas',
    resultadoEnviado: 'estudiante_resultado_enviado',
    fechaInicio: 'estudiante_fecha_inicio'
};

// FUNCIONES DE LOCALSTORAGE
function guardarEstudiante(codigo, nombre, grado) {
    localStorage.setItem(STORAGE_KEYS.codigo, codigo);
    localStorage.setItem(STORAGE_KEYS.nombre, nombre);
    localStorage.setItem(STORAGE_KEYS.grado, grado);
    localStorage.setItem(STORAGE_KEYS.puntaje, '0');
    localStorage.setItem(STORAGE_KEYS.tiempo, '0');
    localStorage.setItem(STORAGE_KEYS.actividades, '0');
    localStorage.setItem(STORAGE_KEYS.actividadesCompletadas, JSON.stringify([]));
    localStorage.setItem(STORAGE_KEYS.paginas, JSON.stringify({}));
    localStorage.setItem(STORAGE_KEYS.fechaInicio, new Date().getTime());
    localStorage.setItem(STORAGE_KEYS.resultadoEnviado, 'false');
}

function obtenerEstudiante() {
    return {
        codigo: localStorage.getItem(STORAGE_KEYS.codigo),
        nombre: localStorage.getItem(STORAGE_KEYS.nombre),
        grado: localStorage.getItem(STORAGE_KEYS.grado),
        puntaje: localStorage.getItem(STORAGE_KEYS.puntaje) || '0',
        tiempo: localStorage.getItem(STORAGE_KEYS.tiempo) || '0',
        actividades: localStorage.getItem(STORAGE_KEYS.actividades) || '0',
        actividadesCompletadas: JSON.parse(localStorage.getItem(STORAGE_KEYS.actividadesCompletadas) || '[]'),
        paginas: JSON.parse(localStorage.getItem(STORAGE_KEYS.paginas) || '{}'),
        resultadoEnviado: localStorage.getItem(STORAGE_KEYS.resultadoEnviado) === 'true'
    };
}

function existeEstudiante() {
    return localStorage.getItem(STORAGE_KEYS.codigo) !== null;
}

function limpiarDatos() {
    Object.values(STORAGE_KEYS).forEach(key => {
        localStorage.removeItem(key);
    });
}

// FUNCIONES DE PROGRESO
function guardarProgreso(puntaje, actividad, nota = 10) {
    try {
        // Guardar puntaje explícito si no hay actividad
        if ((puntaje !== undefined && puntaje !== null) && !actividad) {
            localStorage.setItem(STORAGE_KEYS.puntaje, puntaje.toString());
            console.log('💾 Puntaje guardado: ' + puntaje);
        }
        
        // Guardar actividad completada y puntaje de página
        if (actividad) {
            const actividadesCompletadas = JSON.parse(localStorage.getItem(STORAGE_KEYS.actividadesCompletadas) || '[]');
            const paginas = JSON.parse(localStorage.getItem(STORAGE_KEYS.paginas) || '{}');
            
            if (!actividadesCompletadas.includes(actividad)) {
                actividadesCompletadas.push(actividad);
                localStorage.setItem(STORAGE_KEYS.actividadesCompletadas, JSON.stringify(actividadesCompletadas));
                localStorage.setItem(STORAGE_KEYS.actividades, actividadesCompletadas.length.toString());
                console.log('💾 Actividad guardada: ' + actividad + ' (Total: ' + actividadesCompletadas.length + ')');
            }
            
            paginas[actividad] = nota;
            localStorage.setItem(STORAGE_KEYS.paginas, JSON.stringify(paginas));
            console.log('💾 Página registrada: ' + actividad + ' = ' + nota + ' pts');
            
            const puntajeTotal = Object.values(paginas).reduce((sum, value) => sum + parseInt(value || 0), 0);
            localStorage.setItem(STORAGE_KEYS.puntaje, puntajeTotal.toString());
            console.log('💾 Puntaje total recalculado: ' + puntajeTotal);
        }
        
        // Actualizar tiempo
        const fechaInicio = parseInt(localStorage.getItem(STORAGE_KEYS.fechaInicio) || Date.now());
        const tiempoTranscurrido = Math.floor((new Date().getTime() - fechaInicio) / 1000);
        localStorage.setItem(STORAGE_KEYS.tiempo, tiempoTranscurrido.toString());
        
    } catch(e) {
        console.error('Error en guardarProgreso:', e);
    }
}

// FUNCIÓN PARA CALCULAR TIEMPO EN FORMATO HH:MM:SS
function formatearTiempo(segundos) {
    const horas = Math.floor(segundos / 3600);
    const minutos = Math.floor((segundos % 3600) / 60);
    const secs = segundos % 60;
    
    const pad = (n) => (n < 10 ? '0' + n : n);
    
    if (horas > 0) {
        return `${pad(horas)}:${pad(minutos)}:${pad(secs)}`;
    }
    return `${pad(minutos)}:${pad(secs)}`;
}

function obtenerTiempoFormato() {
    const tiempo = parseInt(localStorage.getItem(STORAGE_KEYS.tiempo) || '0');
    return formatearTiempo(tiempo);
}

function calcularNotaFinal(puntajeTotal) {
    const maxPuntaje = 200;
    const nota = Math.round((puntajeTotal / maxPuntaje) * 19) + 1;
    return Math.max(1, Math.min(20, nota));
}

function guardarNotaPagina(pagina, nota) {
    const paginas = JSON.parse(localStorage.getItem(STORAGE_KEYS.paginas) || '{}');
    paginas[pagina] = nota;
    localStorage.setItem(STORAGE_KEYS.paginas, JSON.stringify(paginas));

    const puntajeTotal = Object.values(paginas).reduce((sum, value) => sum + parseInt(value || 0), 0);
    localStorage.setItem(STORAGE_KEYS.puntaje, puntajeTotal.toString());

    const actividades = Object.keys(paginas).length;
    localStorage.setItem(STORAGE_KEYS.actividades, actividades.toString());
    localStorage.setItem(STORAGE_KEYS.actividadesCompletadas, JSON.stringify(Object.keys(paginas)));

    const fechaInicio = parseInt(localStorage.getItem(STORAGE_KEYS.fechaInicio) || Date.now());
    const tiempoTranscurrido = Math.floor((new Date().getTime() - fechaInicio) / 1000);
    localStorage.setItem(STORAGE_KEYS.tiempo, tiempoTranscurrido.toString());

    console.log('💾 Nota guardada para ' + pagina + ': ' + nota + ' pts. Puntaje total: ' + puntajeTotal);
}

// FUNCIÓN PARA ENVIAR RESULTADOS
async function enviarResultados() {
    const estudiante = obtenerEstudiante();
    
    // Validar que haya estudiante registrado
    if (!estudiante.codigo || !estudiante.nombre) {
        console.error('No hay estudiante registrado');
        return false;
    }
    
    // Validar que no se haya enviado ya
    if (estudiante.resultadoEnviado) {
        console.warn('Los resultados ya fueron enviados');
        return false;
    }
    
    // Validar que haya URL de Google Apps Script
    if (API_URL === "PEGAR_AQUI_URL_DE_GOOGLE_APPS_SCRIPT") {
        console.error('Falta configurar la URL de Google Apps Script');
        alert('⚠️ Error: Sistema no configurado correctamente. Contacta al administrador.');
        return false;
    }
    
    // Obtener fecha y hora en tiempo real
    const ahora = new Date();
    const fechaHoraFormato = ahora.toLocaleString('es-PE', {
        year: 'numeric',
        month: '2-digit',
        day: '2-digit',
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit',
        hour12: false
    });
    
    // Datos a enviar
    const paginasEnvio = estudiante.paginas || {};
    const puntajeTotal = parseInt(estudiante.puntaje || '0', 10) || 0;
    const datos = {
        Fecha: fechaHoraFormato,
        fecha: fechaHoraFormato,
        Hora: ahora.toLocaleTimeString('es-PE', { hour12: false }),
        hora: ahora.toLocaleTimeString('es-PE', { hour12: false }),
        codigo: estudiante.codigo,
        Código: estudiante.codigo,
        nombre: estudiante.nombre,
        Alumno: estudiante.nombre,
        grado: estudiante.grado,
        Grado: estudiante.grado,
        puntaje: puntajeTotal,
        Puntuacion: puntajeTotal,
        puntuacion: puntajeTotal,
        ...Array.from({ length: 20 }, (_, i) => i + 1).reduce((obj, idx) => {
            const key = 'Page' + idx;
            const rawValue = paginasEnvio['page' + idx];
            const pageValue = rawValue !== undefined && rawValue !== null ? `10/${rawValue}` : '10/0';
            obj[key] = pageValue;
            obj[key.toLowerCase()] = pageValue;
            return obj;
        }, {}),
        NotaFinal: String(calcularNotaFinal(puntajeTotal)),
        Estado: 'Completado'
    };

    try {
        const puntajeTotal = parseInt(estudiante.puntaje || '0', 10) || 0;
        datos.Puntuacion = puntajeTotal;
        datos.puntuacion = puntajeTotal;

        const pageKeys = Object.keys(datos).filter(k => /^Page\d+$/.test(k));
        console.log('Enviando resultados con fecha/hora en tiempo real:', datos);
        console.log('Puntuacion enviada:', datos.Puntuacion);
        console.log('Page keys:', pageKeys);
        console.log('Page values:', pageKeys.map(k => datos[k]));
        console.log('Paginas locales en envío:', paginasEnvio);

        // Guardar payload para depuración antes del envío
        window.lastPayloadEnviado = datos;
        localStorage.setItem('ultimo_payload_enviado', JSON.stringify(datos));

        const response = await fetch(API_URL, {
            method: 'POST',
            mode: 'no-cors',
            body: JSON.stringify(datos)
        });

        // Marcar como enviado aunque la respuesta sea opaca en modo no-cors
        localStorage.setItem(STORAGE_KEYS.resultadoEnviado, 'true');

        console.log('Resultados enviados mediante fetch no-cors');
        return true;

    } catch (error) {
        console.error('Error al enviar resultados:', error);
        alert('❌ Error al enviar resultados. Por favor intenta nuevamente.');
        return false;
    }
}

// FUNCIÓN PARA VALIDAR CÓDIGO
function validarCodigo(codigo) {
    return codigo.trim() === '2026';
}

// FUNCIÓN PARA IR A PÁGINA DE INICIO
function irAlInicio() {
    window.location.href = 'index.html';
}

// FUNCIÓN PARA REINICIAR JUEGO
function reiniciarJuego() {
    limpiarDatos();
    // Limpiar estado de música
    localStorage.removeItem('musicTrackIndex');
    localStorage.removeItem('musicCurrentTime');
    localStorage.removeItem('musicPlayerStarted');
    window.location.href = 'registro.html';
}
