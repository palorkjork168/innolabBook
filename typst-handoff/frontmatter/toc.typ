#import "../styles.typ": *

#let ch-data = (
  (num: "01", km: "ទិដ្ឋភាពទូទៅនៃគម្រោង", en: "PROJECT OVERVIEW", pg: "07"),
  (num: "02", km: "បរិបទ មូលហេតុ និងបញ្ហាប្រឈម", en: "CONTEXT, RATIONALE & CHALLENGES", pg: "13"),
  (num: "03", km: "ដំណើរការ និងការអនុវត្តគម្រោង", en: "PROGRAM JOURNEY & IMPLEMENTATION", pg: "21"),
  (num: "04", km: "ការបណ្តុះបណ្តាល ការណែនាំ និងការចូលរួម", en: "TRAINING, MENTORING & ENGAGEMENT", pg: "31"),
  (num: "05", km: "លទ្ធផល និងផលប៉ះពាល់", en: "RESULTS & IMPACT", pg: "43"),
  (num: "06", km: "ករណីសិក្សាសហគ្រាស", en: "SME CASE STUDIES", pg: "55"),
  (num: "07", km: "ការឡើងធ្វើបទបង្ហាញ បញ្ហាប្រឈម និងមេរៀន", en: "FINAL PITCH, CHALLENGES & LESSONS", pg: "79"),
  (num: "08", km: "ទិសដៅអនាគត និងអនុសាសន៍", en: "FUTURE DIRECTION & RECOMMENDATIONS", pg: "89"),
)

// Helper to resolve chapter page dynamically if labeled in document, or fallback
#let get-chapter-page(item) = context {
  let targets = query(label("ch-" + item.num))
  if targets.len() > 0 {
    let p = counter(page).at(targets.first().location()).first()
    if p < 10 { "0" + str(p) } else { str(p) }
  } else {
    item.pg
  }
}

// Chapter entry block with active link when target exists
#let toc-chapter-entry(item) = {
  let card-body = block(
    width: 100%,
    stroke: none,
  )[
    // Top row: Chapter number (large) + Page number
    #grid(
      columns: (auto, 1fr, auto),
      align: bottom,
      gutter: 3mm,

      text(
        font: fonts.display,
        size: 28pt,
        weight: 700,
        fill: colors.primary,
        baseline: -1pt,
      )[
        #item.num
      ],

      none,

      text(
        font: fonts.display,
        size: 11pt,
        weight: 600,
        fill: colors.sand,
      )[
        #get-chapter-page(item)
      ],
    )

    #v(1.5mm)

    // Thin accent rule
    #line(
      length: 100%,
      stroke: 0.8pt + colors.sand.lighten(20%),
    )

    #v(2.5mm)

    // Khmer Chapter Title (Kantumruy Pro)
    #block[
      #set par(leading: 6.5pt, justify: false)
      #text(
        font: fonts.main,
        size: 11pt,
        weight: 700,
        fill: colors.primary,
      )[
        #item.km
      ]
    ]

    #v(1.5mm)

    // English Subtitle (Barlow Condensed / Barlow)
    #text(
      font: fonts.display,
      size: 8pt,
      weight: 500,
      fill: colors.gray,
      tracking: 0.5pt,
    )[
      #item.en
    ]

    #v(8.5mm)
  ]

  // Link wrapper if target label exists in document
  context {
    let targets = query(label("ch-" + item.num))
    if targets.len() > 0 {
      link(targets.first().location())[#card-body]
    } else {
      card-body
    }
  }
}

// ============================================================
// TOC PAGE PRESENTATION
// ============================================================

#page(
  paper: "a4",
  margin: (top: 24mm, bottom: 20mm, left: 20mm, right: 20mm),
  fill: colors.white,
  background: toc-bg-pattern(),
  header: none,
  footer: none,
)[
  // Header Block
  #grid(
    columns: (1fr, auto),
    align: horizon,
    [
      #text(
        font: fonts.main,
        size: 28pt,
        weight: 700,
        fill: colors.primary,
      )[
        មាតិកា
      ]
      #v(1mm)
      #text(
        font: fonts.display,
        size: 8.5pt,
        weight: 600,
        fill: colors.sand,
        tracking: 1.5pt,
      )[
        TABLE OF CONTENTS · INNOLAB KAMPONG THOM
      ]
    ],
    [
      #block(
        stroke: 0.7pt + colors.sand,
        radius: 3pt,
        inset: (x: 8pt, y: 4.5pt),
        fill: colors.paper,
      )[
        #text(
          font: fonts.display,
          size: 8pt,
          weight: 600,
          fill: colors.primary,
          tracking: 1.2pt,
        )[
          SEASON 1 / 2025–2026
        ]
      ]
    ],
  )

  #v(4mm)

  #line(
    length: 100%,
    stroke: 0.8pt + colors.line,
  )

  #v(10mm)

  // 2-Column Chapter Spread with Left Vertical "CONTENTS"
  #grid(
    columns: (14mm, 1fr, 1fr),
    gutter: (6mm, 14mm),

    // Column 0: Full-height Vertical CONTENTS
    block(
      height: 185mm,
    )[
      #align(center + horizon)[
        #rotate(-90deg)[
          #text(
            font: fonts.display,
            size: 44pt,
            weight: 700,
            fill: colors.sage.darken(12%),
            tracking: 9pt,
          )[
            CONTENTS
          ]
        ]
      ]
    ],

    // Column 1: Chapters 01 - 04
    [
      #for item in ch-data.slice(0, 4) {
        toc-chapter-entry(item)
      }
    ],

    // Column 2: Chapters 05 - 08
    [
      #for item in ch-data.slice(4, 8) {
        toc-chapter-entry(item)
      }
    ],
  )

  #v(1fr)

  // Bottom note / institutional footer
  #line(
    length: 100%,
    stroke: 0.5pt + colors.line,
  )

  #v(2.5mm)

  #grid(
    columns: (1fr, auto),
    align: horizon,
    text(
      font: fonts.main,
      size: 7.5pt,
      fill: colors.gray,
    )[

    ],
    text(
      font: fonts.display,
      size: 7.5pt,
      fill: colors.sand,
      weight: 600,
      tracking: 1pt,
    )[
      ANGKOR SOCIAL INNOVATION PARK (ASIP)
    ],
  )
]
