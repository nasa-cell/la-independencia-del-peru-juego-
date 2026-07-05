$files = Get-ChildItem -Filter 'page*.html' | Sort-Object { [int]($_.BaseName -replace '^page','') }
foreach ($file in $files) {
    $num = [int]($file.BaseName -replace '^page','')
    if ($num -eq 1) { $prev = 'index.html' } else { $prev = "page$($num-1).html" }
    if ($num -eq $files.Count) { $next = 'index.html' } else { $next = "page$($num+1).html" }
    $nav = @'
        <nav class="nav-paginacion">
            <a href="{prev}" class="btn-comprobar">← Anterior</a>
            <a href="index.html" class="btn-comprobar">Índice</a>
            <a href="{next}" class="btn-comprobar">Siguiente →</a>
        </nav>
'@
    $nav = $nav -replace '\{prev\}', $prev -replace '\{next\}', $next
    $content = Get-Content -Path $file.FullName -Raw
    $new = [regex]::Replace($content, '<nav[^>]*>.*?</nav>', $nav, 'Singleline')
    if ($new -ne $content) {
        Set-Content -Path $file.FullName -Value $new
        Write-Host "updated $($file.Name)"
    } else {
        Write-Host "no nav $($file.Name)"
    }
}
