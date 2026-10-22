#import "../styles.typ": colors, fonts


// ============================================================
// SIMPLE DATA VISUALIZATION COMPONENTS
// ============================================================


// ------------------------------------------------------------
// SCORE CHANGE
// Example: 2.37 -> 3.84
// ------------------------------------------------------------

#let score-change(
  before,
  after,
  label: none,
  before-label: "មុនវគ្គ",
  after-label: "ក្រោយវគ្គ",
  scale: "/ 4",
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    fill: colors.paper,
    radius: 2mm,
    stroke: (
      paint: colors.line,
      thickness: 0.6pt,
    ),
    inset: 6mm,
  )[
    #if label != none {
      align(center)[
        #text(font: fonts.display, size: 10pt, weight: 600, fill: colors.primary)[#label]
        #v(4mm)
      ]
    }
    #grid(
      columns: (1fr, auto, 1fr),
      gutter: 5mm,
      align: horizon,
      [
        #align(center)[
          #text(
            font: fonts.main,
            size: 8pt,
            weight: 600,
            fill: colors.gray,
          )[
            #before-label
          ]

          #v(2mm)

          #text(
            font: fonts.display,
            size: 30pt,
            weight: 700,
            fill: colors.gray,
          )[
            #before
          ]

          #text(
            font: fonts.display,
            size: 8pt,
            fill: colors.gray,
          )[
            #scale
          ]
        ]
      ],

      [
        #text(
          font: fonts.display,
          size: 27pt,
          weight: 600,
          fill: colors.sand,
        )[
          →
        ]
      ],

      [
        #align(center)[
          #text(
            font: fonts.main,
            size: 8pt,
            weight: 600,
            fill: colors.primary,
          )[
            #after-label
          ]

          #v(2mm)

          #text(
            font: fonts.display,
            size: 30pt,
            weight: 700,
            fill: colors.primary,
          )[
            #after
          ]

          #text(
            font: fonts.display,
            size: 8pt,
            fill: colors.primary,
          )[
            #scale
          ]
        ]
      ],
    )
  ]
}


// ------------------------------------------------------------
// TRAINING INFO CARD
// ------------------------------------------------------------

#let training-info(
  number,
  date,
  title,
  participants,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    fill: colors.sage,
    radius: 2mm,
    inset: (x: 5.5mm, y: 4.5mm),
  )[
    #grid(
      columns: (auto, 1fr),
      gutter: 6mm,
      align: horizon,

      [
        #text(
          font: fonts.display,
          size: 18pt,
          weight: 700,
          fill: colors.primary,
        )[
          #number
        ]
      ],

      [
        #text(
          font: fonts.display,
          size: 8pt,
          weight: 600,
          fill: colors.gray,
        )[
          #date
        ]

        #v(1.5mm)

        #block[
          #set par(leading: 6.8pt, justify: false)
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
          #set par(leading: 7.2pt, justify: false)
          #text(
            font: fonts.main,
            size: 8pt,
            fill: colors.text,
          )[
            អ្នកចូលរួម: #text(font: fonts.display, size: 8.5pt, weight: 700, fill: colors.primary)[#participants]
          ]
        ]
      ],
    )
  ]
}


// ------------------------------------------------------------
// SMALL METRIC
// ------------------------------------------------------------

#let metric(
  value,
  label,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    fill: colors.paper,
    radius: 2mm,
    inset: (x: 5mm, y: 4.5mm),
  )[
    #text(
      font: fonts.display,
      size: 24pt,
      weight: 700,
      fill: colors.primary,
    )[
      #value
    ]

    #v(2.5mm)

    #block[
      #set par(leading: 7.5pt, justify: false)
      #text(
        font: fonts.main,
        size: 8.2pt,
        fill: colors.text,
      )[
        #label
      ]
    ]
  ]
}


// ------------------------------------------------------------
// LEARNING STEP
// ------------------------------------------------------------

#let learning-step(
  label,
  title,
  body,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    fill: colors.paper,
    radius: 2mm,
    stroke: (
      paint: colors.line,
      thickness: 0.6pt,
    ),
    inset: (x: 5.5mm, y: 4.5mm),
  )[
    #text(
      font: fonts.display,
      size: 8pt,
      weight: 600,
      fill: colors.primary,
    )[
      #label
    ]

    #v(2mm)

    #block[
      #set par(leading: 6.8pt, justify: false)
      #text(
        font: fonts.display,
        size: 10pt,
        weight: 700,
        fill: colors.primary,
      )[
        #title
      ]
    ]

    #v(2.5mm)

    #block[
      #set par(leading: 7.8pt, justify: false)
      #text(
        font: fonts.main,
        size: 8.8pt,
        fill: colors.text,
      )[
        #body
      ]
    ]
  ]
}

// ============================================================
// CHAPTER 05 — IMPACT CHART COMPONENTS
// ============================================================


// ------------------------------------------------------------
// PERCENT BAR
// width should be passed as 40%, 66.7%, etc.
// ------------------------------------------------------------

#let percent-bar(
  label,
  value,
  width,
  note: none,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
  )[
    #grid(
      columns: (1fr, auto),
      gutter: 4mm,

      text(
        font: fonts.main,
        size: 9pt,
        weight: 600,
        fill: colors.text,
      )[
        #label
      ],

      text(
        font: fonts.display,
        size: 10pt,
        weight: 700,
        fill: colors.primary,
      )[
        #value
      ],
    )

    #v(2mm)

    #block(
      width: 100%,
      height: 3.5mm,
      fill: colors.light-gray,
      radius: 2mm,
    )[
      #block(
        width: width,
        height: 3.5mm,
        fill: colors.primary,
        radius: 2mm,
      )
    ]

    #if note != none {
      v(1.5mm)

      text(
        font: fonts.main,
        size: 7.5pt,
        fill: colors.gray,
      )[
        #note
      ]
    }

    #v(5mm)
  ]
}


// ------------------------------------------------------------
// BEFORE / AFTER ROW
// ------------------------------------------------------------

#let before-after(
  label,
  before,
  after,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    fill: colors.paper,
    radius: 2mm,
    inset: 5mm,
    stroke: (
      paint: colors.line,
      thickness: 0.6pt,
    ),
  )[
    #text(
      font: fonts.display,
      size: 9.5pt,
      weight: 700,
      fill: colors.text,
    )[
      #label
    ]

    #v(4mm)

    #grid(
      columns: (1fr, auto, 1fr),
      gutter: 5mm,
      align: horizon,

      [
        #text(
          font: fonts.display,
          size: 8pt,
          fill: colors.gray,
        )[
          BEFORE
        ]

        #v(1mm)

        #text(
          font: fonts.display,
          size: 22pt,
          weight: 700,
          fill: colors.gray,
        )[
          #before
        ]
      ],

      [
        #text(
          font: fonts.display,
          size: 22pt,
          weight: 700,
          fill: colors.sand,
        )[
          →
        ]
      ],

      [
        #text(
          font: fonts.display,
          size: 8pt,
          fill: colors.primary,
        )[
          AFTER
        ]

        #v(1mm)

        #text(
          font: fonts.display,
          size: 22pt,
          weight: 700,
          fill: colors.primary,
        )[
          #after
        ]
      ],
    )
  ]
}


// ------------------------------------------------------------
// SURVEY NOTE
// ------------------------------------------------------------

#let survey-note(
  sample,
  body,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    fill: colors.sage,
    radius: 2mm,
    inset: 4mm,
  )[
    #grid(
      columns: (auto, 1fr),
      gutter: 4mm,

      text(
        font: fonts.display,
        size: 10pt,
        weight: 700,
        fill: colors.primary,
      )[
        n = #sample
      ],

      text(
        font: fonts.main,
        size: 8pt,
        fill: colors.gray,
      )[
        #body
      ],
    )
  ]
}

// ------------------------------------------------------------
// DATA LIST
// ------------------------------------------------------------

#let data-list(..items) = {
  for item in items.pos() {
    block(
      width: 100%,
      fill: colors.paper,
      radius: 1.5mm,
      inset: 4mm,
      stroke: (
        paint: colors.line,
        thickness: 0.6pt,
      ),
    )[
      #text(font: fonts.main, size: 10.5pt, weight: 600, fill: colors.primary)[
        #item
      ]
    ]
    v(3mm)
  }
}



