// ==============================================================================
// INNOLAB KAMPONG THOM — REPORT EDITORIAL ELEMENTS
// Minimalist, Premium, Interactive Publication Components
// ==============================================================================

#import "../styles.typ": *
#import "catalogue.typ": *

// ------------------------------------------------------------------------------
// 1. CHAPTER HERO OPENER
// ------------------------------------------------------------------------------
#let chapter-opener(
  num: "០១",
  title: "",
  subtitle: none,
  kicker: "INNOLAB KAMPONG THOM · របាយការណ៍គម្រោង",
  label-id: none,
) = {
  [
    #if label-id != none [
      #metadata(title) #label(label-id)
    ]
    #block(width: 100%, inset: (top: 4mm, bottom: 8mm))[
      #grid(
        columns: (auto, 1fr),
        gutter: 6mm,
        align: horizon,
        [
          #text(font: font-sans, size: 44pt, weight: "bold", fill: c-sand)[#num]
        ],
      [
        #text(font: font-sans, size: 8pt, weight: "bold", fill: c-muted, tracking: 0.16em)[#upper(kicker)]\
        #v(1mm)
        #text(font: font-khmer-display, size: 18pt, weight: "bold", fill: c-teal)[#title]
        #if subtitle != none [
          \ #v(1mm)
          #text(font: font-khmer-body, size: 9.5pt, fill: c-sand-dark)[#subtitle]
        ]
      ]
    )
    #v(3mm)
    #line(length: 100%, stroke: 1pt + c-sand)
    #v(4mm)
  ]
]
}

// ------------------------------------------------------------------------------
// 2. SECTION HEADER
// ------------------------------------------------------------------------------
#let section-title(title, num: none) = {
  v(5mm)
  block(width: 100%)[
    #grid(
      columns: if num != none { (auto, 1fr) } else { (1fr,) },
      gutter: 3mm,
      align: horizon,
      if num != none [
        #rect(fill: c-teal, inset: (x: 2.5mm, y: 1.5mm), radius: 2pt)[
          #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-white)[#num]
        ]
      ],
      [
        #text(font: font-khmer-display, size: 12.5pt, weight: "bold", fill: c-teal)[#title]
      ]
    )
    #v(1.5mm)
    #line(length: 100%, stroke: 0.5pt + c-sand.lighten(30%))
    #v(2.5mm)
  ]
}

// ------------------------------------------------------------------------------
// 3. EDITORIAL METRIC CARD
// ------------------------------------------------------------------------------
#let stat-card(num, label-km, label-en: none, fill-bg: c-paper) = {
  rect(
    width: 100%,
    fill: fill-bg,
    stroke: 0.5pt + c-sand.transparentize(40%),
    radius: 3pt,
    inset: (x: 4mm, y: 3.5mm),
  )[
    #text(font: font-sans, size: 20pt, weight: "bold", fill: c-teal)[#num]\
    #v(1mm)
    #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-teal.lighten(15%))[#label-km]
    #if label-en != none [
      \ #text(font: font-sans, size: 6.5pt, fill: c-muted)[#label-en]
    ]
  ]
}

// ------------------------------------------------------------------------------
// 4. CALLOUT BOX (Structured Goals, Challenges, Results)
// ------------------------------------------------------------------------------
#let callout-card(
  title: none,
  body-content,
  badge: none,
  border-color: c-sand,
  bg-color: c-paper,
) = {
  v(2mm)
  rect(
    width: 100%,
    fill: bg-color,
    stroke: (left: 2.5pt + border-color, rest: 0.5pt + c-line),
    radius: (right: 3pt),
    inset: (x: 4.5mm, y: 3.5mm),
  )[
    #if title != none or badge != none [
      #grid(
        columns: (1fr, auto),
        align: horizon,
        if title != none [
          #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[#title]
        ],
        if badge != none [
          #rect(fill: border-color, inset: (x: 2mm, y: 1mm), radius: 2pt)[
            #text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-white)[#badge]
          ]
        ]
      )
      #v(1.5mm)
      #line(length: 100%, stroke: 0.5pt + c-line)
      #v(2mm)
    ]
    #set par(leading: 6.8pt, justify: true)
    #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[#body-content]
  ]
  v(2mm)
}

// ------------------------------------------------------------------------------
// 5. ACTIVITY BANNER (Chapter 2)
// ------------------------------------------------------------------------------
#let activity-banner(num, title, date: none) = {
  v(6mm)
  rect(
    width: 100%,
    fill: c-teal,
    radius: 3pt,
    inset: (x: 5mm, y: 3.5mm),
  )[
    #grid(
      columns: (auto, 1fr, auto),
      align: horizon,
      gutter: 3.5mm,
      [
        #rect(fill: c-sand, inset: (x: 2.5mm, y: 1.5mm), radius: 2pt)[
          #text(font: font-khmer-display, size: 8pt, weight: "bold", fill: c-teal)[#num]
        ]
      ],
      [
        #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-white)[#title]
      ],
      if date != none [
        #text(font: font-sans, size: 7.5pt, fill: c-sand-light)[#date]
      ]
    )
  ]
  v(3mm)
}

// ------------------------------------------------------------------------------
// 5B. DOCUMENTARY PHOTO BANNER
// ------------------------------------------------------------------------------
#let documentary-photo(path, caption: none, height: 60mm) = {
  v(2.5mm)
  rect(
    width: 100%,
    fill: c-paper,
    stroke: 0.5pt + c-sand.transparentize(40%),
    radius: 3pt,
    inset: 2.5mm,
  )[
    #box(
      width: 100%,
      height: height,
      radius: 2pt,
      clip: true,
    )[
      #image(path, width: 100%, height: height, fit: "cover")
    ]
    #if caption != none [
      #v(1.8mm)
      #set par(leading: 5.5pt, justify: false)
      #text(font: font-khmer-body, size: 7.2pt, fill: c-muted)[#caption]
    ]
  ]
  v(3mm)
}

// ------------------------------------------------------------------------------
// 6. SME PROFILE CARD (Chapter 3) — DYNAMIC EDITORIAL VARIANTS
// ------------------------------------------------------------------------------
#let sme-profile(
  num: "០១",
  founder-name: "",
  enterprise-name: "",
  photo-path: none,
  body-paras: (),
  sector: "កសិកម្ម និងកែច្នៃ",
  layout: "left", // "left", "right", "banner", "spotlight"
  award: none, // e.g. "ជ័យលាភីលេខ ១"
  innovation-title: "ដំណោះស្រាយនវានុវត្តន៍៖",
) = {
  v(1mm)

  let badge-block = [
    #if award != none [
      #rect(fill: c-sand-dark, inset: (x: 2mm, y: 0.9mm), radius: 2pt)[
        #text(font: font-khmer-display, size: 6.5pt, weight: "bold", fill: c-white)[★ #award]
      ]
      #h(1.5mm)
    ]
    #rect(fill: c-teal.lighten(15%), inset: (x: 2mm, y: 0.9mm), radius: 2pt)[
      #text(font: font-khmer-body, size: 6.5pt, weight: "bold", fill: c-white)[#sector]
    ]
  ]

  let photo-box(w: 36mm, h: 43mm) = [
    #if photo-path != none [
      #box(
        width: w,
        height: h,
        stroke: 0.5pt + c-sand,
        radius: 2pt,
        clip: true,
      )[
        #image(photo-path, width: w, height: h, fit: "cover")
      ]
    ] else [
      #rect(
        width: w,
        height: h,
        fill: c-line,
        radius: 2pt,
      )
    ]
    #v(0.8mm)
    #align(center)[
      #text(font: font-sans, size: 5.6pt, weight: "bold", fill: c-muted, tracking: 0.08em)[SME #num · INNOLAB]
    ]
  ]

  if layout == "banner" {
    // --------------------------------------------------------------------------
    // VARIANT: FULL-WIDTH INNOVATION FEATURE (Portrait Photo + Bottom Callout)
    // --------------------------------------------------------------------------
    rect(
      width: 100%,
      fill: c-paper,
      stroke: (top: 2pt + c-teal, rest: 0.5pt + c-sand.transparentize(35%)),
      radius: (bottom: 3pt),
      inset: (x: 4.2mm, y: 2.8mm),
    )[
      #grid(
        columns: (1fr, auto),
        align: horizon,
        [
          #text(font: font-khmer-display, size: 10.2pt, weight: "bold", fill: c-teal)[#num. #founder-name]
          #h(2mm)
          #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-sand-dark)[#enterprise-name]
        ],
        badge-block
      )
      #v(1mm)
      #line(length: 100%, stroke: 0.4pt + c-sand.lighten(30%))
      #v(1.5mm)
      #grid(
        columns: (36mm, 1fr),
        gutter: 4mm,
        align: top,
        [
          #photo-box(w: 36mm, h: 43mm)
        ],
        [
          #set par(leading: 5.8pt, justify: true)
          #if body-paras.len() >= 1 [
            #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#body-paras.at(0)]
          ]
        ]
      )
      #if body-paras.len() >= 2 [
        #v(1.2mm)
        #rect(
          width: 100%,
          fill: c-white,
          stroke: (left: 2pt + c-teal, rest: 0.4pt + c-line),
          radius: (right: 2pt),
          inset: (x: 3mm, y: 2mm),
        )[
          #text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-teal)[#innovation-title]\
          #v(0.4mm)
          #set par(leading: 5.6pt, justify: true)
          #text(font: font-khmer-body, size: 7.6pt, fill: c-charcoal)[#body-paras.at(1)]
        ]
      ]
    ]
  } else if layout == "spotlight" {
    // --------------------------------------------------------------------------
    // VARIANT: SPOTLIGHT CARD (Distinguished Finalists & Award Winners)
    // --------------------------------------------------------------------------
    rect(
      width: 100%,
      fill: c-paper,
      stroke: (left: 3pt + c-sand-dark, rest: 0.6pt + c-sand.transparentize(25%)),
      radius: (right: 3pt),
      inset: (x: 4.2mm, y: 2.8mm),
    )[
      #if award != none [
        #rect(width: 100%, fill: c-teal, inset: (x: 2.5mm, y: 1.2mm), radius: 2pt)[
          #grid(
            columns: (1fr, auto),
            align: horizon,
            [
              #text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-sand-light)[★ #award]
            ],
            [
              #text(font: font-sans, size: 5.8pt, weight: "bold", fill: c-white.transparentize(20%), tracking: 0.08em)[HONORED FINALIST · INNOLAB]
            ]
          )
        ]
        #v(1.5mm)
      ]
      #grid(
        columns: (1fr, auto),
        align: horizon,
        [
          #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-teal)[#num. #founder-name]\
          #v(0.3mm)
          #text(font: font-khmer-display, size: 8.4pt, weight: "bold", fill: c-sand-dark)[#enterprise-name]
        ],
        badge-block
      )
      #v(1mm)
      #line(length: 100%, stroke: 0.5pt + c-sand)
      #v(1.5mm)
      #grid(
        columns: (38mm, 1fr),
        gutter: 4mm,
        align: top,
        [
          #photo-box(w: 38mm, h: 44mm)
        ],
        [
          #set par(leading: 5.9pt, justify: true)
          #if body-paras.len() >= 2 [
            #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#body-paras.at(0)]
            #v(1.2mm)
            #rect(
              width: 100%,
              fill: c-white,
              stroke: (left: 1.8pt + c-sand-dark, rest: 0.4pt + c-line),
              radius: (right: 2pt),
              inset: (x: 2.5mm, y: 1.8mm),
            )[
              #text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-teal)[#innovation-title]\
              #v(0.4mm)
              #set par(leading: 5.7pt, justify: true)
              #text(font: font-khmer-body, size: 7.6pt, fill: c-charcoal)[#body-paras.at(1)]
            ]
          ] else [
            #for p in body-paras [
              #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#p]
              #v(0.8mm)
            ]
          ]
        ]
      )
    ]
  } else if layout == "right" {
    // --------------------------------------------------------------------------
    // VARIANT: RIGHT-PHOTO CARD (Mirrored Dynamic Rhythm)
    // --------------------------------------------------------------------------
    rect(
      width: 100%,
      fill: c-paper,
      stroke: (left: 2.5pt + c-sand, rest: 0.5pt + c-sand.transparentize(40%)),
      radius: (right: 3pt),
      inset: (x: 4.2mm, y: 2.8mm),
    )[
      #grid(
        columns: (1fr, auto),
        align: horizon,
        [
          #text(font: font-khmer-display, size: 10.2pt, weight: "bold", fill: c-teal)[#num. #founder-name]\
          #v(0.3mm)
          #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-sand-dark)[#enterprise-name]
        ],
        badge-block
      )
      #v(1mm)
      #line(length: 100%, stroke: 0.4pt + c-sand.lighten(30%))
      #v(1.5mm)
      #grid(
        columns: (1fr, 36mm),
        gutter: 4mm,
        align: top,
        [
          #set par(leading: 5.9pt, justify: true)
          #for p in body-paras [
            #text(font: font-khmer-body, size: 7.9pt, fill: c-charcoal)[#p]
            #v(0.8mm)
          ]
        ],
        [
          #photo-box(w: 36mm, h: 43mm)
        ]
      )
    ]
  } else {
    // --------------------------------------------------------------------------
    // VARIANT: LEFT-PHOTO CARD (Classic Editorial Layout)
    // --------------------------------------------------------------------------
    rect(
      width: 100%,
      fill: c-paper,
      stroke: (left: 2.5pt + c-teal, rest: 0.5pt + c-sand.transparentize(40%)),
      radius: (right: 3pt),
      inset: (x: 4.2mm, y: 2.8mm),
    )[
      #grid(
        columns: (1fr, auto),
        align: horizon,
        [
          #text(font: font-khmer-display, size: 10.2pt, weight: "bold", fill: c-teal)[#num. #founder-name]\
          #v(0.3mm)
          #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-sand-dark)[#enterprise-name]
        ],
        badge-block
      )
      #v(1mm)
      #line(length: 100%, stroke: 0.4pt + c-sand.lighten(30%))
      #v(1.5mm)
      #grid(
        columns: (36mm, 1fr),
        gutter: 4mm,
        align: top,
        [
          #photo-box(w: 36mm, h: 43mm)
        ],
        [
          #set par(leading: 5.9pt, justify: true)
          #for p in body-paras [
            #text(font: font-khmer-body, size: 7.9pt, fill: c-charcoal)[#p]
            #v(0.8mm)
          ]
        ]
      )
    ]
  }
  v(1mm)
}

// ------------------------------------------------------------------------------
// 7. CHART FIGURE CONTAINER (Chapter 4)
// ------------------------------------------------------------------------------
#let chart-box(
  fig-num: "១",
  caption: "",
  image-path: none,
  analysis-paras: (),
  layout-mode: "stacked", // "stacked" or "side-by-side"
) = {
  v(4mm)
  block(width: 100%)[
    #if layout-mode == "stacked" [
      #if image-path != none [
        #align(center)[
          #rect(
            fill: c-white,
            stroke: 0.5pt + c-line,
            radius: 3pt,
            inset: 2.5mm,
          )[
            #image(image-path, width: 92%, fit: "contain")
          ]
        ]
        #v(2mm)
      ]
      #rect(width: 100%, fill: c-paper, stroke: (left: 2pt + c-sand, rest: 0.5pt + c-line), radius: (right: 2pt), inset: (x: 3.5mm, y: 2mm))[
        #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-teal)[រូបភាពទី #fig-num ៖ ]
        #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[#caption]
      ]
      #if analysis-paras.len() > 0 [
        #v(2.5mm)
        #set par(leading: 6.8pt, justify: true)
        #for p in analysis-paras [
          #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[#p]
          #v(1.8mm)
        ]
      ]
    ] else [
      #grid(
        columns: (1fr, 1fr),
        gutter: 4.5mm,
        align: top,
        [
          #if image-path != none [
            #rect(
              fill: c-white,
              stroke: 0.5pt + c-line,
              radius: 3pt,
              inset: 2mm,
            )[
              #image(image-path, width: 100%, fit: "contain")
            ]
            #v(1.5mm)
          ]
          #rect(width: 100%, fill: c-paper, stroke: (left: 2pt + c-sand, rest: 0.5pt + c-line), radius: (right: 2pt), inset: (x: 3mm, y: 1.8mm))[
            #text(font: font-khmer-display, size: 8pt, weight: "bold", fill: c-teal)[រូបភាពទី #fig-num ៖ ]
            #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[#caption]
          ]
        ],
        [
          #set par(leading: 6.8pt, justify: true)
          #for p in analysis-paras [
            #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[#p]
            #v(1.8mm)
          ]
        ]
      )
    ]
  ]
  v(3mm)
}
