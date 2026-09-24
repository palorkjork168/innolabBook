#set page(width: 240mm, height: 100mm, fill: rgb("#114554"), margin: 10mm)

// Test Option A: Crisp white institutional badge/card
#block(
  fill: rgb("#FFFFFF"),
  radius: 6pt,
  inset: (x: 12pt, y: 8pt),
  stroke: 0.5pt + rgb("#DDE8E2"),
)[
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 8mm,
    align: horizon + center,
    image("/assets/logos/innolab.webp", height: 16mm, fit: "contain"),
    image("/assets/logos/asip.webp", height: 16mm, fit: "contain"),
    image("/assets/logos/SDF-logo.png", height: 16mm, fit: "contain"),
    image("/assets/logos/ke-logo.webp", height: 16mm, fit: "contain"),
  )
]

#v(8mm)

// Test Option B: Crisp white individual badges/pills
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 6mm,
  ..("innolab", "asip", "sdf", "ke").map(name => {
    let file = if name == "sdf" { "SDF-logo.png" } else if name == "ke" { "ke-logo.webp" } else { name + ".webp" }
    block(
      fill: rgb("#FFFFFF"),
      radius: 4pt,
      width: 100%,
      height: 20mm,
      align(center + horizon)[
        #image("/assets/logos/" + file, height: 12mm, fit: "contain")
      ]
    )
  })
)
