#import "../styles.typ": colors, fonts


// ============================================================
// FINAL PITCH COMPONENTS
// ============================================================


// ------------------------------------------------------------
// PITCH STAGE
// ------------------------------------------------------------

#let pitch-stage(
  value,
  title,
  note,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    fill: colors.paper,
    radius: 2mm,
    stroke: (
      paint: colors.line,
      thickness: 0.7pt,
    ),
    inset: (x: 5.5mm, y: 5mm),
  )[
    #align(center)[
      #text(
        font: fonts.display,
        size: 34pt,
        weight: 700,
        fill: colors.primary,
      )[
        #value
      ]

      #v(2.5mm)

      #block[
        #set par(leading: 8pt, justify: false)
        #text(
          font: fonts.display,
          size: 10pt,
          weight: 700,
          fill: colors.primary,
        )[
          #title
        ]
      ]

      #if note != none {
        v(2mm)

        block[
          #set par(leading: 7.2pt, justify: false)
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
// WINNER CARD
// ------------------------------------------------------------

#let winner-card(
  name,
  business,
  innovation,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    fill: colors.sage,
    radius: 2mm,
    inset: (x: 5.5mm, y: 5mm),
  )[
    #text(
      font: fonts.display,
      size: 8pt,
      weight: 700,
      fill: colors.primary,
    )[
      SEASON 1 WINNER
    ]

    #v(2.5mm)

    #block[
      #set par(leading: 7.2pt, justify: false)
      #text(
        font: fonts.main,
        size: 12pt,
        weight: 700,
        fill: colors.primary,
      )[
        #name
      ]
    ]

    #v(1.5mm)

    #text(
      font: fonts.main,
      size: 9pt,
      weight: 600,
      fill: colors.text,
    )[
      #business
    ]

    #if innovation != none {
      v(3.5mm)

      line(
        length: 18mm,
        stroke: (
          paint: colors.sand,
          thickness: 1pt,
        ),
      )

      v(2.5mm)

      block[
        #set par(leading: 7.5pt, justify: false)
        #text(
          font: fonts.main,
          size: 8.5pt,
          fill: colors.text,
        )[
          #innovation
        ]
      ]
    }
  ]
}


// ------------------------------------------------------------
// SPECIAL AWARD
// ------------------------------------------------------------

#let special-award(
  label,
  name,
  description,
  height: auto,
) = {
  block(
    width: 100%,
    height: height,
    fill: colors.paper,
    radius: 2mm,
    stroke: (
      paint: colors.line,
      thickness: 0.7pt,
    ),
    inset: (x: 5.5mm, y: 5mm),
  )[
    #text(
      font: fonts.display,
      size: 9pt,
      weight: 700,
      fill: colors.sand,
    )[
      #label
    ]

    #v(2mm)

    #block[
      #set par(leading: 8.5pt, justify: false)
      #text(
        font: fonts.main,
        size: 11pt,
        weight: 700,
        fill: colors.primary,
      )[
        #name
      ]
    ]

    #v(2mm)

    #block[
      #set par(leading: 7.5pt, justify: false)
      #text(
        font: fonts.main,
        size: 8.5pt,
        fill: colors.text,
      )[
        #description
      ]
    ]
  ]
}
