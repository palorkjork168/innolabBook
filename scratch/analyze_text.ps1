$files = Get-ChildItem -Recurse -Filter *.typ | Where-Object { $_.FullName -notmatch "scratch" }

foreach ($f in $files) {
    $content = [System.IO.File]::ReadAllText($f.FullName, [System.Text.Encoding]::UTF8)
    $lines = $content -split "`r?`n"
    
    $tabCount = 0
    $multiSpaceCount = 0
    $unicodeSpaceCount = 0
    $manualHCount = 0
    
    for ($i = 0; $i -lt $lines.Length; $i++) {
        $line = $lines[$i]
        if ($line -match "\t") { $tabCount++ }
        if ($line -match "[\u00a0\u1680\u2000-\u200b\u202f\u205f\u3000\ufeff]") { $unicodeSpaceCount++ }
        $trimmed = $line.Trim()
        if ($trimmed -match "[^\s]\s{2,}[^\s]") { $multiSpaceCount++ }
        if ($line -match "#h\(") { $manualHCount++ }
    }
    
    if ($tabCount -gt 0 -or $multiSpaceCount -gt 0 -or $unicodeSpaceCount -gt 0 -or $manualHCount -gt 0) {
        Write-Host "$($f.Name): Tabs=$tabCount, MultiSpaces=$multiSpaceCount, UnicodeSpaces=$unicodeSpaceCount, ManualH=$manualHCount"
    }
}
