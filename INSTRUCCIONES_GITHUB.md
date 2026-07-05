# Configuración para GitHub

## Para que el proyecto funcione después de clonar:

### 1. URL de Google Apps Script
En **registro.js**, línea donde dice:
```javascript
const API_URL = "PEGAR_AQUI_URL_DE_GOOGLE_APPS_SCRIPT";
```

Reemplázalo con tu URL real de Google Apps Script.

### 2. Archivos de Audio
Si los archivos MP3 no se descargaron, descargalos por separado o reemplázalos:
- `fondomusica1.mp3`
- `fondo musica2.mp3`
- `fondo musica3.mp3`
- `musica fondo4.mp3`

### 3. Estructura de carpetas (se crean automáticamente)
```
la independencia/
├── index.html
├── registro.html
├── testing.html
├── final.html
├── styles.css
├── registro.css
├── script.js
├── registro.js
├── final.js
├── page1.html - page20.html
├── fondomusica1.mp3
└── GUIA_GOOGLE_APPS_SCRIPT.txt
```

## Cómo subir a GitHub:

1. **Inicializar repositorio local:**
   ```powershell
   git init
   git add .
   git commit -m "Inicial commit: Hatun Aventuras Heroicas"
   ```

2. **Crear repositorio en GitHub** (vacío, sin README)

3. **Conectar y subir:**
   ```powershell
   git remote add origin https://github.com/tu-usuario/tu-repo.git
   git branch -M main
   git push -u origin main
   ```

## El proyecto funcionará porque:
✓ HTML, CSS, JavaScript funcionan en cualquier servidor
✓ localStorage funciona en navegadores locales
✓ Google Apps Script funciona desde cualquier lugar
✓ No tiene dependencias complejas

## Nota importante:
⚠️ NO hagas público el URL de Google Apps Script si tiene datos sensibles.
