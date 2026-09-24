$bytes = [System.IO.File]::ReadAllBytes('main.pdf')
$text = [System.Text.Encoding]::ASCII.GetString($bytes)
$matches = [regex]::Matches($text, '/Type\s*/Page[^a-zA-Z]')
Write-Host "Page count: $($matches.Count)"
