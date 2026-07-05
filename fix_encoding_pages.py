from pathlib import Path

replacements = {
    'Â«': '«',
    'Â»': '»',
    'Â¿': '¿',
    'Â¡': '¡',
    'Ã¡': 'á',
    'Ã©': 'é',
    'Ã­': 'í',
    'Ã³': 'ó',
    'Ãº': 'ú',
    'Ã±': 'ñ',
    'Ã‘': 'Ñ',
    'Ã‰': 'É',
    'Ãš': 'Ú',
    'Ãœ': 'Ü',
    'Ã¼': 'ü',
    'âœ…': '✅',
    'ðŸŽ¯': '🎖️',
    'Ã­ndice': 'Índice',
    'â€œ': '“',
    'â€�': '”',
    'â€“': '–',
    'â€”': '—',
    'â€¦': '…',
    'Âº': 'º',
    'Âª': 'ª',
}

paths = list(Path('.').glob('page*.html')) + [Path('index.html'), Path('final.html')]
for path in paths:
    text = path.read_text(encoding='utf-8', errors='replace')
    original = text
    for old, new in replacements.items():
        text = text.replace(old, new)
    if text != original:
        path.write_text(text, encoding='utf-8')
        print(f'Fixed {path}')
print('Done')
