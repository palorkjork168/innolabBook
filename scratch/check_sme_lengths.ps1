$content = [System.IO.File]::ReadAllText("chapters/chapter-06.typ", [System.Text.Encoding]::UTF8)
$cases = $content -split '#case-study-full\('

for ($i = 1; $i -lt $cases.Length; $i++) {
    $c = $cases[$i]
    $lines = $c -split "`r?`n"
    $charCount = $c.Length
    $lineCount = $lines.Length
    Write-Host "Case $i : $lineCount lines, $charCount chars"
}
