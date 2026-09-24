$typst = ".\typst-x86_64-pc-windows-msvc\typst.exe"
$evalExpr = 'query(heading).map(x => x.location().page()).sorted().last()'
& $typst eval "$evalExpr" --in main.typ
