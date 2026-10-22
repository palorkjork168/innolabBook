// ============================================================
// INNOLAB KAMPONG THOM
// REUSABLE EDITORIAL & PHOTO-LED COMPONENTS
// ============================================================

#import "catalogue.typ": editorial-caption

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

#let fonts = (
  main: ("Kantumruy Pro", "Arial"),
  display: ("Barlow", "Kantumruy Pro", "Arial"),
)

// Helper to normalize photo path
#let resolve-photo-src(path) = {
  if type(path) != str { return none }
  if path.starts-with("../") {
    "/" + path.slice(3)
  } else {
    path
  }
}

// ------------------------------------------------------------
// 1. HERO PHOTO CARD (Near-full-width documentary image block)
// ------------------------------------------------------------
#let photo-hero-card(
  src,
  caption: none,
  tag: none,
  height: 80mm,
  fit: "cover",
) = {
  let final-src = resolve-photo-src(src)
  block(width: 100%)[
    #block(
      width: 100%,
      height: height,
      radius: 3pt,
      clip: true,
      stroke: 0.6pt + colors.line,
    )[
      #image(final-src, width: 100%, height: 100%, fit: fit)
      #if tag != none [
        #place(top + left, dx: 4mm, dy: 4mm)[
          #block(
            fill: colors.primary.transparentize(15%),
            radius: 2pt,
            inset: (x: 7pt, y: 3.5pt),
            stroke: 0.5pt + colors.sand,
          )[
            #text(
              font: fonts.display,
              size: 8pt,
              weight: 700,
              fill: colors.sand,
              tracking: 1pt,
            )[
              #upper(tag)
            ]
          ]
        ]
      ]
    ]
    #if caption != none [
      #v(2.5mm)
      #editorial-caption(caption)
    ]
  ]
}

// ------------------------------------------------------------
// 2. TWO-PHOTO EDITORIAL SPREAD (Balanced Split)
// ------------------------------------------------------------
#let photo-collage-2(
  src1,
  src2,
  caption: none,
  height: 85mm,
  tag1: none,
  tag2: none,
) = {
  let s1 = resolve-photo-src(src1)
  let s2 = resolve-photo-src(src2)
  block(width: 100%)[
    #grid(
      columns: (1fr, 1fr),
      gutter: 4mm,
      block(
        height: height,
        radius: 3pt,
        clip: true,
        stroke: 0.6pt + colors.line,
      )[
        #image(s1, width: 100%, height: 100%, fit: "cover")
        #if tag1 != none [
          #place(bottom + left, dx: 3mm, dy: -3mm)[
            #block(
              fill: colors.primary.transparentize(15%),
              radius: 2pt,
              inset: (x: 6pt, y: 3pt),
            )[
              #text(font: fonts.display, size: 7.5pt, weight: 600, fill: colors.sand, tracking: 0.8pt)[#upper(tag1)]
            ]
          ]
        ]
      ],
      block(
        height: height,
        radius: 3pt,
        clip: true,
        stroke: 0.6pt + colors.line,
      )[
        #image(s2, width: 100%, height: 100%, fit: "cover")
        #if tag2 != none [
          #place(bottom + left, dx: 3mm, dy: -3mm)[
            #block(
              fill: colors.primary.transparentize(15%),
              radius: 2pt,
              inset: (x: 6pt, y: 3pt),
            )[
              #text(font: fonts.display, size: 7.5pt, weight: 600, fill: colors.sand, tracking: 0.8pt)[#upper(tag2)]
            ]
          ]
        ]
      ],
    )
    #if caption != none [
      #v(2.5mm)
      #editorial-caption(caption)
    ]
  ]
}

// ------------------------------------------------------------
// 3. THREE-PHOTO EDITORIAL MOSAIC (1 Hero + 2 Stacked)
// ------------------------------------------------------------
#let photo-collage-3(
  main-src,
  sub-src1,
  sub-src2,
  caption: none,
  tag-main: none,
  height: 105mm,
) = {
  let m = resolve-photo-src(main-src)
  let s1 = resolve-photo-src(sub-src1)
  let s2 = resolve-photo-src(sub-src2)
  let half-h = (height - 4mm) / 2

  block(width: 100%)[
    #grid(
      columns: (1.2fr, 1fr),
      gutter: 4mm,
      // Left Hero Photo
      block(
        height: height,
        radius: 3pt,
        clip: true,
        stroke: 0.6pt + colors.line,
      )[
        #image(m, width: 100%, height: 100%, fit: "cover")
        #if tag-main != none [
          #place(top + left, dx: 4mm, dy: 4mm)[
            #block(
              fill: colors.primary.transparentize(15%),
              radius: 2pt,
              inset: (x: 7pt, y: 3.5pt),
              stroke: 0.5pt + colors.sand,
            )[
              #text(font: fonts.display, size: 8pt, weight: 700, fill: colors.sand, tracking: 1pt)[#upper(tag-main)]
            ]
          ]
        ]
      ],
      // Right 2 Stacked Photos
      grid(
        rows: (half-h, half-h),
        gutter: 4mm,
        block(
          height: half-h,
          radius: 3pt,
          clip: true,
          stroke: 0.6pt + colors.line,
        )[
          #image(s1, width: 100%, height: 100%, fit: "cover")
        ],
        block(
          height: half-h,
          radius: 3pt,
          clip: true,
          stroke: 0.6pt + colors.line,
        )[
          #image(s2, width: 100%, height: 100%, fit: "cover")
        ],
      ),
    )
    #if caption != none [
      #v(2.5mm)
      #editorial-caption(caption)
    ]
  ]
}

// ------------------------------------------------------------
// 4. BOLD EDITORIAL SECTION BANNER (4 Compatible Variants)
// ------------------------------------------------------------
#let editorial-section-banner(
  title,
  english: none,
  tag: none,
  variant: "left", // "left" | "right" | "full-width" | "compact"
) = {
  if variant == "right" {
    // VARIANT B: Asymmetric Right-Aligned Title Bar
    block(
      width: 100%,
      fill: colors.primary,
      radius: 3pt,
      inset: (x: 6mm, y: 4.5mm),
      stroke: (right: 4pt + colors.sand),
    )[
      #grid(
        columns: (auto, 1fr),
        align: horizon,
        gutter: 4mm,
        [
          #text(
            font: fonts.display,
            size: 8pt,
            weight: 700,
            fill: colors.sand,
            tracking: 1.5pt,
          )[
            INNOLAB
          ]
        ],
        align(right)[
          #if tag != none [
            #text(
              font: fonts.display,
              size: 7.5pt,
              weight: 700,
              fill: colors.sand,
              tracking: 1.5pt,
            )[
              #upper(tag)
            ]
            #v(0.8mm)
          ]
          #block[
            #set par(leading: 8.5pt, justify: false)
            #text(
              font: fonts.main,
              size: 15pt,
              weight: 700,
              fill: colors.white,
            )[
              #title
            ]
          ]
          #if english != none [
            #v(3.5mm)
            #text(
              font: fonts.display,
              size: 8.5pt,
              weight: 600,
              fill: colors.sage,
              tracking: 1pt,
            )[
              #upper(english)
            ]
          ]
        ],
      )
    ]
  } else if variant == "full-width" {
    // VARIANT C: Wide Full-Width Banner with Sand Bottom Accent Line
    block(
      width: 100%,
      fill: colors.primary,
      radius: 3pt,
      inset: (x: 8mm, y: 5mm),
      stroke: (bottom: 2.5pt + colors.sand),
    )[
      #grid(
        columns: (1fr, auto),
        align: horizon,
        [
          #if tag != none [
            #text(
              font: fonts.display,
              size: 8pt,
              weight: 700,
              fill: colors.sand,
              tracking: 2pt,
            )[
              #upper(tag)
            ]
            #v(1mm)
          ]
          #block[
            #set par(leading: 9pt, justify: false)
            #text(
              font: fonts.main,
              size: 16pt,
              weight: 700,
              fill: colors.white,
            )[
              #title
            ]
          ]
          #if english != none [
            #v(3.5mm)
            #text(
              font: fonts.display,
              size: 9pt,
              weight: 600,
              fill: colors.sage,
              tracking: 1.2pt,
            )[
              #upper(english)
            ]
          ]
        ],
        align(right)[
          #block(
            fill: colors.primary.lighten(15%),
            radius: 2pt,
            inset: (x: 6pt, y: 3.5pt),
            stroke: 0.5pt + colors.sand,
          )[
            #text(
              font: fonts.display,
              size: 8pt,
              weight: 700,
              fill: colors.sand,
              tracking: 1.5pt,
            )[
              INNOLAB KAMPONG THOM
            ]
          ]
        ],
      )
    ]
  } else if variant == "compact" {
    // VARIANT D: Minimalist Compact Editorial Bar
    block(
      width: 100%,
      fill: colors.paper,
      radius: 2pt,
      inset: (x: 5mm, y: 3.5mm),
      stroke: (
        left: 3.5pt + colors.primary,
        bottom: 0.6pt + colors.line,
      ),
    )[
      #grid(
        columns: (1fr, auto),
        align: horizon,
        [
          #grid(
            columns: (auto, auto),
            gutter: 3mm,
            align: horizon,
            text(
              font: fonts.main,
              size: 13pt,
              weight: 700,
              fill: colors.primary,
            )[
              #title
            ],
            if english != none {
              text(
                font: fonts.display,
                size: 8.5pt,
                weight: 600,
                fill: colors.gray,
                tracking: 0.8pt,
              )[
                \/ #upper(english)
              ]
            },
          )
        ],
        [
          #if tag != none [
            #text(
              font: fonts.display,
              size: 7.5pt,
              weight: 700,
              fill: colors.sand,
              tracking: 1.2pt,
            )[
              #upper(tag)
            ]
          ]
        ],
      )
    ]
  } else {
    // VARIANT A (DEFAULT): Bold Left-Aligned Teal Banner with Sand Accent Bar
    block(
      width: 100%,
      fill: colors.primary,
      radius: 3pt,
      inset: (x: 6mm, y: 4.5mm),
      stroke: (left: 4pt + colors.sand),
    )[
      #grid(
        columns: (1fr, auto),
        align: horizon,
        [
          #if tag != none [
            #text(
              font: fonts.display,
              size: 7.5pt,
              weight: 700,
              fill: colors.sand,
              tracking: 1.5pt,
            )[
              #upper(tag)
            ]
            #v(0.8mm)
          ]
          #block[
            #set par(leading: 8.5pt, justify: false)
            #text(
              font: fonts.main,
              size: 15pt,
              weight: 700,
              fill: colors.white,
            )[
              #title
            ]
          ]
          #if english != none [
            #v(3.5mm)
            #text(
              font: fonts.display,
              size: 8.5pt,
              weight: 600,
              fill: colors.sage,
              tracking: 1pt,
            )[
              #upper(english)
            ]
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
            INNOLAB
          ]
        ],
      )
    ]
  }
}

// ------------------------------------------------------------
// EDITORIAL INNER-PAGE LAYOUT TEMPLATES (Layouts A–E)
// ------------------------------------------------------------

// LAYOUT A: Title/Callout Left, Narrative + Photo Right
#let editorial-layout-a(
  title-block,
  body-block,
  image-block,
  ratio: (0.85fr, 1.15fr),
  gutter: 8mm,
) = {
  block(width: 100%)[
    #grid(
      columns: ratio,
      gutter: gutter,
      [
        #title-block
      ],
      [
        #body-block
        #if image-block != none [
          #v(5mm)
          #image-block
        ]
      ],
    )
  ]
}

// LAYOUT B: Title Right, Photo Left, Content Below
#let editorial-layout-b(
  title-block,
  image-block,
  body-block,
  gutter: 7mm,
) = {
  block(width: 100%)[
    #grid(
      columns: (1fr, 1fr),
      gutter: gutter,
      align: horizon,
      [
        #image-block
      ],
      [
        #title-block
      ],
    )
    #v(5mm)
    #body-block
  ]
}

// LAYOUT C: Wide Title Bar, Two-Column Text, Embedded Image
#let editorial-layout-c(
  banner-block,
  col1-block,
  col2-block,
  image-block: none,
  gutter: 7mm,
) = {
  block(width: 100%)[
    #banner-block
    #v(6mm)
    #if image-block != none [
      #image-block
      #v(6mm)
    ]
    #grid(
      columns: (1fr, 1fr),
      gutter: gutter,
      [
        #col1-block
      ],
      [
        #col2-block
      ],
    )
  ]
}

// LAYOUT D: Edge-Aligned Large Image with Flowing Narrative
#let editorial-layout-d(
  image-block,
  body-block,
  position: "top", // "top" | "left" | "right"
  ratio: (1fr, 1fr),
  gutter: 7mm,
) = {
  if position == "top" {
    block(width: 100%)[
      #image-block
      #v(6mm)
      #body-block
    ]
  } else if position == "left" {
    block(width: 100%)[
      #grid(
        columns: ratio,
        gutter: gutter,
        [#image-block],
        [#body-block],
      )
    ]
  } else {
    block(width: 100%)[
      #grid(
        columns: (ratio.at(1), ratio.at(0)),
        gutter: gutter,
        [#body-block],
        [#image-block],
      )
    ]
  }
}

// LAYOUT E: Half-Page Feature Image with Beside Narrative
#let editorial-layout-e(
  image-block,
  body-block,
  photo-width: 48%,
  gutter: 7mm,
) = {
  block(width: 100%)[
    #grid(
      columns: (photo-width, 1fr),
      gutter: gutter,
      [#image-block],
      [#body-block],
    )
  ]
}


// ------------------------------------------------------------
// 5. EDITORIAL QUOTE / KEY TAKEAWAY CARD
// ------------------------------------------------------------
#let quote-card(
  quote,
  author: none,
  tag: "KEY TAKEAWAY",
) = {
  block(
    width: 100%,
    fill: colors.paper,
    radius: 3pt,
    inset: (x: 6mm, y: 5mm),
    stroke: (
      left: 3.5pt + colors.sand,
      rest: 0.6pt + colors.line,
    ),
  )[
    #text(
      font: fonts.display,
      size: 8pt,
      weight: 700,
      fill: colors.primary,
      tracking: 1.2pt,
    )[
      #tag
    ]
    #v(2.5mm)
    #block[
      #set par(leading: 6.8pt, justify: false)
      #text(
        font: fonts.main,
        size: 10pt,
        fill: colors.text,
        weight: 500,
      )[
        #quote
      ]
    ]
    #if author != none [
      #v(2mm)
      #text(
        font: fonts.display,
        size: 8pt,
        weight: 600,
        fill: colors.gray,
        tracking: 0.5pt,
      )[
        — #author
      ]
    ]
  ]
}

// ------------------------------------------------------------
// 6. TWO-PHOTO VERTICAL STACK (For single-column or right-grid)
// ------------------------------------------------------------
#let photo-stacked-2(
  src1,
  src2,
  tag1: none,
  tag2: none,
  caption: none,
  height1: 60mm,
  height2: 60mm,
) = {
  let s1 = resolve-photo-src(src1)
  let s2 = resolve-photo-src(src2)
  block(width: 100%)[
    #block(
      width: 100%,
      height: height1,
      radius: 3pt,
      clip: true,
      stroke: 0.6pt + colors.line,
    )[
      #image(s1, width: 100%, height: 100%, fit: "cover")
      #if tag1 != none [
        #place(top + left, dx: 3.5mm, dy: 3.5mm)[
          #block(
            fill: colors.primary.transparentize(15%),
            radius: 2pt,
            inset: (x: 6pt, y: 3pt),
            stroke: 0.5pt + colors.sand,
          )[
            #text(font: fonts.display, size: 7.5pt, weight: 700, fill: colors.sand, tracking: 0.8pt)[#upper(tag1)]
          ]
        ]
      ]
    ]
    #v(3mm)
    #block(
      width: 100%,
      height: height2,
      radius: 3pt,
      clip: true,
      stroke: 0.6pt + colors.line,
    )[
      #image(s2, width: 100%, height: 100%, fit: "cover")
      #if tag2 != none [
        #place(top + left, dx: 3.5mm, dy: 3.5mm)[
          #block(
            fill: colors.primary.transparentize(15%),
            radius: 2pt,
            inset: (x: 6pt, y: 3pt),
            stroke: 0.5pt + colors.sand,
          )[
            #text(font: fonts.display, size: 7.5pt, weight: 700, fill: colors.sand, tracking: 0.8pt)[#upper(tag2)]
          ]
        ]
      ]
    ]
    #if caption != none [
      #v(2.5mm)
      #editorial-caption(caption)
    ]
  ]
}
