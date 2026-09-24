// ============================================================
// INNOLAB KAMPONG THOM
// REPORT DESIGN SYSTEM — VERSION 1
// ============================================================


// ------------------------------------------------------------
// COLORS
// ------------------------------------------------------------

#let colors = (
  primary: rgb("#114554"),
  sage: rgb("#DDE8E2"),
  sand: rgb("#D8B86C"),

  paper: rgb("#F7F7F3"),
  white: rgb("#FFFFFF"),

  text: rgb("#202627"),
  gray: rgb("#737B7C"),
  light-gray: rgb("#E7E9E7"),
  line: rgb("#D9DEDC"),
)


// ------------------------------------------------------------
// FONTS
// ------------------------------------------------------------

#import "components/photos.typ": report-photo, photos
#import "components/patterns.typ": *
#import "components/editorial.typ": *

#let fonts = (
  main: ("Kantumruy Pro", "Arial"),
  display: ("Barlow", "Kantumruy Pro", "Arial"),
)


// ------------------------------------------------------------
// TYPOGRAPHY
// ------------------------------------------------------------

#let body-size = 10.5pt


// ------------------------------------------------------------
// DEFAULT REPORT PAGE
// ------------------------------------------------------------

#let report-page(body) = {
  set page(
    paper: "a4",

    margin: (
      top: 23mm,
      bottom: 20mm,
      left: 22mm,
      right: 18mm,
    ),

    fill: colors.white,

    header: context {
      if counter(page).get().first() > 1 {
        block(
          width: 100%,
        )[
          #grid(
            columns: (1fr, 1fr),

            align(left)[
              #text(
                font: fonts.display,
                size: 7.5pt,
                weight: 600,
                fill: colors.gray,
              )[
                INNOLAB KAMPONG THOM
              ]
            ],

            align(right)[
              #text(
                font: fonts.main,
                size: 7.5pt,
                fill: colors.gray,
              )[
                របាយការណ៍គម្រោង
              ]
            ],
          )

          #v(2mm)

          #line(
            length: 100%,
            stroke: (
              paint: colors.line,
              thickness: 0.6pt,
            ),
          )
        ]
      }
    },

    footer: context {
      if counter(page).get().first() > 1 {
        block(
          width: 100%,
        )[
          #line(
            length: 100%,
            stroke: (
              paint: colors.line,
              thickness: 0.6pt,
            ),
          )

          #v(2mm)

          #grid(
            columns: (1fr, auto),

            align(left)[
              #text(
                font: fonts.display,
                size: 8pt,
                weight: 600,
                fill: colors.gray,
              )[
                INNOLAB KAMPONG THOM
              ]
            ],

            align(right)[
              #text(
                font: fonts.display,
                size: 9pt,
                weight: 700,
                fill: colors.primary,
              )[
                #counter(page).display()
              ]
            ],
          )
        ]
      }
    },
  )

  set text(
    font: fonts.main,
    size: body-size,
    fill: colors.text,
    lang: "km",
  )

  set par(
    leading: 7pt,
    justify: false,
  )

  body
}


// ============================================================
// FRONT MATTER
// ============================================================


// ------------------------------------------------------------
// LOGO ASSETS & HELPERS
// ------------------------------------------------------------

#let logo-assets = (
  "innolab": "/assets/logos/innolab.webp",
  "asip": "/assets/logos/asip.webp",
  "sdf": "/assets/logos/SDF-logo.png",
  "ke": "/assets/logos/ke-logo.webp",
)

#let resolve-logo(name-or-path) = {
  if type(name-or-path) != str { return none }
  let k = lower(name-or-path).trim()
  if k in ("innolab", "innolab logo", "innolab kampong thom") or k.contains("innolab") {
    return logo-assets.at("innolab")
  } else if k in ("asip", "asip logo", "angkor social innovation park") or k.contains("asip") {
    return logo-assets.at("asip")
  } else if k in ("sdf", "sdf logo", "skills development fund") or k.contains("sdf") {
    return logo-assets.at("sdf")
  } else if k in ("ke", "ke logo", "khmer enterprise") or k.contains("ke") {
    return logo-assets.at("ke")
  } else if (
    name-or-path.starts-with("/")
      or name-or-path.starts-with(".")
      or name-or-path.ends-with(".png")
      or name-or-path.ends-with(".webp")
      or name-or-path.ends-with(".svg")
  ) {
    return name-or-path
  }
  return none
}

// Normalized visual heights for logos to balance differing aspect ratios
#let resolve-logo-height(name-or-path, default: 13mm) = {
  if type(name-or-path) != str { return default }
  let k = lower(name-or-path).trim()
  if k.contains("innolab") {
    return 15mm
  } else if k.contains("asip") {
    return 16mm
  } else if k.contains("sdf") {
    return 12mm
  } else if k.contains("ke") {
    return 11mm
  }
  return default
}

#let real-logo(
  name-or-path,
  height: auto,
  fit: "contain",
  alt: none,
) = {
  let path = resolve-logo(name-or-path)
  let h = if height != auto { height } else { resolve-logo-height(name-or-path) }
  if path != none {
    image(path, height: h, fit: fit, alt: alt)
  }
}

#let partner-logo(
  name-or-path,
  label: none,
  height: auto,
  cell-height: 22mm,
  width: 100%,
) = {
  let path = resolve-logo(name-or-path)
  if path != none {
    let h = if height != auto { height } else { resolve-logo-height(name-or-path) }
    block(
      width: width,
      height: cell-height,
    )[
      #align(center + horizon)[
        #image(path, height: h, fit: "contain")
      ]
    ]
  } else {
    // Missing logo placeholder (preserves clean institutional box)
    let display-label = if label != none { label } else { name-or-path }
    block(
      width: width,
      height: cell-height,
      stroke: (
        paint: colors.line,
        thickness: 0.7pt,
      ),
      radius: 1.5mm,
      fill: colors.white,
    )[
      #align(center + horizon)[
        #text(
          font: fonts.display,
          size: 8pt,
          weight: 600,
          fill: colors.gray,
        )[
          #display-label
        ]
      ]
    ]
  }
}

// Backward-compatible logo-placeholder that automatically uses real logos when available
#let logo-placeholder(
  label: "LOGO",
  width: 28mm,
  height: 18mm,
) = {
  let path = resolve-logo(label)
  if path != none {
    let is-innolab = lower(label).contains("innolab")
    if is-innolab {
      let h = if height != auto and height != 100% and height < 18mm { height } else { 15mm }
      image(path, height: h, fit: "contain")
    } else {
      let h = resolve-logo-height(label)
      let ch = if height != auto and height != 100% { height } else { 22mm }
      block(
        width: width,
        height: ch,
      )[
        #align(center + horizon)[
          #image(path, height: h, fit: "contain")
        ]
      ]
    }
  } else {
    block(
      width: width,
      height: height,
      stroke: (
        paint: colors.line,
        thickness: 0.7pt,
      ),
      radius: 1.5mm,
      fill: colors.white,
    )[
      #align(center + horizon)[
        #text(
          font: fonts.display,
          size: 8pt,
          weight: 600,
          fill: colors.gray,
        )[
          #label
        ]
      ]
    ]
  }
}


// ------------------------------------------------------------
// COVER & WRAPAROUND SYSTEM
// ------------------------------------------------------------

#let cover-front-content(show-bg: true) = {
  block(
    width: 210mm,
    height: 297mm,
    clip: true,
  )[
    #if show-bg {
      place(top + left, dx: -222mm)[
        #image("/assets/innovation-path.svg", width: 432mm, height: 297mm)
      ]
    }

    #block(
      width: 210mm,
      height: 297mm,
      inset: (top: 26mm, bottom: 24mm, left: 24mm, right: 24mm),
    )[
      #grid(
        rows: (auto, 1fr, auto),

        // Top identity & logo area
        align(top)[
          #grid(
            columns: (auto, 1fr, auto),
            align: horizon,

            // Logo in pristine white pill badge
            block(
              fill: colors.white,
              radius: 5pt,
              inset: (x: 10pt, y: 5pt),
              stroke: 0.5pt + colors.sage,
            )[
              #image(resolve-logo("innolab"), height: 13mm, fit: "contain")
            ],

            none,

            // Season / Year Badge
            block(
              stroke: 0.8pt + colors.sand,
              radius: 3pt,
              inset: (x: 8pt, y: 4pt),
            )[
              #text(
                font: fonts.display,
                size: 8.5pt,
                weight: 700,
                fill: colors.sand,
                tracking: 1.2pt,
              )[
                SEASON 1 / 2025–2026
              ]
            ],
          )
        ],

        // Title & Hero Typography Area
        align(top + left)[
          #v(14mm)

          #text(
            font: fonts.display,
            size: 10pt,
            weight: 600,
            fill: colors.sand,
            tracking: 2pt,
          )[
            PROJECT & ACHIEVEMENT REPORT
          ]

          #v(4mm)

          #block[
            #set par(leading: 12pt)
            #text(
              font: fonts.main,
              size: 32pt,
              weight: 700,
              fill: colors.white,
            )[
              មន្ទីរពិសោធន៍\
              នវានុវត្តន៍កំពង់ធំ
            ]
          ]

          #v(3mm)

          #text(
            font: fonts.display,
            size: 20pt,
            weight: 700,
            fill: colors.sage,
            tracking: 1.5pt,
          )[
            INNOLAB KAMPONG THOM
          ]

          #v(4mm)

          #line(
            length: 30mm,
            stroke: 1.5pt + colors.sand,
          )

          #v(4mm)

          #text(
            font: fonts.main,
            size: 13pt,
            weight: 600,
            fill: colors.white,
          )[
            ផ្សារភ្ជាប់សហគ្រាស និងនវានុវត្តន៍ភាព
          ]

          #v(2mm)

          #text(
            font: fonts.display,
            size: 9.5pt,
            weight: 500,
            fill: colors.sage,
            tracking: 0.8pt,
          )[
            CONNECT SMEs, CONNECT INNOVATIONS
          ]
        ],

        // Bottom Supporting Institutional / Location Area
        align(bottom + left)[
          #line(
            length: 100%,
            stroke: 0.5pt + rgb(colors.sage.to-hex() + "40"),
          )

          #v(3mm)

          #grid(
            columns: (1fr, auto),
            align: horizon,

            text(
              font: fonts.main,
              size: 8.5pt,
              fill: colors.white,
              weight: 600,
            )[
              ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)
            ],

            text(
              font: fonts.display,
              size: 8pt,
              fill: colors.sand,
              weight: 600,
              tracking: 1pt,
            )[
              KAMPONG THOM · CAMBODIA
            ],
          )

          #v(1mm)

          #text(
            font: fonts.display,
            size: 7.5pt,
            fill: colors.sage,
            tracking: 0.5pt,
          )[
            ANGKOR SOCIAL INNOVATION PARK · PROJECT REPORT
          ]
        ],
      )
    ]
  ]
}

#let cover-back-content(show-bg: true) = {
  block(
    width: 210mm,
    height: 297mm,
    clip: true,
  )[
    #if show-bg {
      place(top + left, dx: 0mm)[
        #image("/assets/innovation-path.svg", width: 432mm, height: 297mm)
      ]
    }

    #block(
      width: 210mm,
      height: 297mm,
      inset: (top: 28mm, bottom: 24mm, left: 24mm, right: 24mm),
    )[
      #grid(
        rows: (auto, 1fr, auto),

        // Top identity line
        align(top + left)[
          #text(
            font: fonts.display,
            size: 9pt,
            weight: 600,
            fill: colors.sand,
            tracking: 1.5pt,
          )[
            INNOLAB KAMPONG THOM
          ]
          #v(1mm)
          #text(
            font: fonts.main,
            size: 8.5pt,
            fill: colors.sage,
          )[
            របាយការណ៍បូកសរុបលទ្ធផលគម្រោង
          ]
        ],

        // Middle Summary Block
        align(horizon + left)[
          #text(
            font: fonts.main,
            size: 20pt,
            weight: 700,
            fill: colors.white,
          )[
            ផ្សារភ្ជាប់សហគ្រាស\ និងនវានុវត្តន៍ភាព
          ]

          #v(3mm)

          #text(
            font: fonts.display,
            size: 11pt,
            weight: 600,
            fill: colors.sand,
            tracking: 1pt,
          )[
            CONNECT SMEs, CONNECT INNOVATIONS
          ]

          #v(6mm)

          #line(
            length: 30mm,
            stroke: 1.2pt + colors.sand,
          )

          #v(6mm)

          #block(width: 155mm)[
            #set par(leading: 6.8pt)
            #text(
              font: fonts.main,
              size: 9.5pt,
              fill: colors.sage,
            )[
              មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (InnoLab Kampong Thom) ត្រូវបានបង្កើតឡើងក្នុងគោលបំណងពង្រឹង និងលើកកម្ពស់សមត្ថភាពសហគ្រាសធុនតូច និងមធ្យម (SMEs) តាមរយៈការធ្វើតេស្តសាកល្បងគំនិតច្នៃប្រឌិត ការបណ្តុះបណ្តាលបច្ចេកវិទ្យា និងការតភ្ជាប់បណ្តាញធុរកិច្ច ដើម្បីជំរុញកំណើនសេដ្ឋកិច្ចប្រកបដោយចីរភាពក្នុងខេត្តកំពង់ធំ។
            ]
          ]
        ],

        // Bottom Institutional & Logos Area
        align(bottom + left)[
          #text(
            font: fonts.main,
            size: 8.5pt,
            fill: colors.sage,
          )[
            អនុវត្ត និងគាំទ្រដោយ៖
          ]

          #v(3mm)

          // Clean white card for official logos
          #block(
            width: 100%,
            fill: colors.white,
            radius: 4pt,
            inset: (x: 10mm, y: 4.5mm),
            stroke: 0.5pt + colors.sage,
          )[
            #grid(
              columns: (1fr, 1fr, 1fr),
              gutter: 6mm,
              align: horizon + center,
              image(resolve-logo("asip"), height: 13mm, fit: "contain"),
              image(resolve-logo("sdf"), height: 11mm, fit: "contain"),
              image(resolve-logo("ke"), height: 10mm, fit: "contain"),
            )
          ]

          #v(4mm)

          #grid(
            columns: (1fr, auto),
            align: horizon,
            text(
              font: fonts.display,
              size: 7.5pt,
              fill: colors.sage,
              weight: 500,
              tracking: 0.8pt,
            )[
              ANGKOR SOCIAL INNOVATION PARK · SDF · KHMER ENTERPRISE
            ],
            text(
              font: fonts.display,
              size: 7.5pt,
              fill: colors.sand,
              weight: 600,
              tracking: 1pt,
            )[
              KAMPONG THOM · CAMBODIA
            ],
          )
        ],
      )
    ]
  ]
}

#let cover-spine-content(spine-width: 12mm) = {
  block(
    width: spine-width,
    height: 297mm,
    fill: colors.primary,
    inset: (top: 20mm, bottom: 20mm),
  )[
    #align(center + horizon)[
      #rotate(90deg)[
        #block(width: 250mm)[
          #grid(
            columns: (auto, 1fr, auto),
            align: horizon,
            gutter: 4mm,

            text(
              font: fonts.display,
              size: 8pt,
              weight: 700,
              fill: colors.white,
              tracking: 1pt,
            )[
              INNOLAB KAMPONG THOM
            ],

            align(center)[
              #text(
                font: fonts.main,
                size: 7.5pt,
                weight: 600,
                fill: colors.sage,
              )[
                របាយការណ៍គម្រោង និងសមិទ្ធផល
              ]
            ],

            text(
              font: fonts.display,
              size: 8pt,
              weight: 600,
              fill: colors.sand,
              tracking: 0.8pt,
            )[
              SEASON 1 · 2025–2026
            ],
          )
        ]
      ]
    ]
  ]
}

#let cover-page() = {
  page(
    paper: "a4",
    margin: 0mm,
    fill: colors.primary,
    header: none,
    footer: none,
  )[
    #cover-front-content(show-bg: true)
  ]
}

#let back-cover-page() = {
  page(
    paper: "a4",
    margin: 0mm,
    fill: colors.primary,
    header: none,
    footer: none,
  )[
    #cover-back-content(show-bg: true)
  ]
}

#let cover-spread(spine-width: 12mm) = {
  let spread-width = 210mm * 2 + spine-width
  page(
    width: spread-width,
    height: 297mm,
    margin: 0mm,
    fill: colors.primary,
    header: none,
    footer: none,
  )[
    #place(top + left)[
      #image("/assets/innovation-path.svg", width: spread-width, height: 297mm, fit: "cover")
    ]

    #grid(
      columns: (210mm, spine-width, 210mm),
      rows: 297mm,
      cover-back-content(show-bg: false),
      cover-spine-content(spine-width: spine-width),
      cover-front-content(show-bg: false),
    )
  ]
}


// ------------------------------------------------------------
// TITLE PAGE
// ------------------------------------------------------------

#let title-page() = {
  page(
    paper: "a4",

    margin: (
      top: 28mm,
      bottom: 24mm,
      left: 24mm,
      right: 24mm,
    ),

    fill: colors.white,
    header: none,
    footer: none,
  )[
    #real-logo("innolab", height: 14mm)

    #v(30mm)

    #block[
      #set par(leading: 11pt)
      #text(
        font: fonts.main,
        size: 29pt,
        weight: 700,
        fill: colors.primary,
      )[
        មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ
      ]
    ]

    #v(3mm)

    #text(
      font: fonts.display,
      size: 20pt,
      weight: 600,
      fill: colors.primary,
    )[
      INNOLAB KAMPONG THOM
    ]

    #v(12mm)

    #line(
      length: 28mm,
      stroke: (
        paint: colors.sand,
        thickness: 1.2pt,
      ),
    )

    #v(8mm)

    #text(
      font: fonts.main,
      size: 13pt,
      weight: 600,
      fill: colors.text,
    )[
      របាយការណ៍គម្រោង និងសមិទ្ធផល
      រដូវកាលទី១
    ]

    #v(3mm)

    #text(
      font: fonts.display,
      size: 11pt,
      fill: colors.gray,
    )[
      SEASON 1 / 2025–2026
    ]

    #v(35mm)

    #text(
      font: fonts.main,
      size: 9pt,
      fill: colors.gray,
    )[
      រៀបចំដោយ
    ]

    #v(2mm)

    #text(
      font: fonts.main,
      size: 11pt,
      weight: 600,
      fill: colors.primary,
    )[
      ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ
    ]

    #text(
      font: fonts.display,
      size: 9pt,
      fill: colors.gray,
    )[
      Angkor Social Innovation Park (ASIP)
    ]

    #v(18mm)

    #line(
      length: 100%,
      stroke: (
        paint: colors.line,
        thickness: 0.6pt,
      ),
    )

    #v(5mm)

    #text(
      font: fonts.main,
      size: 8pt,
      fill: colors.gray,
    )[
      ខេត្តកំពង់ធំ · ព្រះរាជាណាចក្រកម្ពុជា
    ]
  ]
}


// ------------------------------------------------------------
// PARTNER / CREDITS PAGE
// ------------------------------------------------------------

#let credits-page() = {
  page(
    paper: "a4",
    margin: 0mm,
    fill: colors.paper,
    header: none,
    footer: none,
  )[
    #grid(
      columns: (74mm, 136mm),
      rows: (297mm),
      // Left Column: Editorial Photo Panel
      block(
        width: 74mm,
        height: 297mm,
        clip: true,
      )[
        #image("/assets/photos/02.jpg", width: 74mm, height: 297mm, fit: "cover")

        // Subtle dark gradient overlay at bottom
        #place(bottom + left)[
          #block(
            width: 74mm,
            height: 110mm,
            fill: gradient.linear(
              colors.primary.transparentize(100%),
              colors.primary.transparentize(10%),
              angle: 90deg,
            ),
          )
        ]

        // Inset vertical tag and provincial label
        #place(top + left, dx: 6mm, dy: 24mm)[
          #block(
            fill: colors.primary.transparentize(15%),
            radius: 2pt,
            inset: (x: 6pt, y: 3.5pt),
            stroke: 0.5pt + colors.sand,
          )[
            #text(
              font: fonts.display,
              size: 8pt,
              weight: 700,
              fill: colors.sand,
              tracking: 1.2pt,
            )[
              FIELD REPORT · 2025
            ]
          ]
        ]

        #place(bottom + left, dx: 8mm, dy: -18mm)[
          #text(
            font: fonts.display,
            size: 9pt,
            weight: 700,
            fill: colors.white,
            tracking: 1.5pt,
          )[
            KAMPONG THOM PROVINCE
          ]
          #v(1mm)
          #text(
            font: fonts.main,
            size: 8pt,
            fill: colors.sage,
          )[
            ប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍
          ]
        ]
      ],

      // Right Column: Institutional Information & Acknowledgements
      block(
        width: 136mm,
        height: 297mm,
        inset: (top: 24mm, bottom: 20mm, left: 14mm, right: 20mm),
      )[
        #text(
          font: fonts.display,
          size: 8.5pt,
          weight: 700,
          fill: colors.sand,
          tracking: 1.8pt,
        )[
          PROJECT INFORMATION & CREDITS
        ]

        #v(2.5mm)

        #text(
          font: fonts.main,
          size: 24pt,
          weight: 700,
          fill: colors.primary,
        )[
          ព័ត៌មានគម្រោង
        ]

        #v(1mm)

        #line(
          length: 28mm,
          stroke: 2pt + colors.sand,
        )

        #v(6mm)

        // Implementing Entity Block
        #text(
          font: fonts.display,
          size: 8pt,
          weight: 700,
          fill: colors.gray,
          tracking: 1pt,
        )[
          IMPLEMENTING AGENCY · អង្គភាពអនុវត្ត
        ]

        #v(2.5mm)

        #block(
          width: 100%,
          fill: colors.white,
          radius: 3pt,
          inset: (x: 5mm, y: 3.5mm),
          stroke: 0.5pt + colors.line,
        )[
          #grid(
            columns: (auto, 1fr),
            gutter: 4mm,
            align: horizon,
            image(resolve-logo("asip"), height: 13mm, fit: "contain"),
            [
              #text(font: fonts.main, size: 9.5pt, weight: 700, fill: colors.text)[
                ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ
              ]
              #v(0.5mm)
              #text(font: fonts.display, size: 7.5pt, fill: colors.gray, tracking: 0.5pt)[
                Angkor Social Innovation Park (ASIP)
              ]
            ],
          )
        ]

        #v(5mm)

        // Supporting Partners Block
        #text(
          font: fonts.display,
          size: 8pt,
          weight: 700,
          fill: colors.gray,
          tracking: 1pt,
        )[
          DEVELOPMENT & STRATEGIC PARTNERS · ដៃគូគាំទ្រ
        ]

        #v(2.5mm)

        #grid(
          columns: (1fr, 1fr),
          gutter: 4mm,
          block(
            fill: colors.white,
            radius: 3pt,
            inset: (x: 4mm, y: 3.5mm),
            stroke: 0.5pt + colors.line,
          )[
            #align(center + horizon)[
              #image(resolve-logo("sdf"), height: 11mm, fit: "contain")
            ]
          ],
          block(
            fill: colors.white,
            radius: 3pt,
            inset: (x: 4mm, y: 3.5mm),
            stroke: 0.5pt + colors.line,
          )[
            #align(center + horizon)[
              #image(resolve-logo("ke"), height: 10mm, fit: "contain")
            ]
          ],
        )

        #v(6mm)

        // Metadata 2x2 Grid
        #block(
          width: 100%,
          fill: colors.white,
          radius: 3pt,
          inset: (x: 5mm, y: 4.5mm),
          stroke: 0.6pt + colors.line,
        )[
          #grid(
            columns: (1fr, 1fr),
            row-gutter: 4mm,
            column-gutter: 4mm,
            [
              #text(font: fonts.display, size: 7.5pt, weight: 600, fill: colors.gray, tracking: 0.8pt)[PROJECT NAME]
              #v(0.8mm)
              #text(font: fonts.main, size: 9pt, weight: 700, fill: colors.primary)[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ]
            ],
            [
              #text(font: fonts.display, size: 7.5pt, weight: 600, fill: colors.gray, tracking: 0.8pt)[SEASON]
              #v(0.8mm)
              #text(font: fonts.main, size: 9pt, weight: 700, fill: colors.primary)[រដូវកាលទី១ (Season 1)]
            ],
            [
              #text(font: fonts.display, size: 7.5pt, weight: 600, fill: colors.gray, tracking: 0.8pt)[LOCATION]
              #v(0.8mm)
              #text(font: fonts.main, size: 9pt, weight: 700, fill: colors.text)[ខេត្តកំពង់ធំ (Kampong Thom)]
            ],
            [
              #text(font: fonts.display, size: 7.5pt, weight: 600, fill: colors.gray, tracking: 0.8pt)[TIMEFRAME]
              #v(0.8mm)
              #text(font: fonts.main, size: 9pt, weight: 700, fill: colors.text)[២០២៥–២០២៦]
            ],
          )
        ]

        #v(5mm)

        // Acknowledgement / Quote Card
        #quote-card(
          [គម្រោង InnoLab Kampong Thom សូមថ្លែងអំណរគុណយ៉ាងជ្រាលជ្រៅចំពោះស្ថាប័នដៃគូ រដ្ឋបាលខេត្តកំពង់ធំ គ្រូបណ្តុះបណ្តាល អ្នកប្រឹក្សាយោបល់ និងសហគ្រាសធុនតូច និងមធ្យម (SMEs) ទាំងអស់ ដែលបានចូលរួមចំណែកយ៉ាងសកម្មក្នុងការកសាងប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍ក្នុងមូលដ្ឋាន។],
          author: [InnoLab Kampong Thom Team · ASIP],
          tag: [ACKNOWLEDGEMENT · ការថ្លែងអំណរគុណ],
        )
      ],
    )
  ]
}



// ============================================================
// TABLE OF CONTENTS
// ============================================================


// ------------------------------------------------------------
// TOC ENTRY
// ------------------------------------------------------------

#let toc-entry(
  number,
  title,
  page,
  english: none,
) = {
  grid(
    columns: (17mm, 1fr, auto),
    gutter: 4mm,

    text(
      font: fonts.display,
      size: 18pt,
      weight: 700,
      fill: colors.primary,
    )[
      #number
    ],

    [
      #text(
        font: fonts.main,
        size: 10.5pt,
        weight: 600,
        fill: colors.text,
      )[
        #title
      ]

      #if english != none {
        v(1mm)

        text(
          font: fonts.display,
          size: 8pt,
          weight: 500,
          fill: colors.gray,
        )[
          #english
        ]
      }
    ],

    text(
      font: fonts.display,
      size: 11pt,
      weight: 600,
      fill: colors.primary,
    )[
      #page
    ],
  )

  v(5mm)

  line(
    length: 100%,
    stroke: (
      paint: colors.light-gray,
      thickness: 0.5pt,
    ),
  )

  v(5mm)
}


// ------------------------------------------------------------
// TOC PAGE
// ------------------------------------------------------------

#let toc-page() = {
  page(
    paper: "a4",

    margin: (
      top: 25mm,
      bottom: 22mm,
      left: 22mm,
      right: 18mm,
    ),

    fill: colors.white,
    header: none,
    footer: none,
  )[
    #text(
      font: fonts.display,
      size: 11pt,
      weight: 600,
      fill: colors.primary,
    )[
      CONTENTS
    ]

    #v(3mm)

    #text(
      font: fonts.main,
      size: 27pt,
      weight: 700,
      fill: colors.primary,
    )[
      មាតិកា
    ]

    #v(12mm)

    #toc-entry(
      "01",
      "ទិដ្ឋភាពទូទៅនៃគម្រោង",
      "07",
      english: "PROJECT OVERVIEW",
    )

    #toc-entry(
      "02",
      "បរិបទ មូលហេតុ និងបញ្ហាប្រឈម",
      "13",
      english: "CONTEXT, RATIONALE & CHALLENGES",
    )

    #toc-entry(
      "03",
      "ដំណើរការ និងការអនុវត្តគម្រោង",
      "21",
      english: "PROGRAM JOURNEY & IMPLEMENTATION",
    )

    #toc-entry(
      "04",
      "ការបណ្តុះបណ្តាល ការណែនាំ និងការចូលរួម",
      "31",
      english: "TRAINING, MENTORING & ENGAGEMENT",
    )

    #toc-entry(
      "05",
      "លទ្ធផល និងផលប៉ះពាល់",
      "43",
      english: "RESULTS & IMPACT",
    )

    #toc-entry(
      "06",
      "ករណីសិក្សាសហគ្រាស",
      "55",
      english: "SME CASE STUDIES",
    )

    #toc-entry(
      "07",
      "ការឡើងធ្វើបទបង្ហាញ បញ្ហាប្រឈម និងមេរៀន",
      "79",
      english: "FINAL PITCH, CHALLENGES & LESSONS",
    )

    #toc-entry(
      "08",
      "ទិសដៅអនាគត និងអនុសាសន៍",
      "89",
      english: "FUTURE DIRECTION & RECOMMENDATIONS",
    )

    #v(5mm)

    #text(
      font: fonts.main,
      size: 8pt,
      fill: colors.gray,
    )[
      *ចំណាំ:* លេខទំព័រខាងលើជាបណ្ដោះអាសន្ន
      ហើយនឹងត្រូវធ្វើបច្ចុប្បន្នភាព
      នៅពេលបញ្ចប់ការរៀបចំមាតិកាទាំងមូល។
    ]
  ]
}


// ============================================================
// CHAPTER SYSTEM
// ============================================================


// ------------------------------------------------------------
// CHAPTER OPENER
// ------------------------------------------------------------

#let chapter-title(
  number,
  title,
  english: none,
  intro: none,
  photo: auto,
  caption: auto,
  focus: auto,
  highlights: none,
  variant: auto, // "lower-left" | "lower-right" | "center" | "top-left" | auto
) = {
  let num-str = if type(number) == int {
    if number < 10 { "0" + str(number) } else { str(number) }
  } else {
    str(number)
  }

  // Resolve layout variation across chapters 01–08
  let layout-var = if variant != auto {
    variant
  } else if num-str in ("01", "05") {
    "lower-left"
  } else if num-str in ("02", "06") {
    "lower-right"
  } else if num-str in ("03", "07") {
    "center"
  } else {
    "top-left"
  }

  // Left Opener Dominant Photo Assignment
  let default-left-photo = if num-str == "01" {
    "/assets/photos/01.jpg"
  } else if num-str == "02" {
    "/assets/photos/03.jpg"
  } else if num-str == "03" {
    "/assets/photos/07.jpg"
  } else if num-str == "04" {
    "/assets/photos/02.jpg"
  } else if num-str == "05" {
    "/assets/photos/04.jpg"
  } else if num-str == "06" {
    "/assets/20SME/DSC00561.jpg"
  } else if num-str == "07" {
    "/assets/photos/40.jpg"
  } else {
    "/assets/photos/18.jpg"
  }

  let actual-left-photo = if photo != auto and photo != none {
    if type(photo) == str and photo.starts-with("../") { "/" + photo.slice(3) } else { photo }
  } else {
    default-left-photo
  }

  // Right Page Connected Companion Photo Assignment
  let default-right-photo = if num-str == "01" {
    "/assets/photos/02.jpg"
  } else if num-str == "02" {
    "/assets/photos/09.jpg"
  } else if num-str == "03" {
    "/assets/photos/15.jpg"
  } else if num-str == "04" {
    "/assets/photos/16.jpg"
  } else if num-str == "05" {
    "/assets/photos/12.jpg"
  } else if num-str == "06" {
    "/assets/20SME/DSCF0825.jpg"
  } else if num-str == "07" {
    "/assets/photos/39.jpg"
  } else {
    "/assets/photos/10.jpg"
  }

  let default-caption = if num-str == "01" {
    "រូបភាព៖ សកម្មភាពគម្រោង InnoLab Kampong Thom រដូវកាលទី១"
  } else if num-str == "02" {
    "រូបភាព៖ កិច្ចពិភាក្សា និងការកំណត់បញ្ហាប្រឈមរបស់សហគ្រាសក្នុងមូលដ្ឋាន"
  } else if num-str == "03" {
    "រូបភាព៖ ការចុះអនុវត្ត និងដំណើរការកម្មវិធី InnoLab ជាក់ស្តែង"
  } else if num-str == "04" {
    "រូបភាព៖ សកម្មភាពបណ្តុះបណ្តាល ការណែនាំ និងការកសាងសមត្ថភាពសហគ្រាស"
  } else if num-str == "05" {
    "រូបភាព៖ លទ្ធផលជាក់ស្តែងនៃការកែលម្អផលិតផល និងស្តង់ដារសហគ្រាស"
  } else if num-str == "06" {
    "រូបភាព៖ សហគ្រាសធុនតូច និងមធ្យមទាំង ២០ ក្នុងខេត្តកំពង់ធំ"
  } else if num-str == "07" {
    "រូបភាព៖ ទិវា Final Pitching Day និងការប្រកាសជ័យលាភីសហគ្រាស"
  } else {
    "រូបភាព៖ ទិសដៅបន្ត និងការកសាងប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍"
  }
  let actual-caption = if caption == auto { default-caption } else { caption }

  let default-focus = if num-str == "01" {
    "ការស្វែងយល់ពីបរិបទគម្រោង ចក្ខុវិស័យ និងគោលបំណងយុទ្ធសាស្ត្រនៃការបង្កើត InnoLab"
  } else if num-str == "02" {
    "ការវិភាគលើបញ្ហាប្រឈមជាប្រព័ន្ធ ឱកាសទីផ្សារ និងតម្រូវការគាំទ្រសហគ្រាសក្នុងមូលដ្ឋាន"
  } else if num-str == "03" {
    "ដំណើរការអនុវត្តជាជំហានៗ ចាប់ពីការជ្រើសរើស ការបណ្តុះបណ្តាល រហូតដល់ការតាមដាន"
  } else if num-str == "04" {
    "វិធីសាស្ត្របណ្តុះបណ្តាល ការណែនាំផ្ទាល់ និងការកសាងសមត្ថភាពនវានុវត្តន៍ជាក់ស្តែង"
  } else if num-str == "05" {
    "ទិន្នន័យវាយតម្លៃលទ្ធផល ការប្រៀបធៀបមុន-ក្រោយ និងការផ្លាស់ប្តូរសមត្ថភាពសហគ្រាស"
  } else if num-str == "06" {
    "ទិន្នន័យស៊ីជម្រៅនៃករណីសិក្សាសហគ្រាសទាំង ២០ ក្នុងវិស័យកសិកម្ម កែច្នៃ និងសិប្បកម្ម"
  } else if num-str == "07" {
    "លទ្ធផល Final Pitch ជ័យលាភី ការវាយតម្លៃរបស់គណៈកម្មការ និងមេរៀនបទពិសោធន៍"
  } else {
    "ផែនការបន្តសម្រាប់រដូវកាលទី២ និងអនុសាសន៍គោលនយោបាយសម្រាប់គាំទ្រសហគ្រាស"
  }
  let actual-focus = if focus == auto { default-focus } else { focus }

  // ------------------------------------------------------------
  // PAGE 1: LEFT OPENER (Photographic Full-Bleed with AAA Contrast)
  // ------------------------------------------------------------
  page(
    paper: "a4",
    margin: 0mm,
    fill: colors.primary,
    header: none,
    footer: none,
  )[
    // Dynamic TOC label anchor
    #place(top + left)[#metadata(num-str) #label("ch-" + num-str)]

    // 1. Dominant Photographic Background (fit: "cover")
    #place(top + left)[
      #image(actual-left-photo, width: 210mm, height: 297mm, fit: "cover")
    ]

    // 2. Non-Destructive Deep Teal Contrast Overlay Tint
    #place(top + left)[
      #rect(width: 210mm, height: 297mm, fill: colors.primary.transparentize(24%))
    ]

    // 3. Directional Gradient Mask for Controlled Layout Variations
    #if layout-var == "lower-left" [
      #place(bottom + left)[
        #rect(
          width: 210mm,
          height: 195mm,
          fill: gradient.linear(angle: 90deg, colors.primary.transparentize(5%), colors.primary.transparentize(85%)),
        )
      ]
    ] else if layout-var == "lower-right" [
      #place(bottom + right)[
        #rect(
          width: 190mm,
          height: 195mm,
          fill: gradient.linear(angle: 135deg, colors.primary.transparentize(5%), colors.primary.transparentize(85%)),
        )
      ]
    ] else if layout-var == "center" [
      #place(center + horizon)[
        #rect(
          width: 210mm,
          height: 180mm,
          fill: gradient.linear(angle: 0deg, colors.primary.transparentize(5%), colors.primary.transparentize(65%)),
        )
      ]
    ] else [
      // "top-left"
      #place(top + left)[
        #rect(
          width: 200mm,
          height: 200mm,
          fill: gradient.linear(angle: -45deg, colors.primary.transparentize(5%), colors.primary.transparentize(85%)),
        )
      ]
    ]

    // 4. Tone-on-tone Architectural SVG Pattern
    #chapter-bg-pattern(number: num-str)

    // 5. Header Tag & Content Block (Positioned per Layout Variant)
    #if layout-var == "lower-left" [
      // Top Label Tag
      #place(top + left, dx: 26mm, dy: 30mm)[
        #block(
          fill: colors.primary.transparentize(20%),
          radius: 2pt,
          inset: (x: 8pt, y: 4pt),
          stroke: 0.6pt + colors.sand,
        )[
          #text(font: fonts.display, size: 8.5pt, weight: 700, fill: colors.sand, tracking: 2pt)[
            CHAPTER #num-str · INNOLAB KAMPONG THOM
          ]
        ]
      ]

      // Lower-Left Main Title Block
      #place(bottom + left, dx: 26mm, dy: -32mm)[
        #block(width: 158mm)[
          #text(font: fonts.display, size: 105pt, weight: 800, fill: colors.white)[#num-str]
          #v(2mm)
          #line(length: 38mm, stroke: 2.5pt + colors.sand)
          #v(6mm)
          #block[
            #set par(leading: 10.5pt)
            #text(font: fonts.main, size: 27pt, weight: 700, fill: colors.white)[#title]
          ]
          #if english != none [
            #v(3mm)
            #text(font: fonts.display, size: 13pt, weight: 600, fill: colors.sage, tracking: 1.5pt)[#upper(english)]
          ]
        ]
      ]
    ] else if layout-var == "lower-right" [
      // Top Label Tag
      #place(top + left, dx: 26mm, dy: 30mm)[
        #block(
          fill: colors.primary.transparentize(20%),
          radius: 2pt,
          inset: (x: 8pt, y: 4pt),
          stroke: 0.6pt + colors.sand,
        )[
          #text(font: fonts.display, size: 8.5pt, weight: 700, fill: colors.sand, tracking: 2pt)[
            CHAPTER #num-str · INNOLAB KAMPONG THOM
          ]
        ]
      ]

      // Lower-Right Main Title Block
      #place(bottom + right, dx: -24mm, dy: -32mm)[
        #block(width: 152mm)[
          #text(font: fonts.display, size: 105pt, weight: 800, fill: colors.white)[#num-str]
          #v(2mm)
          #line(length: 38mm, stroke: 2.5pt + colors.sand)
          #v(6mm)
          #block[
            #set par(leading: 10.5pt)
            #text(font: fonts.main, size: 27pt, weight: 700, fill: colors.white)[#title]
          ]
          #if english != none [
            #v(3mm)
            #text(font: fonts.display, size: 13pt, weight: 600, fill: colors.sage, tracking: 1.5pt)[#upper(english)]
          ]
        ]
      ]
    ] else if layout-var == "center" [
      // Top Label Tag
      #place(top + left, dx: 26mm, dy: 30mm)[
        #block(
          fill: colors.primary.transparentize(20%),
          radius: 2pt,
          inset: (x: 8pt, y: 4pt),
          stroke: 0.6pt + colors.sand,
        )[
          #text(font: fonts.display, size: 8.5pt, weight: 700, fill: colors.sand, tracking: 2pt)[
            CHAPTER #num-str · INNOLAB KAMPONG THOM
          ]
        ]
      ]

      // Vertically Centered Main Title Block
      #place(center + horizon, dx: 0mm, dy: 6mm)[
        #block(width: 158mm)[
          #grid(
            columns: (auto, 1fr),
            gutter: 7mm,
            align: horizon,
            [
              #text(font: fonts.display, size: 95pt, weight: 800, fill: colors.white)[#num-str]
            ],
            [
              #line(length: 28mm, stroke: 2.5pt + colors.sand)
              #v(4mm)
              #block[
                #set par(leading: 10.5pt)
                #text(font: fonts.main, size: 25pt, weight: 700, fill: colors.white)[#title]
              ]
              #if english != none [
                #v(2.5mm)
                #text(font: fonts.display, size: 12.5pt, weight: 600, fill: colors.sage, tracking: 1.5pt)[#upper(english)]
              ]
            ],
          )
        ]
      ]
    ] else [
      // Top-Left Main Title Block
      #place(top + left, dx: 26mm, dy: 32mm)[
        #block(width: 158mm)[
          #text(font: fonts.display, size: 8.5pt, weight: 700, fill: colors.sand, tracking: 2pt)[
            CHAPTER #num-str · INNOLAB KAMPONG THOM
          ]
          #v(8mm)
          #text(font: fonts.display, size: 105pt, weight: 800, fill: colors.white)[#num-str]
          #v(2mm)
          #line(length: 38mm, stroke: 2.5pt + colors.sand)
          #v(6mm)
          #block[
            #set par(leading: 10.5pt)
            #text(font: fonts.main, size: 27pt, weight: 700, fill: colors.white)[#title]
          ]
          #if english != none [
            #v(3mm)
            #text(font: fonts.display, size: 13pt, weight: 600, fill: colors.sage, tracking: 1.5pt)[#upper(english)]
          ]
        ]
      ]
    ]

    // Bottom Institutional Label
    #place(bottom + left, dx: 26mm, dy: -18mm)[
      #grid(
        columns: (auto, auto),
        gutter: 3mm,
        align: horizon,
        text(
          font: fonts.display,
          size: 8.5pt,
          weight: 600,
          fill: colors.sand,
          tracking: 2pt,
        )[
          SEASON 1 / 2025–2026
        ],
        text(
          font: fonts.main,
          size: 8.5pt,
          fill: colors.sage.transparentize(20%),
        )[
          · របាយការណ៍បូកសរុបលទ្ធផលគម្រោង
        ],
      )
    ]
  ]

  // ------------------------------------------------------------
  // PAGE 2: RIGHT INTRO PAGE (Photographic Continuation & Overview)
  // ------------------------------------------------------------
  page(
    paper: "a4",
    margin: (top: 24mm, bottom: 22mm, left: 24mm, right: 22mm),
    fill: colors.paper,
    header: none,
    footer: none,
  )[
    // Top Section Bar
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      text(
        font: fonts.display,
        size: 8.5pt,
        weight: 700,
        fill: colors.sand,
        tracking: 2pt,
      )[
        CHAPTER #num-str OVERVIEW
      ],
      text(
        font: fonts.main,
        size: 8.5pt,
        weight: 600,
        fill: colors.gray,
      )[
        ទិដ្ឋភាពទូទៅនៃជំពូក
      ],
    )
    #v(2.5mm)
    #line(length: 100%, stroke: 0.75pt + colors.line)

    #v(6mm)

    // Intro Heading
    #text(
      font: fonts.main,
      size: 16pt,
      weight: 700,
      fill: colors.primary,
    )[
      សេចក្តីផ្តើម និងខ្លឹមសារសង្ខេប
    ]

    #v(3.5mm)

    // Chapter Intro Paragraph (100% PRESERVED)
    #if intro != none {
      block(
        width: 100%,
        stroke: (left: 3pt + colors.sand),
        inset: (left: 5mm, y: 1.5mm),
      )[
        #set par(leading: 6.8pt, justify: false)
        #text(
          font: fonts.main,
          size: 10pt,
          fill: colors.text,
          weight: 400,
        )[
          #intro
        ]
      ]
    }

    #v(6mm)

    // Connected Photographic Feature Card
    #block(
      width: 100%,
      height: 68mm,
      radius: 3pt,
      clip: true,
      stroke: 0.6pt + colors.line,
    )[
      #image(default-right-photo, width: 100%, height: 100%, fit: "cover")
      #place(top + left, dx: 3.5mm, dy: 3.5mm)[
        #block(
          fill: colors.primary.transparentize(15%),
          radius: 2pt,
          inset: (x: 6pt, y: 3pt),
          stroke: 0.5pt + colors.sand,
        )[
          #text(font: fonts.display, size: 7.5pt, weight: 700, fill: colors.sand, tracking: 1pt)[
            CHAPTER #num-str ARCHIVE
          ]
        ]
      ]
    ]

    #v(2mm)

    #grid(
      columns: (1fr, auto),
      gutter: 4mm,
      align: (left, right),
      block[
        #set par(leading: 5.5pt, justify: false)
        #text(
          font: fonts.main,
          size: 7.5pt,
          fill: colors.gray,
        )[
          #actual-caption
        ]
      ],
      text(
        font: fonts.display,
        size: 7.5pt,
        fill: colors.gray,
        weight: 600,
        tracking: 1pt,
      )[
        INNOLAB ARCHIVE · 2025
      ],
    )

    #v(5mm)

    // Structured Key Focus Card
    #block(
      width: 100%,
      fill: colors.white,
      radius: 3pt,
      inset: (x: 5mm, y: 4mm),
      stroke: 0.6pt + colors.line,
    )[
      #grid(
        columns: (auto, 1fr),
        gutter: 4mm,
        align: horizon,
        block(
          fill: colors.sage,
          radius: 2pt,
          inset: (x: 2.5mm, y: 1.5mm),
          text(
            font: fonts.display,
            size: 8pt,
            weight: 700,
            fill: colors.primary,
            tracking: 1.5pt,
          )[
            KEY FOCUS
          ],
        ),
        block[
          #set par(leading: 6pt, justify: false)
          #text(
            font: fonts.main,
            size: 8.5pt,
            fill: colors.text,
          )[
            #actual-focus
          ]
        ],
      )
    ]
  ]
}


// ------------------------------------------------------------
// SECTION TITLE
// ------------------------------------------------------------

#let section-title(
  title,
  english: none,
  tag: none,
  variant: auto,
) = {
  if variant in ("left", "right", "full-width", "compact") {
    v(6mm)
    editorial-section-banner(title, english: english, tag: tag, variant: variant)
    v(4mm)
  } else {
    v(7mm)
    block[
      #set par(leading: 9pt, justify: false)
      #text(
        font: fonts.main,
        size: 18pt,
        weight: 700,
        fill: colors.primary,
      )[
        #title
      ]
    ]
    if english != none [
      #v(2mm)
      #text(
        font: fonts.display,
        size: 9.5pt,
        weight: 600,
        fill: colors.gray,
        tracking: 1pt,
      )[#upper(english)]
    ]
    v(3.5mm)
  }
}


// ------------------------------------------------------------
// SUBSECTION TITLE
// ------------------------------------------------------------

#let subsection-title(title) = {
  v(5mm)

  block[
    #set par(leading: 7.5pt, justify: false)
    #text(
      font: fonts.main,
      size: 13pt,
      weight: 600,
      fill: colors.primary,
    )[
      #title
    ]
  ]

  v(2.5mm)
}


// ============================================================
// CONTENT COMPONENTS
// ============================================================


// ------------------------------------------------------------
// STATISTIC CARD
// ------------------------------------------------------------

#let stat(value, label, height: auto) = {
  block(
    width: 100%,
    height: height,
    breakable: false,
    inset: (x: 5.5mm, y: 5mm),
    fill: colors.sage,
    radius: 2mm,
  )[
    #text(
      font: fonts.display,
      size: 32pt,
      weight: 700,
      fill: colors.primary,
    )[#value]

    #v(2.5mm)

    #block[
      #set par(leading: 6pt, justify: false)
      #text(
        font: fonts.main,
        size: 8.5pt,
        weight: 600,
        fill: colors.text,
      )[#label]
    ]
  ]
}


// ------------------------------------------------------------
// IMAGE PLACEHOLDER
// ------------------------------------------------------------

#let image-placeholder(
  id,
  description: none,
  ratio: "4:3",
  height: none,
  fit: none,
) = {
  report-photo(
    id,
    description: description,
    height: height,
    fit: fit,
    ratio: ratio,
    placeholder: false,
    colors: colors,
    fonts: fonts,
  )
}


// ------------------------------------------------------------
// CAPTION
// ------------------------------------------------------------

#let caption(number, body) = {
  v(2mm)

  block[
    #set par(leading: 5.5pt, justify: false)
    #text(
      font: fonts.main,
      size: 8pt,
      fill: colors.gray,
    )[
      *រូបភាពទី #number* — #body
    ]
  ]

  v(5mm)
}


// ------------------------------------------------------------
// CALLOUT
// ------------------------------------------------------------

#let callout(title, body, height: auto) = {
  block(
    width: 100%,
    height: height,
    breakable: false,
    fill: colors.paper,
    stroke: (
      paint: colors.line,
      thickness: 0.7pt,
    ),
    radius: 2mm,
    inset: (x: 6mm, y: 5mm),
  )[
    #block[
      #set par(leading: 6.5pt, justify: false)
      #text(
        font: fonts.display,
        size: 10.5pt,
        weight: 700,
        fill: colors.primary,
      )[
        #title
      ]
    ]

    #v(2.5mm)

    #block[
      #set par(leading: 6.8pt, justify: false)
      #text(
        font: fonts.main,
        size: 9.5pt,
        fill: colors.text,
      )[
        #body
      ]
    ]
  ]
}

// ============================================================
// CHAPTER 02 COMPONENTS
// ============================================================


// ------------------------------------------------------------
// CHALLENGE CARD
// ------------------------------------------------------------

#let challenge-card(
  number,
  title,
  body,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    breakable: false,
    fill: colors.paper,
    radius: 2mm,
    inset: (x: 5.5mm, y: 5mm),
    stroke: (
      paint: colors.line,
      thickness: 0.6pt,
    ),
  )[
    #grid(
      columns: (12mm, 1fr),
      gutter: 4mm,

      [
        #text(
          font: fonts.display,
          size: 20pt,
          weight: 700,
          fill: colors.primary,
        )[
          #number
        ]
      ],

      [
        #block[
          #set par(leading: 6.8pt, justify: false)
          #text(
            font: fonts.display,
            size: 11pt,
            weight: 700,
            fill: colors.primary,
          )[
            #title
          ]
        ]

        #v(2.5mm)

        #block[
          #set par(leading: 6.5pt, justify: false)
          #text(
            font: fonts.main,
            size: 9.2pt,
            fill: colors.text,
          )[
            #body
          ]
        ]
      ],
    )
  ]
}


// ------------------------------------------------------------
// SIMPLE FLOW STEP
// ------------------------------------------------------------

#let flow-step(
  label,
  body,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    breakable: false,
    fill: colors.sage,
    radius: 2mm,
    inset: (x: 5.5mm, y: 5mm),
  )[
    #text(
      font: fonts.display,
      size: 9pt,
      weight: 600,
      fill: colors.primary,
    )[
      #label
    ]

    #v(2.5mm)

    #block[
      #set par(leading: 6.5pt, justify: false)
      #text(
        font: fonts.main,
        size: 10pt,
        weight: 600,
        fill: colors.text,
      )[
        #body
      ]
    ]
  ]
}

// ============================================================
// CHAPTER 03 COMPONENTS
// ============================================================


// ------------------------------------------------------------
// FUNNEL STAGE
// ------------------------------------------------------------

#let funnel-stage(
  value,
  label,
  note: none,
  fill: colors.sage,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    breakable: false,
    fill: fill,
    radius: 2mm,
    inset: (
      top: 5mm,
      bottom: 5mm,
      left: 5mm,
      right: 5mm,
    ),
  )[
    #align(center)[
      #text(
        font: fonts.display,
        size: 30pt,
        weight: 700,
        fill: colors.primary,
      )[
        #value
      ]

      #v(2.5mm)

      #block[
        #set par(leading: 6.2pt, justify: false)
        #text(
          font: fonts.main,
          size: 9.5pt,
          weight: 600,
          fill: colors.text,
        )[
          #label
        ]
      ]

      #if note != none {
        v(2mm)

        block[
          #set par(leading: 5.5pt, justify: false)
          #text(
            font: fonts.main,
            size: 7.8pt,
            fill: colors.gray,
          )[
            #note
          ]
        ]
      }
    ]
  ]
}


// ------------------------------------------------------------
// TIMELINE ITEM
// ------------------------------------------------------------

#let timeline-item(
  number,
  period,
  title,
  body,
) = {
  grid(
    columns: (15mm, 1fr),
    gutter: 5mm,

    [
      #align(center)[
        #block(
          width: 12mm,
          height: 12mm,
          fill: colors.primary,
          radius: 50%,
        )[
          #align(center + horizon)[
            #text(
              font: fonts.display,
              size: 9pt,
              weight: 700,
              fill: colors.white,
            )[
              #number
            ]
          ]
        ]
      ]
    ],

    [
      #text(
        font: fonts.display,
        size: 8pt,
        weight: 600,
        fill: colors.gray,
      )[
        #period
      ]

      #v(1.5mm)

      #block[
        #set par(leading: 7pt, justify: false)
        #text(
          font: fonts.display,
          size: 11.5pt,
          weight: 700,
          fill: colors.primary,
        )[
          #title
        ]
      ]

      #v(2.5mm)

      #block[
        #set par(leading: 6.5pt, justify: false)
        #text(
          font: fonts.main,
          size: 9.2pt,
          fill: colors.text,
        )[
          #body
        ]
      ]
    ],
  )

  v(5mm)
}


// ------------------------------------------------------------
// ACTIVITY LABEL
// ------------------------------------------------------------

#let activity-label(
  number,
  title,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    breakable: false,
    fill: colors.paper,
    radius: 2mm,
    stroke: (
      paint: colors.line,
      thickness: 0.6pt,
    ),
    inset: (x: 5mm, y: 4.5mm),
  )[
    #text(
      font: fonts.display,
      size: 8pt,
      weight: 600,
      fill: colors.gray,
    )[
      ACTIVITY #number
    ]

    #v(2.5mm)

    #block[
      #set par(leading: 6.5pt, justify: false)
      #text(
        font: fonts.main,
        size: 9.5pt,
        weight: 600,
        fill: colors.text,
      )[
        #title
      ]
    ]
  ]
}


// ------------------------------------------------------------
// DATE MARKER
// ------------------------------------------------------------

#let date-marker(
  day,
  month,
  year,
  height: auto,
) = {
  block(
    width: 34mm,
    height: height,
    breakable: false,
    fill: colors.primary,
    radius: 2mm,
    inset: 4mm,
  )[
    #align(center)[
      #text(
        font: fonts.display,
        size: 24pt,
        weight: 700,
        fill: colors.white,
      )[
        #day
      ]

      #v(1mm)

      #text(
        font: fonts.main,
        size: 8pt,
        weight: 600,
        fill: colors.white,
      )[
        #month
      ]

      #v(1mm)

      #text(
        font: fonts.display,
        size: 8pt,
        fill: colors.white,
      )[
        #year
      ]
    ]
  ]
}
