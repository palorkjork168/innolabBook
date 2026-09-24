$files = Get-ChildItem chapters/*.typ, backmatter/*.typ, frontmatter/*.typ, components/*.typ, styles.typ

foreach ($f in $files) {
    $content = [System.IO.File]::ReadAllText($f.FullName, [System.Text.Encoding]::UTF8)
    for ($i = 0; $i -lt $content.Length; $i++) {
        $c = [int][char]$content[$i]
        # Check non-ascii whitespace: 0x00A0 (nbsp), 0x2000-0x200B, 0x202F, 0x3000, 0xFEFF
        if ($c -eq 0x00A0 -or ($c -ge 0x2000 -and $c -le 0x200B) -or $c -eq 0x202F -or $c -eq 0x3000 -or $c -eq 0xFEFF -or $c -eq 0x0009) {
            Write-Host "Special char 0x$($c.ToString('X4')) in $($f.Name) at char index $i"
        }
    }
}
