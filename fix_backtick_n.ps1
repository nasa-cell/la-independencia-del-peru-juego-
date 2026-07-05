$root = "D:\\descargas\\la independencia"
$files = Get-ChildItem -Path (Join-Path $root 'page*.html') -File -ErrorAction SilentlyContinue
$files += Get-Item -Path (Join-Path $root 'index.html') -ErrorAction SilentlyContinue
$files += Get-Item -Path (Join-Path $root 'final.html') -ErrorAction SilentlyContinue
foreach($f in $files){
    if(-not $f) { continue }
    $text = Get-Content -Path $f.FullName -Raw -Encoding UTF8
    if($text.Contains("`n")){
        $text = $text.Replace('`n',[Environment]::NewLine)
        Set-Content -Path $f.FullName -Value $text -Encoding UTF8
        Write-Output ("Fixed backtick in: " + $f.Name)
    }
}
Write-Output "Done"