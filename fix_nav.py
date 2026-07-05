from pathlib import Path
import re
root = Path('d:/descargas/la independencia')
html_files = sorted(root.glob('page*.html'), key=lambda p: int(re.search(r'page(\d+)\.html$', p.name).group(1)))
for path in html_files:
    num = int(re.search(r'page(\d+)\.html$', path.name).group(1))
    prev_link = 'index.html' if num == 1 else f'page{num-1}.html'
    next_link = 'index.html' if num == len(html_files) else f'page{num+1}.html'
    nav_html = f'''        <nav class="nav-paginacion">
            <a href="{prev_link}" class="btn-comprobar">← Anterior</a>
            <a href="index.html" class="btn-comprobar">Índice</a>
            <a href="{next_link}" class="btn-comprobar">Siguiente →</a>
        </nav>'''
    text = path.read_text(encoding='utf-8')
    new_text, count = re.subn(r'<nav[^>]*>.*?</nav>', nav_html, text, flags=re.S)
    if count == 0:
        print('no nav', path.name)
    else:
        path.write_text(new_text, encoding='utf-8')
        print('updated', path.name)
