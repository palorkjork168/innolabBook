$files = Get-ChildItem chapters/*.typ, backmatter/*.typ, frontmatter/*.typ, components/*.typ, styles.typ

foreach ($f in $files) {
    $lines = Get-Content $f.FullName -Encoding UTF8
    for ($i = 0; $i -lt $lines.Length; $i++) {
        $l = $lines[$i]
        if ($l.Trim() -match '  +') {
            Write-Host "MULTI SPACE: $($f.Name):$($i+1): $($l.Trim())"
        }
    }
}
