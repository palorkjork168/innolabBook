$files = Get-ChildItem chapters/*.typ, backmatter/*.typ, frontmatter/*.typ, components/*.typ, styles.typ

foreach ($f in $files) {
    $content = [System.IO.File]::ReadAllText($f.FullName, [System.Text.Encoding]::UTF8)
    $lines = $content -split "`r?`n"
    for ($i = 0; $i -lt $lines.Length; $i++) {
        $l = $lines[$i]
        # Match string literals with multiple spaces or suspicious spaces
        if ($l -match '"[^"]*  +[^"]*"') {
            Write-Host "MULTISPACE IN STRING: $($f.Name):$($i+1): $l"
        }
        if ($l -match '\[[^\]]*  +[^\]]*\]') {
            Write-Host "MULTISPACE IN BRACKET: $($f.Name):$($i+1): $l"
        }
    }
}
