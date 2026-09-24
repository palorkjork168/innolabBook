$files = Get-ChildItem chapters/*.typ, backmatter/*.typ, frontmatter/*.typ, components/*.typ, styles.typ

foreach ($f in $files) {
    $content = [System.IO.File]::ReadAllText($f.FullName, [System.Text.Encoding]::UTF8)
    $lines = $content -split "`r?`n"
    for ($i = 0; $i -lt $lines.Length; $i++) {
        $l = $lines[$i]
        if ($l -match '#section-title\(') {
            Write-Host "$($f.Name):$($i+1): $l"
        }
    }
}
