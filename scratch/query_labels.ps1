$typst = ".\typst-x86_64-pc-windows-msvc\typst.exe"
$out = & $typst query --root . main.typ "<ch-06>"
Write-Output $out
$outAll = & $typst query --root . main.typ "heading"
Write-Output "Done query"
