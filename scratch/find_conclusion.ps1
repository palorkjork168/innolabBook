$pdf = [System.IO.File]::ReadAllBytes('main.pdf')
$str = [System.Text.Encoding]::UTF8.GetString($pdf)
# search for the text in PDF
Write-Host "Searching..."
