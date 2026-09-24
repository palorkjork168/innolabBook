$typst = ".\typst-x86_64-pc-windows-msvc\typst.exe"
$evalExpr = 'query(text).filter(t => t.fill == rgb("114554") and t.size > 20pt).map(t => (t.text, t.location().page()))'
& $typst eval "$evalExpr" --in main.typ
