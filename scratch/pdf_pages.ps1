$bytes = [System.IO.File]::ReadAllBytes("test_compile.pdf")
$str = [System.Text.Encoding]::ASCII.GetString($bytes)
$matches = [regex]::Matches($str, "/Type\s*/Page[^s]")
Write-Host "Page count: $($matches.Count)"
