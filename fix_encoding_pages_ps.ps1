$repl = @{
    'Â«'='«';'Â»'='»';'Â¿'='¿';'Â¡'='¡';'Ã¡'='á';'Ã©'='é';'Ã­'='í';'Ã³'='ó';'Ãº'='ú';'Ã±'='ñ';'Ã‘'='Ñ';'Ã‰'='É';'Ãš'='Ú';'Ãœ'='Ü';'Ã¼'='ü';'âœ…'='✅';'ðŸŽ¯'='🎖️';'Ã­ndice'='Índice';'â€œ'='“';'â€�'='”';'â€“'='–';'â€”'='—';'â€¦'='…';'Âº'='º';'Âª'='ª'
}
$root = "D:\\descargas\\la independencia"
$files = Get-ChildItem -Path (Join-Path $root 'page*.html') -File -ErrorAction SilentlyContinue
$files += Get-Item -Path (Join-Path $root 'index.html') -ErrorAction SilentlyContinue
$files += Get-Item -Path (Join-Path $root 'final.html') -ErrorAction SilentlyContinue
foreach($f in $files){
    if(-not $f) { continue }
    try{
        $text = Get-Content -Path $f.FullName -Raw -Encoding UTF8
    } catch {
        $text = Get-Content -Path $f.FullName -Raw
    }
    $orig = $text
    foreach($k in $repl.Keys){ $text = $text.Replace($k, $repl[$k]) }
    if($text -ne $orig){ Set-Content -Path $f.FullName -Value $text -Encoding UTF8; Write-Output ("Fixed " + $f.Name) }
}
Write-Output 'Done'
