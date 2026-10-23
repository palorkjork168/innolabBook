// ==============================================================================
// INNOLAB KAMPONG THOM — REPORT EDITORIAL ELEMENTS
// Minimalist, Premium, Interactive Publication Components
// ==============================================================================

#import "../styles.typ": *
#import "catalogue.typ": *

// ------------------------------------------------------------------------------
#let khmer-to-latin-digits(s) = {
  let res = ""
  for c in str(s) {
    if c == "០" { res += "0" }
    else if c == "១" { res += "1" }
    else if c == "២" { res += "2" }
    else if c == "៣" { res += "3" }
    else if c == "៤" { res += "4" }
    else if c == "៥" { res += "5" }
    else if c == "៦" { res += "6" }
    else if c == "៧" { res += "7" }
    else if c == "៨" { res += "8" }
    else if c == "៩" { res += "9" }
    else { res += c }
  }
  if res == "" { "01" } else { res }
}

#let chapter-opener(
  num: "០១",
  latin-num: none,
  title: "",
  subtitle: none,
  kicker: "INNOLAB KAMPONG THOM · របាយការណ៍គម្រោង",
  label-id: none,
) = {
  let l-num = if latin-num != none { latin-num } else { khmer-to-latin-digits(num) }
  [
    #if label-id != none [
      #metadata(title) #label(label-id)
    ]
    #block(width: 100%, inset: (top: 2mm, bottom: 5mm))[
      #rect(
        width: 100%,
        fill: c-paper,
        stroke: (left: 3.5pt + c-teal, rest: 0.5pt + c-line),
        radius: (right: 4pt),
        inset: (x: 5mm, y: 4.5mm),
      )[
        #grid(
          columns: (auto, 1fr, auto),
          gutter: 5mm,
          align: horizon,
          [
            // Giant Outlined Stroke Numeral (Design DNA)
            #box(height: 18mm)[
              #align(center + horizon)[
                #text(font: font-sans, size: 42pt, weight: "black", stroke: 1.6pt + c-sand, fill: rgb("#00000000"))[#l-num]
              ]
            ]
          ],
          [
            #rect(fill: c-teal, radius: 2pt, inset: (x: 2.2mm, y: 1mm))[
              #text(font: font-sans, size: 6.8pt, weight: "bold", fill: c-white, tracking: 0.12em)[#upper(kicker)]
            ]
            #v(1.5mm)
            #text(font: font-khmer-display, size: 16pt, weight: "bold", fill: c-teal)[#title]
            #if subtitle != none [
              \ #v(0.8mm)
              #text(font: font-khmer-body, size: 9pt, fill: c-sand-dark)[#subtitle]
            ]
          ],
          [
            // Rotated Margin Tag (Design DNA)
            #rotate(-90deg)[
              #text(font: font-sans, size: 7pt, weight: "bold", fill: c-muted.lighten(15%), tracking: 0.2em)[CHAPTER #l-num]
            ]
          ]
        )
      ]
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
#let stat-card(
  num,
  label-km,
  label-en: none,
  fill-bg: none,
  variant: "default", // "default", "primary"
) = {
  let is-primary = variant == "primary"
  let bg = if fill-bg != none { fill-bg } else if is-primary { c-teal } else { c-paper }
  let border = if is-primary { none } else { 0.5pt + c-sand.transparentize(30%) }
  let num-fill = if is-primary { c-sand } else { c-teal }
  let label-fill = if is-primary { c-white } else { c-teal.lighten(15%) }
  let en-fill = if is-primary { c-sand-light } else { c-muted }

  rect(
    width: 100%,
    fill: bg,
    stroke: border,
    radius: 3pt,
    inset: (x: 3.5mm, y: 3.2mm),
  )[
    #text(font: font-sans, size: 18pt, weight: "bold", fill: num-fill)[#num]\
    #v(0.8mm)
    #text(font: font-khmer-display, size: 7.8pt, weight: "bold", fill: label-fill)[#label-km]
    #if label-en != none [
      \ #text(font: font-sans, size: 6pt, fill: en-fill)[#upper(label-en)]
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
// 4B. EDITORIAL PILLAR BLOCK (Open Minimalist Typography for Activities)
// ------------------------------------------------------------------------------
#let editorial-block(
  tag: "",
  tag-color: c-teal,
  content,
) = {
  v(1.5mm)
  grid(
    columns: (auto, 1fr),
    gutter: 3.5mm,
    align: top,
    [
      #rect(
        fill: tag-color,
        radius: 2pt,
        inset: (x: 2.8mm, y: 1.4mm),
      )[
        #text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-white)[#tag]
      ]
    ],
    [
      #set par(leading: 6.2pt, justify: false)
      #text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[#content]
    ]
  )
  v(1.2mm)
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
  box(
    width: 100%,
    height: height,
    radius: 3pt,
    stroke: 0.6pt + c-sand.lighten(20%),
    clip: true,
  )[
    #image(path, width: 100%, height: 100%, fit: "cover")
  ]
  if caption != none [
    #v(1.8mm)
    #set par(leading: 5.5pt, justify: false)
    #text(font: font-khmer-body, size: 7.2pt, fill: c-muted)[#caption]
  ]
  v(3mm)
}

// ------------------------------------------------------------------------------
// 5C. MINIMALIST EDITORIAL FIGURE (Chapter 4 & Charts — Borderless, Open Layout)
// ------------------------------------------------------------------------------
#let report-figure(
  img-path,
  num: none,
  title: "",
  width: 86%,
) = {
  v(3mm)
  align(center)[
    #box(width: width)[
      #image(img-path, width: 100%, fit: "contain")
      #v(2mm)
      #line(length: 100%, stroke: 0.5pt + c-sand.lighten(25%))
      #v(1.2mm)
      #grid(
        columns: (auto, 1fr),
        gutter: 2.5mm,
        align: top,
        if num != none [
          #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-teal)[#num ៖]
        ],
        [
          #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[#title]
        ]
      )
    ]
  ]
  v(3.5mm)
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
  v(1.5mm)

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

  let photo-box(w: 38mm, h: 48mm) = [
    #if photo-path != none [
      #box(
        width: w,
        height: h,
        stroke: 0.8pt + c-sand,
        radius: 3pt,
        clip: true,
      )[
        #image(photo-path, width: w, height: h, fit: "cover")
      ]
    ] else [
      #rect(
        width: w,
        height: h,
        fill: c-line,
        radius: 3pt,
      )
    ]
    #v(0.8mm)
    #align(center)[
      #text(font: font-sans, size: 5.6pt, weight: "bold", fill: c-muted, tracking: 0.08em)[SME #num · INNOLAB]
    ]
  ]

  block(width: 100%)[
    #grid(
      columns: (1fr, auto),
      align: horizon,
      [
        #grid(
          columns: (auto, 1fr),
          gutter: 2.5mm,
          align: horizon,
          [
            #rect(fill: c-teal, radius: 2pt, inset: (x: 2.2mm, y: 1.2mm))[
              #text(font: font-sans, size: 6.8pt, weight: "bold", fill: c-white)[#num]
            ]
          ],
          [
            #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-teal)[#founder-name]
            #h(2mm)
            #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-sand-dark)[#enterprise-name]
          ]
        )
      ],
      badge-block
    )
    #v(1mm)
    #line(length: 100%, stroke: 0.4pt + c-sand.lighten(30%))
    #v(2mm)

    #if layout == "right" [
      #grid(
        columns: (1fr, 38mm),
        gutter: 5mm,
        align: top,
        [
          #set par(leading: 5.8pt, justify: false)
          #if body-paras.len() >= 1 [
            #text(font: font-khmer-body, size: 7.9pt, fill: c-charcoal)[#body-paras.at(0)]
          ]
          #if body-paras.len() >= 2 [
            #v(1.5mm)
            #rect(
              width: 100%,
              fill: c-paper.lighten(30%),
              stroke: (left: 2.5pt + c-sand),
              radius: (right: 2pt),
              inset: (x: 3mm, y: 2mm),
            )[
              #text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-sand-dark)[#innovation-title]\
              #v(0.3mm)
              #set par(leading: 5.6pt, justify: false)
              #text(font: font-khmer-body, size: 7.6pt, fill: c-charcoal)[#body-paras.at(1)]
            ]
          ]
        ],
        [
          #photo-box(w: 38mm, h: 48mm)
        ]
      )
    ] else [
      #grid(
        columns: (38mm, 1fr),
        gutter: 5mm,
        align: top,
        [
          #photo-box(w: 38mm, h: 48mm)
        ],
        [
          #set par(leading: 5.8pt, justify: false)
          #if body-paras.len() >= 1 [
            #text(font: font-khmer-body, size: 7.9pt, fill: c-charcoal)[#body-paras.at(0)]
          ]
          #if body-paras.len() >= 2 [
            #v(1.5mm)
            #rect(
              width: 100%,
              fill: c-paper.lighten(30%),
              stroke: (left: 2.5pt + c-teal),
              radius: (right: 2pt),
              inset: (x: 3mm, y: 2mm),
            )[
              #text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-teal)[#innovation-title]\
              #v(0.3mm)
              #set par(leading: 5.6pt, justify: false)
              #text(font: font-khmer-body, size: 7.6pt, fill: c-charcoal)[#body-paras.at(1)]
            ]
          ]
        ]
      )
    ]
  ]
  v(3mm)
}

// ------------------------------------------------------------------------------
// 6B. SME FEATURE SPREAD (Full Page Open Minimalist Magazine Profile)
// ------------------------------------------------------------------------------
#let sme-feature-spread(
  num: "០១",
  founder-name: "",
  enterprise-name: "",
  enterprise-en: none,
  photo-path: none,
  body-paras: (),
  sector: "កសិកម្ម និងកែច្នៃ",
  location: "ខេត្តកំពង់ធំ",
  award: none,
  innovation-title: "ដំណោះស្រាយនវានុវត្តន៍៖",
) = {
  block(
    width: 100%,
    height: 100%,
    inset: 0pt,
  )[
    // 1. TOP HEADER (OPEN, BALANCED 2-ROW HIERARCHY)
    #grid(
      columns: (1fr, auto),
      align: horizon,
      [
        #grid(
          columns: (auto, 1fr),
          gutter: 3mm,
          align: horizon,
          [
            #rect(fill: c-teal, radius: 2pt, inset: (x: 2.8mm, y: 1.4mm))[
              #text(font: font-sans, size: 7.2pt, weight: "bold", fill: c-white)[SME #num]
            ]
          ],
          [
            #text(font: font-khmer-display, size: 17pt, weight: "bold", fill: c-teal)[#founder-name]
          ]
        )
      ],
      [
        #if award != none [
          #rect(fill: c-sand.lighten(15%), radius: 3pt, inset: (x: 3.5mm, y: 2mm))[
            #text(font: font-khmer-display, size: 8pt, weight: "bold", fill: c-charcoal)[★ #award]
          ]
        ]
      ]
    )
    #v(1.2mm)
    #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-sand-dark)[#enterprise-name]
    #if enterprise-en != none [
      #h(2mm)
      #text(font: font-sans, size: 8pt, fill: c-muted)[· #enterprise-en]
    ]
    #v(2mm)
    #line(length: 100%, stroke: 0.6pt + c-sand.lighten(20%))
    #v(3.5mm)

    // 2. HERO ROW: NATURAL FLOATING PORTRAIT + OPEN METADATA
    #grid(
      columns: (45mm, 1fr),
      gutter: 6mm,
      align: top,
      [
        #box(
          width: 45mm,
          height: 60mm,
          radius: 3pt,
          stroke: 0.8pt + c-sand,
          clip: true,
        )[
          #if photo-path != none [
            #image(photo-path, width: 100%, height: 100%, fit: "cover")
          ]
        ]
        #v(1.5mm)
        #align(center)[
          #text(font: font-sans, size: 6pt, weight: "bold", fill: c-teal, tracking: 0.08em)[OFFICIAL PORTRAIT · INNOLAB]
        ]
      ],
      [
        #grid(
          columns: (1fr, 1fr),
          gutter: 5mm,
          [
            #text(font: font-sans, size: 6.8pt, weight: "bold", fill: c-muted)[SECTOR / វិស័យ]\
            #v(0.6mm)
            #text(font: font-khmer-body, size: 8.8pt, weight: "bold", fill: c-teal)[#sector]\
          ],
          [
            #text(font: font-sans, size: 6.8pt, weight: "bold", fill: c-muted)[LOCATION / ទីតាំង]\
            #v(0.6mm)
            #text(font: font-khmer-body, size: 8.8pt, weight: "bold", fill: c-teal)[#location]
          ]
        )
        #if enterprise-en != none [
          #v(2.5mm)
          #line(length: 100%, stroke: 0.4pt + c-line)
          #v(2mm)
          #text(font: font-sans, size: 6.8pt, weight: "bold", fill: c-muted)[ENTERPRISE (EN)]\
          #v(0.6mm)
          #text(font: font-sans, size: 8.5pt, weight: "bold", fill: c-charcoal)[#enterprise-en]
        ]
        #v(3mm)
        #rect(fill: c-paper, radius: 2pt, inset: (x: 3mm, y: 1.8mm))[
          #text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-teal)[INNOLAB KAMPONG THOM · COHORT 1 FINALIST]
        ]
      ]
    )
    #v(5mm)

    // 3. EDITORIAL STORY: TWO AIRY OPEN COLUMNS
    #grid(
      columns: (1fr, 1fr),
      gutter: 7mm,
      [
        #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-teal)[ប្រវត្តិ និងចក្ខុវិស័យសហគមន៍]\
        #v(1.5mm)
        #set par(leading: 6.2pt, justify: false)
        #if body-paras.len() >= 1 [
          #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[#body-paras.at(0)]
        ]
      ],
      [
        #if body-paras.len() >= 2 [
          #rect(
            width: 100%,
            fill: c-paper.lighten(30%),
            stroke: (left: 3pt + c-teal),
            radius: (right: 2pt),
            inset: (x: 4mm, y: 3.5mm),
          )[
            #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[#innovation-title]\
            #v(1.2mm)
            #set par(leading: 6pt, justify: false)
            #text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[#body-paras.at(1)]
          ]
        ]
      ]
    )
  ]
}

// ------------------------------------------------------------------------------
// 6C. SPLIT COLOR-BLOCK FEATURE SPREAD (Option 2 — Flourish Magazine Style)
// ------------------------------------------------------------------------------
#let split-colorblock-feature(
  kicker: "SPECIAL FEATURE",
  title: "",
  subtitle: "",
  left-photo: none,
  left-caption: none,
  left-text: none,
  extra-blocks: (),
  quote: "",
  quote-sub: none,
  inset-photo: none,
  inset-caption: none,
  right-text: none,
  metric-box: none,
  kpi-badge: none,
) = {
  block(
    width: 100%,
    height: 100%,
    fill: c-paper,
    radius: 4pt,
    stroke: 0.5pt + c-line,
    clip: true,
    inset: 0pt,
  )[
    #grid(
      columns: (1fr, 1fr),
      gutter: 0mm,
      [
        // LEFT SIDE: EDITORIAL NARRATIVE & DOCUMENTARY PHOTO
        #pad(x: 5.5mm, y: 5.5mm)[
          #if kicker != none [
            #rect(fill: c-teal, radius: 2pt, inset: (x: 2.2mm, y: 1mm))[
              #text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-white, tracking: 0.1em)[#upper(kicker)]
            ]
            #v(1.5mm)
          ]
          #text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[#title]\
          #if subtitle != "" [
            #v(0.3mm)
            #text(font: font-sans, size: 6.8pt, fill: c-muted)[#subtitle]
          ]
          #v(2.5mm)

          #if left-photo != none [
            #box(
              width: 100%,
              height: 48mm,
              radius: 3pt,
              stroke: 0.5pt + c-sand,
              clip: true,
            )[
              #image(left-photo, width: 100%, height: 48mm, fit: "cover")
            ]
            #if left-caption != none [
              #v(0.8mm)
              #text(font: font-khmer-body, size: 6.5pt, fill: c-muted)[#left-caption]
            ]
          ]
          #v(2mm)

          #set par(leading: 5.6pt, justify: false)
          #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#left-text]

          #for b in extra-blocks [
            #v(1.8mm)
            #b
          ]
        ]
      ],
      [
        // RIGHT SIDE: SOLID TEAL EDITORIAL COLOR-BLOCK
        #rect(
          width: 100%,
          height: 100%,
          fill: c-teal,
          inset: (x: 5.5mm, y: 5.5mm),
        )[
          #if inset-photo != none [
            #box(
              width: 100%,
              height: 48mm,
              stroke: 1.2pt + c-sand,
              radius: 3pt,
              clip: true,
            )[
              #image(inset-photo, width: 100%, height: 48mm, fit: "cover")
            ]
            #if inset-caption != none [
              #v(0.8mm)
              #text(font: font-khmer-body, size: 6.5pt, fill: c-sand-light)[#inset-caption]
            ]
            #v(3mm)
          ]

          #grid(
            columns: (auto, 1fr),
            gutter: 2.5mm,
            align: top,
            [
              #text(font: font-sans, size: 24pt, weight: "black", fill: c-sand)[“]
            ],
            [
              #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-sand-light)[#quote]
              #if quote-sub != none [
                #v(0.5mm)
                #text(font: font-sans, size: 6.5pt, fill: c-sand)[#quote-sub]
              ]
            ]
          )
          #v(2.5mm)

          #set par(leading: 5.8pt, justify: false)
          #text(font: font-khmer-body, size: 7.8pt, fill: c-white)[#right-text]

          #if metric-box != none [
            #v(3mm)
            #metric-box
          ]

          #if kpi-badge != none [
            #v(3mm)
            #rect(fill: c-sand, radius: 2.5pt, inset: (x: 3.5mm, y: 1.8mm))[
              #text(font: font-khmer-body, size: 7.8pt, weight: "bold", fill: c-charcoal)[★ #kpi-badge]
            ]
          ]
        ]
      ]
    )
  ]
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
