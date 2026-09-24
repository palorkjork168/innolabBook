$files = Get-ChildItem -Recurse -Filter *.typ
foreach ($f in $files) {
    $content = [System.IO.File]::ReadAllText($f.FullName, [System.Text.Encoding]::UTF8)
    $lines = $content -split "`r?`n"
    for ($i = 0; $i -lt $lines.Length; $i++) {
        $line = $lines[$i]
        if ($line -match "\t") {
            Write-Host "TAB: $($f.FullName):$($i+1): $line"
        }
        if ($line -match "[\u00a0\u2000-\u200b\u202f\u3000]") {
            Write-Host "UNICODE_SPACE: $($f.FullName):$($i+1): $line"
        }
        # Check for multiple spaces inside content (not leading indentation)
        $trimmed = $line.Trim()
        if ($trimmed -match "[^\s]\s{2,}[^\s]") {
            Write-Host "MULTI_SPACE: $($f.FullName):$($i+1): $trimmed"
        }
        # Check for manual h()
        if ($line -match "#h\(") {
            Write-Host "MANUAL_H: $($f.FullName):$($i+1): $line"
        }
    }
}
