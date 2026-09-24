#import "../styles.typ": *

#let case-study-full(
  number,
  name,
  business,
  photo-id: none,
  orientation: "portrait", // "portrait" | "square" | "landscape"
  source-note: none,
  background: [],
  innovation: [],
) = {

  pagebreak()

  // ----------------------------------------------------------
  // CASE HEADER
  // ----------------------------------------------------------
  grid(
    columns: (22mm, 1fr),
    gutter: 6mm,
    align: horizon,

    [
      #text(
        font: fonts.display,
        size: 44pt,
        weight: 700,
        fill: colors.primary,
        baseline: -2pt,
      )[
        #number
      ]
    ],

    [
      #text(
        font: fonts.display,
        size: 8pt,
        weight: 700,
        fill: colors.sand,
        tracking: 1.5pt,
      )[
        SME CASE STUDY
      ]

      #v(1mm)

      #block[
        #set par(leading: 8pt, justify: false)
        #text(
          font: fonts.main,
          size: 18pt,
          weight: 700,
          fill: colors.primary,
        )[
          #name
        ]
      ]

      #v(1mm)

      #text(
        font: fonts.main,
        size: 9.5pt,
        weight: 600,
        fill: colors.gray,
      )[
        #business
      ]
    ],
  )

  v(4.5mm)
  line(length: 100%, stroke: 0.6pt + colors.line)
  v(4.5mm)

  // ----------------------------------------------------------
  // TOP SECTION: PHOTO BESIDE BACKGROUND
  // ----------------------------------------------------------
  if photo-id != none {
    if orientation == "landscape" {
      // Landscape variant: wide frame with background below
      block(
        width: 100%,
        height: 64mm,
        radius: 3pt,
        clip: true,
        stroke: 0.6pt + colors.line,
      )[
        #image-placeholder(
          photo-id,
          description: "សហគ្រិន និងអាជីវកម្ម",
          fit: "cover",
          height: 64mm,
        )
      ]

      v(4mm)

      text(
        font: fonts.display,
        size: 8pt,
        weight: 700,
        fill: colors.sand,
        tracking: 1.5pt,
      )[
        BUSINESS BACKGROUND
      ]

      v(2.5mm)

      block[
        #set par(leading: 6.8pt, justify: false)
        #background
      ]
    } else if orientation == "square" {
      // Square variant: balanced square photo beside background
      grid(
        columns: (72mm, 1fr),
        gutter: 6mm,

        [
          #block(
            width: 72mm,
            height: 72mm,
            radius: 3pt,
            clip: true,
            stroke: 0.6pt + colors.line,
          )[
            #image-placeholder(
              photo-id,
              description: "សហគ្រិន និងអាជីវកម្ម",
              fit: "cover",
              height: 72mm,
            )
          ]
        ],

        [
          #text(
            font: fonts.display,
            size: 8pt,
            weight: 700,
            fill: colors.sand,
            tracking: 1.5pt,
          )[
            BUSINESS BACKGROUND
          ]

          #v(2.5mm)

          #block[
            #set par(leading: 6.8pt, justify: false)
            #background
          ]
        ],
      )
    } else {
      // Portrait variant (Default for 2:3 SME portrait photos)
      grid(
        columns: (64mm, 1fr),
        gutter: 6mm,

        // Left Column: Portrait photo (preserving head & face)
        [
          #block(
            width: 64mm,
            height: 94mm,
            radius: 3pt,
            clip: true,
            stroke: 0.6pt + colors.line,
          )[
            #image-placeholder(
              photo-id,
              description: "សហគ្រិន និងអាជីវកម្ម",
              fit: "cover",
              height: 94mm,
            )
          ]
        ],

        // Right Column: Business Background
        [
          #text(
            font: fonts.display,
            size: 8pt,
            weight: 700,
            fill: colors.sand,
            tracking: 1.5pt,
          )[
            BUSINESS BACKGROUND
          ]

          #v(2.5mm)

          #block[
            #set par(leading: 6.8pt, justify: false)
            #background
          ]
        ],
      )
    }
  } else {
    // Fallback if no photo
    block[
      #text(
        font: fonts.display,
        size: 8pt,
        weight: 700,
        fill: colors.sand,
        tracking: 1.5pt,
      )[
        BUSINESS BACKGROUND
      ]

      #v(2.5mm)

      #block[
        #set par(leading: 6.8pt, justify: false)
        #background
      ]
    ]
  }

  // ----------------------------------------------------------
  // INNOVATION JOURNEY (Full Width Below)
  // ----------------------------------------------------------
  v(4.5mm)

  line(
    length: 25mm,
    stroke: (
      paint: colors.sand,
      thickness: 1.5pt,
    ),
  )

  v(3mm)

  text(
    font: fonts.display,
    size: 8pt,
    weight: 700,
    fill: colors.primary,
    tracking: 1.5pt,
  )[
    INNOVATION JOURNEY
  ]

  v(2.5mm)

  block[
    #set par(leading: 6.8pt, justify: false)
    #innovation
  ]

  // ----------------------------------------------------------
  // SOURCE NOTE
  // ----------------------------------------------------------
  if source-note != none {
    v(3.5mm)

    block(
      width: 100%,
      fill: colors.paper,
      radius: 2pt,
      stroke: 0.5pt + colors.line,
      inset: (x: 4.5mm, y: 3.5mm),
    )[
      #text(
        font: fonts.display,
        size: 7.5pt,
        weight: 700,
        fill: colors.primary,
        tracking: 1pt,
      )[
        កំណត់សម្គាល់ប្រភព
      ]
      #v(1mm)
      #block[
        #set par(leading: 5.8pt, justify: false)
        #text(
          font: fonts.main,
          size: 7.8pt,
          fill: colors.text,
        )[
          #source-note
        ]
      ]
    ]
  }
}
