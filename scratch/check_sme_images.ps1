Add-Type -AssemblyName System.Drawing

$smeDir = "assets/20SME"
$photos = @{
    "19" = "DSC00535-Edit.jpg"
    "20" = "DSC00548.jpg"
    "21" = "DSC00561.jpg"
    "22" = "DSC00582-Edit.jpg"
    "23" = "DSC00607.jpg"
    "24" = "DSC00608-Edit.jpg"
    "25" = "DSC00627.jpg"
    "26" = "DSC00628-Edit.jpg"
    "27" = "DSC00636.jpg"
    "28" = "DSC00641.jpg"
    "29" = "DSC00654.jpg"
    "30" = "DSC00697.jpg"
    "31" = "DSC00774.jpg"
    "32" = "DSCF0526-Edit.jpg"
    "33" = "DSCF0655.jpg"
    "34" = "DSCF0708-Edit.jpg"
    "35" = "DSCF0825.jpg"
    "36" = "DSCF0894.jpg"
    "37" = "DSCF0939-Edit.jpg"
    "38" = "DSCF0986.jpg"
}

for ($i = 1; $i -le 20; $i++) {
    $id = ($i + 18).ToString()
    $file = $photos[$id]
    $path = Join-Path $smeDir $file
    if (Test-Path $path) {
        $img = [System.Drawing.Image]::FromFile((Resolve-Path $path))
        $w = $img.Width
        $h = $img.Height
        $ratio = [Math]::Round($w / $h, 2)
        $img.Dispose()
        
        $type = "square"
        if ($ratio -gt 1.2) { $type = "landscape" }
        elseif ($ratio -lt 0.85) { $type = "portrait" }
        else { $type = "square/near-square" }
        
        Write-Host "SME $i (ID $id, $file): ${w}x${h}, ratio=$ratio ($type)"
    } else {
        Write-Host "SME $($i): NOT FOUND $path"
    }
}
