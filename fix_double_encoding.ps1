$root = "D:\\descargas\\la independencia"
$patterns = @([char]0x00C3, [char]0x00C2)
$enc1252 = [System.Text.Encoding]::GetEncoding(1252)
$encUtf8 = [System.Text.Encoding]::UTF8
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
    $needs = $false
    foreach($p in $patterns){ if($text.Contains($p)){ $needs = $true; break } }
    if(-not $needs){ continue }
    $bytes1252 = $enc1252.GetBytes($text)
    $fixed = $encUtf8.GetString($bytes1252)
    if($fixed -ne $text){
        Set-Content -Path $f.FullName -Value $fixed -Encoding UTF8
        Write-Output ("Fixed: " + $f.Name)
    } else {
        Write-Output ("No change: " + $f.Name)
    }
}
Write-Output "Done"