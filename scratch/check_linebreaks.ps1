$files = Get-ChildItem chapters/*.typ, backmatter/*.typ, frontmatter/*.typ

foreach ($f in $files) {
    $lines = Get-Content $f.FullName -Encoding UTF8
    $shortKhmerLines = 0
    for ($i = 0; $i -lt $lines.Length; $i++) {
        $l = $lines[$i].Trim()
        # Khmer character check
        if ($l -match "^[\u1780-\u17ff]" -and $l.Length -lt 25 -and $l -notmatch "^[#=]") {
            $shortKhmerLines++
        }
    }
    Write-Host "$($f.Name): $shortKhmerLines short lines out of $($lines.Length) total lines"
}
