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
  title: "",
  hero-image: none,
  apply-gradient: true,
  label-id: none,
  latin-num: none, // backwards compatibility
  subtitle: none,  // backwards compatibility
  kicker: none,    // backwards compatibility
) = {
  // Page 1: Left Opener Typography (Exact Figma Proportions & Kdam Thmor Pro)
  page(
    paper: "a4",
    margin: (top: 0mm, bottom: 0mm, left: 0mm, right: 0mm),
    header: none,
    footer: none,
    fill: c-teal,
  )[
    #place(top + left, rect(width: 100%, height: 100%, fill: c-teal))
    #if label-id != none [
      #metadata(title) #label(label-id)
    ]
    #place(top + center, dy: 45mm)[
      #text(font: "Kdam Thmor Pro", size: 36pt, fill: c-white)[ជំពូក]
    ]

    #place(top + center, dy: 92mm)[
      #text(font: "Kdam Thmor Pro", size: 165pt, fill: c-sand)[#num]
    ]

    #place(top + center, dy: 178mm, block(width: 80%)[
      #align(center)[
        #set par(leading: 24pt)
        #text(font: "Kdam Thmor Pro", size: 24pt, fill: c-white)[#title]
      ]
    ])

    #place(top + center, dy: 245mm)[
      #line(length: 60mm, stroke: 2pt + c-sand)
    ]
  ]

  // Page 2: Right Hero Photo Spread Page with Brand Teal Gradient
  if hero-image != none [
    #page(
      paper: "a4",
      margin: (top: 0mm, bottom: 0mm, left: 0mm, right: 0mm),
      header: none,
      footer: none,
      fill: c-teal,
    )[
      #place(top + left, rect(width: 100%, height: 100%, fill: c-teal))
      #place(top + left, image(hero-image, width: 100%, height: 100%, fit: "cover"))
      #if apply-gradient [
        #place(top + left, rect(
          width: 100%,
          height: 100%,
          fill: gradient.linear(
            c-teal.transparentize(70%),
            c-teal.transparentize(50%),
            c-teal.transparentize(15%),
            angle: 90deg,
          )
        ))
      ]
    ]
  ]
}

// ------------------------------------------------------------------------------
// 1b. BOLD EDITORIAL CHAPTER OPENER SPREAD (WARM GOLD / CUSTOM FULL-BLEED)
// ------------------------------------------------------------------------------
#let bold-chapter-opener(
  num: "០៥",
  title-khmer: [ផែនការ និងទិសដៅយុទ្ធសាស្ត្រ \ ឆ្នាំ២០២៦-២០២៨],
  subtitle-khmer: "ការពង្រីកប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍ និងការគាំទ្រសហគ្រិនប្រកបដោយចីរភាព",
  intro-body: [
    ផ្អែកលើលទ្ធផលជោគជ័យ និងមេរៀនបទពិសោធន៍ដែលបានប្រមូលផ្តុំពីការអនុវត្តគម្រោងក្នុងរដូវកាលទី ១ គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ បានរៀបចំ និងដាក់ចេញនូវផែនការយុទ្ធសាស្ត្ររយៈពេលមធ្យម សម្រាប់ឆ្នាំ២០២៦ ដល់ឆ្នាំ២០២៨ ក្នុងគោលបំណងបន្តពង្រីកវិសាលភាព ឥទ្ធិពល និងធានានិរន្តរភាពនៃការអភិវឌ្ឍប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍ក្នុងខេត្ត។
  ],
  quote-body: [
    «ការកសាងអនាគតសេដ្ឋកិច្ចមូលដ្ឋាន តាមរយៈការពង្រឹងសមត្ថភាពនវានុវត្តន៍សហគ្រិនកម្ពុជា»
  ],
  bg-color: c-teal, // Official Brand Primary Teal
  accent-color: c-sand, // Official Brand Sand Accent (Zero Yellow)
  label-id: none,
) = {
  // Page 1: Left Opener (Verso)
  page(
    paper: "a4",
    margin: 0pt,
    fill: bg-color,
    header: none,
    footer: none,
  )[
    #if label-id != none [
      #metadata(title-khmer) #label(label-id)
    ]

    // Giant Rotated Vertical Text Bleeding on Far Left Margin
    #place(bottom + left, dx: 17mm, dy: -10mm)[
      #rotate(-90deg, origin: bottom + left)[
        #block(width: 220mm)[
          #text(
            font: "Kantumruy Pro",
            size: 64pt,
            weight: "bold",
            fill: c-white.transparentize(25%),
          )[ជំពូកទី~#num]
        ]
      ]
    ]

    // Running Header Top Left
    #place(top + left, dx: 36mm, dy: 20mm)[
      #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: accent-color)[
        #num · ជំពូកទី #num
      ]
    ]

    // Title & Intro Block
    #place(top + left, dx: 36mm, dy: 54mm, block(width: 145mm)[
      #set par(leading: 14pt)
      #text(
        font: "Kdam Thmor Pro",
        size: 28pt,
        weight: "bold",
        fill: c-white,
      )[#title-khmer]

      #v(6mm)
      // Brand Accent Pill
      #rect(width: 24mm, height: 4.5mm, radius: 2.2pt, fill: accent-color)

      #v(8mm)
      #set par(leading: 8pt, justify: true)
      #text(
        font: font-khmer-body,
        size: 10pt,
        fill: c-paper.transparentize(10%),
      )[#intro-body]
    ])
  ]

  // Page 2: Right Hero Spread (Recto)
  page(
    paper: "a4",
    margin: 0pt,
    fill: bg-color,
    header: none,
    footer: none,
  )[
    // Top Bleed Brand Accent Tab
    #place(top + left, dx: 55mm, dy: 0mm)[
      #rect(width: 34mm, height: 4.5mm, fill: accent-color, radius: (bottom: 2pt))
    ]

    // Running Header Top Right
    #place(top + right, dx: -24mm, dy: 20mm)[
      #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: accent-color)[
        មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · #num
      ]
    ]

    // Secondary Narrative / Mission Kicker
    #place(bottom + right, dx: -28mm, dy: -125mm, block(width: 105mm)[
      #set par(leading: 7.2pt, justify: true)
      #text(
        font: font-khmer-display,
        size: 11.5pt,
        weight: "bold",
        fill: c-white,
      )[#quote-body]
      #v(3.5mm)
      #text(
        font: font-khmer-body,
        size: 9.5pt,
        fill: c-sand-light,
      )[#subtitle-khmer]
    ])

    // GIGANTIC Brand Sand Bleed Numeral at Bottom-Right
    #place(bottom + right, dx: -4mm, dy: 6mm)[
      #text(
        font: "Kdam Thmor Pro",
        size: 200pt,
        weight: "bold",
        fill: accent-color,
      )[#num]
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
    fill: none,
    stroke: (left: 2.5pt + border-color),
    inset: (left: 4.5mm, y: 1.5mm),
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
        #set par(leading: 9pt)
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
// 6C. SPLIT COLOR-BLOCK FEATURE SPREAD (Full-Bleed 50/50 Editorial Layout)
// ------------------------------------------------------------------------------
#let split-colorblock-feature(
  kicker: none,
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
  page(
    paper: "a4",
    margin: (top: 0pt, bottom: 0pt, left: 0pt, right: 0pt),
    fill: none,
    header: none,
    footer: none,
  )[
    // 1. Full-bleed background: 50% paper (left) + 50% deep teal (right)
    #place(top + left, rect(width: 105mm, height: 297mm, fill: c-paper))
    #place(top + left, dx: 105mm, rect(width: 105mm, height: 297mm, fill: c-teal))

    // 2. Running headers
    #place(top + left, dx: 16mm, dy: 13mm)[
      #text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-teal)[
        INNOLAB KAMPONG THOM · របាយការណ៍គម្រោង
      ]
    ]
    #place(top + right, dx: -16mm, dy: 13mm)[
      #text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-sand-light)[
        សកម្មភាពគម្រោង និងសមិទ្ធផល
      ]
    ]

    // 3. Left Column Content (dx: 16mm, width: 80mm)
    #place(top + left, dx: 16mm, dy: 22mm, block(width: 80mm)[
      #if kicker != none [
        #rect(fill: c-teal, radius: 2pt, inset: (x: 2.2mm, y: 1mm))[
          #text(font: font-khmer-display, size: 6.8pt, weight: "bold", fill: c-white)[#kicker]
        ]
        #v(1.5mm)
      ]
      #text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[#title]\
      #if subtitle != "" [
        #v(0.6mm)
        #text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-sand-dark)[#subtitle]
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
    ])

    // 4. Right Column Content (dx: 114mm, width: 80mm)
    #place(top + left, dx: 114mm, dy: 22mm, block(width: 80mm)[
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

      #if quote != "" [
        #rect(
          width: 100%,
          fill: rgb("#062228").transparentize(25%),
          stroke: (left: 2.2pt + c-sand, rest: none),
          radius: (right: 3pt),
          inset: (x: 3mm, y: 2.5mm),
        )[
          #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-sand-light)[“#quote”]\
          #if quote-sub != none [
            #v(1mm)
            #text(font: font-khmer-display, size: 6.8pt, weight: "bold", fill: c-sand)[#quote-sub]
          ]
        ]
        #v(2.5mm)
      ]

      #if right-text != none [
        #set par(leading: 5.6pt, justify: false)
        #text(font: font-khmer-body, size: 7.8pt, fill: rgb("#d8e8ea"))[#right-text]
        #v(2.5mm)
      ]

      #if metric-box != none [
        #rect(
          width: 100%,
          fill: rgb("#062228").transparentize(35%),
          stroke: 0.5pt + c-sand.transparentize(50%),
          radius: 3pt,
          inset: 3mm,
        )[#metric-box]
        #v(2.5mm)
      ]

      #if kpi-badge != none [
        #rect(
          width: 100%,
          fill: c-sand,
          radius: 2pt,
          inset: (x: 3mm, y: 1.8mm),
        )[
          #align(center)[
            #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[★ #kpi-badge]
          ]
        ]
      ]
    ])

    // 5. Folios / bottom footer
    #place(top + left, dx: 16mm, dy: 280mm)[
      #text(font: font-khmer-body, size: 6.8pt, fill: c-muted)[
        របាយការណ៍សមិទ្ធផលគម្រោង InnoLab Kampong Thom
      ]
    ]
    #place(top + right, dx: -16mm, dy: 280mm)[
      #context {
        let p = counter(page).get().first()
        text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-sand)[#to-khmer-num(p)]
      }
    ]
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
      #block(width: 100%, stroke: (left: 2.5pt + c-sand), inset: (left: 3.5mm, y: 1mm))[
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
          #block(width: 100%, stroke: (left: 2.5pt + c-sand), inset: (left: 3mm, y: 1mm))[
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

// ------------------------------------------------------------------------------
// 21. EQUAL-HEIGHT BOX GRID
// Ensures all cards/boxes in a row or grid have the exact same uniform height.
// ------------------------------------------------------------------------------
#let equal-box(
  body,
  fill: auto,
  stroke: auto,
  radius: auto,
  inset: auto,
) = (
  _type: "equal-box",
  body: body,
  fill: fill,
  stroke: stroke,
  radius: radius,
  inset: inset,
)

#let unwrap-rect(it) = {
  if type(it) == content {
    if it.func() == rect {
      return it
    }
    let fields = it.fields()
    if "children" in fields {
      let filtered = fields.children.filter(c => {
        repr(c) != "[ ]" and repr(c) != "parbreak()"
      })
      if filtered.len() == 1 and filtered.first().func() == rect {
        return filtered.first()
      }
    }
  }
  return none
}

#let equal-box-grid(
  columns: (1fr, 1fr),
  gutter: 3.5mm,
  column-gutter: auto,
  row-gutter: auto,
  fill: c-paper,
  stroke: 0.5pt + c-line,
  radius: 3pt,
  inset: 3.5mm,
  equalize: "all",
  ..items,
) = {
  let raw-items = items.pos()
  let normalized = raw-items.map(it => {
    let r = unwrap-rect(it)
    if r != none {
      let rf = r.fields()
      (
        body: rf.at("body", default: []),
        fill: rf.at("fill", default: fill),
        stroke: rf.at("stroke", default: stroke),
        radius: rf.at("radius", default: radius),
        inset: rf.at("inset", default: inset),
      )
    } else if type(it) == dictionary and it.at("_type", default: none) == "equal-box" {
      (
        body: it.body,
        fill: if it.fill == auto { fill } else { it.fill },
        stroke: if it.stroke == auto { stroke } else { it.stroke },
        radius: if it.radius == auto { radius } else { it.radius },
        inset: if it.inset == auto { inset } else { it.inset },
      )
    } else {
      (
        body: it,
        fill: fill,
        stroke: stroke,
        radius: radius,
        inset: inset,
      )
    }
  })

  let c-gutter = if column-gutter != auto { column-gutter } else { gutter }
  let r-gutter = if row-gutter != auto { row-gutter } else { gutter }

  context {
    layout(size => {
      let col-count = if type(columns) == array { columns.len() } else if type(columns) == int { columns } else { 1 }
      let col-width = (size.width - c-gutter * (col-count - 1)) / col-count

      let measured = normalized.map(c => {
        let inside = block(width: col-width, inset: c.inset, c.body)
        (
          card: c,
          h: measure(inside).height,
        )
      })

      let rendered-cells = if equalize == "row" {
        let rows = measured.chunks(col-count)
        rows.map(row-items => {
          let row-max-h = calc.max(..row-items.map(it => it.h))
          row-items.map(it => rect(
            width: 100%,
            height: row-max-h,
            fill: it.card.fill,
            stroke: it.card.stroke,
            radius: it.card.radius,
            inset: it.card.inset,
            it.card.body,
          ))
        }).flatten()
      } else {
        let all-max-h = calc.max(..measured.map(it => it.h))
        measured.map(it => rect(
          width: 100%,
          height: all-max-h,
          fill: it.card.fill,
          stroke: it.card.stroke,
          radius: it.card.radius,
          inset: it.card.inset,
          it.card.body,
        ))
      }

      grid(
        columns: columns,
        column-gutter: c-gutter,
        row-gutter: r-gutter,
        ..rendered-cells,
      )
    })
  }
}


// ==============================================================================
// EDITORIAL SPREAD: VERTICAL SPLIT SPREAD (Design 1 - Switched & Staggered)
// 2 full-bleed pages with alternating Teal/Paper columns and Text/Photo checkerboard.
// As requested:
// Left page: Teal on left (Text Top, Photo Bottom) | Paper on right (Photo Top, Text Bottom)
// Right page: Paper on left (Photo Top, Text Bottom) | Teal on right (Text Top, Photo Bottom)
// Supported inverted: true to swap the sides for any other section.
// ==============================================================================
#let split-editorial-page(
  is-left: true,
  inverted: false,
  item-top: (num: "០១", title: "", body: "", photo: ""),
  item-bottom: (num: "០២", title: "", body: "", photo: ""),
  running-header: "មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · INNOLAB",
) = {
  let page-w = 210mm
  let page-h = 297mm
  let col-w = 105mm
  let margin-x = 15mm
  let margin-top = 28mm
  let block-h = 110mm
  let gap-y = 16mm

  let teal-on-left = if not inverted { is-left } else { not is-left }
  let (item-col1, item-col2) = (item-top, item-bottom)

  let col1-is-teal = teal-on-left
  let col1-text-on-top = col1-is-teal

  let col1-content = rect(
    width: col-w,
    height: page-h,
    fill: if col1-is-teal { c-teal } else { c-paper },
    inset: (x: margin-x, top: margin-top, bottom: 20mm),
  )[
    #if col1-text-on-top [
      #block(width: 100%, height: block-h)[
        #align(top)[
          #text(font: font-khmer-display, size: 26pt, weight: "bold", fill: if col1-is-teal { c-sand } else { c-sand-dark })[#item-col1.num]
          #v(3mm)
          #text(font: font-khmer-display, size: 12.5pt, weight: "bold", fill: if col1-is-teal { c-white } else { c-teal })[#item-col1.title]
          #v(3.5mm)
          #set par(leading: 6.8pt, justify: true)
          #text(font: font-khmer-body, size: 8.8pt, fill: if col1-is-teal { c-white.transparentize(12%) } else { c-charcoal })[#item-col1.body]
        ]
      ]
      #v(gap-y)
      #block(width: 100%, height: block-h)[
        #align(center + horizon)[
          #block(width: 75mm, height: 75mm, radius: 3pt, clip: true, stroke: 1pt + if col1-is-teal { c-sand.transparentize(60%) } else { c-line })[
            #image(item-col1.photo, width: 100%, height: 100%, fit: "cover")
          ]
        ]
      ]
    ] else [
      #block(width: 100%, height: block-h)[
        #align(center + horizon)[
          #block(width: 75mm, height: 75mm, radius: 3pt, clip: true, stroke: 1pt + if col1-is-teal { c-sand.transparentize(60%) } else { c-line })[
            #image(item-col1.photo, width: 100%, height: 100%, fit: "cover")
          ]
        ]
      ]
      #v(gap-y)
      #block(width: 100%, height: block-h)[
        #align(top)[
          #text(font: font-khmer-display, size: 26pt, weight: "bold", fill: if col1-is-teal { c-sand } else { c-sand-dark })[#item-col1.num]
          #v(3mm)
          #text(font: font-khmer-display, size: 12.5pt, weight: "bold", fill: if col1-is-teal { c-white } else { c-teal })[#item-col1.title]
          #v(3.5mm)
          #set par(leading: 6.8pt, justify: true)
          #text(font: font-khmer-body, size: 8.8pt, fill: if col1-is-teal { c-white.transparentize(12%) } else { c-charcoal })[#item-col1.body]
        ]
      ]
    ]
  ]

  let col2-is-teal = not col1-is-teal
  let col2-text-on-top = col2-is-teal

  let col2-content = rect(
    width: col-w,
    height: page-h,
    fill: if col2-is-teal { c-teal } else { c-paper },
    inset: (x: margin-x, top: margin-top, bottom: 20mm),
  )[
    #if col2-text-on-top [
      #block(width: 100%, height: block-h)[
        #align(top)[
          #text(font: font-khmer-display, size: 26pt, weight: "bold", fill: if col2-is-teal { c-sand } else { c-sand-dark })[#item-col2.num]
          #v(3mm)
          #text(font: font-khmer-display, size: 12.5pt, weight: "bold", fill: if col2-is-teal { c-white } else { c-teal })[#item-col2.title]
          #v(3.5mm)
          #set par(leading: 6.8pt, justify: true)
          #text(font: font-khmer-body, size: 8.8pt, fill: if col2-is-teal { c-white.transparentize(12%) } else { c-charcoal })[#item-col2.body]
        ]
      ]
      #v(gap-y)
      #block(width: 100%, height: block-h)[
        #align(center + horizon)[
          #block(width: 75mm, height: 75mm, radius: 3pt, clip: true, stroke: 1pt + if col2-is-teal { c-sand.transparentize(60%) } else { c-line })[
            #image(item-col2.photo, width: 100%, height: 100%, fit: "cover")
          ]
        ]
      ]
    ] else [
      #block(width: 100%, height: block-h)[
        #align(center + horizon)[
          #block(width: 75mm, height: 75mm, radius: 3pt, clip: true, stroke: 1pt + if col2-is-teal { c-sand.transparentize(60%) } else { c-line })[
            #image(item-col2.photo, width: 100%, height: 100%, fit: "cover")
          ]
        ]
      ]
      #v(gap-y)
      #block(width: 100%, height: block-h)[
        #align(top)[
          #text(font: font-khmer-display, size: 26pt, weight: "bold", fill: if col2-is-teal { c-sand } else { c-sand-dark })[#item-col2.num]
          #v(3mm)
          #text(font: font-khmer-display, size: 12.5pt, weight: "bold", fill: if col2-is-teal { c-white } else { c-teal })[#item-col2.title]
          #v(3.5mm)
          #set par(leading: 6.8pt, justify: true)
          #text(font: font-khmer-body, size: 8.8pt, fill: if col2-is-teal { c-white.transparentize(12%) } else { c-charcoal })[#item-col2.body]
        ]
      ]
    ]
  ]

  page(
    paper: "a4",
    margin: 0pt,
    header: none,
    footer: none,
  )[
    #place(top + left, dx: 0mm, dy: 0mm)[#col1-content]
    #place(top + left, dx: col-w, dy: 0mm)[#col2-content]

    // Horizontal accent line spanning across the center divider
    #place(top + left, dx: col-w - 45mm, dy: 270mm)[
      #line(length: 90mm, stroke: 1.5pt + c-sand)
    ]

    // Page number in outer corner
    #place(bottom + if is-left { left } else { right }, dx: if is-left { 15mm } else { -15mm }, dy: -10mm)[
      #context text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-sand)[
        #to-khmer-num(counter(page).get().first())
      ]
    ]

    // Running header in inner corner
    #place(bottom + if is-left { right } else { left }, dx: if is-left { -15mm } else { 15mm }, dy: -10mm)[
      #text(font: font-khmer-display, size: 7.5pt, fill: c-muted)[#running-header]
    ]
  ]
}

#let split-editorial-spread(
  item-1: (num: "០១", title: "", body: "", photo: ""),
  item-2: (num: "០២", title: "", body: "", photo: ""),
  item-3: (num: "០៣", title: "", body: "", photo: ""),
  item-4: (num: "០៤", title: "", body: "", photo: ""),
  inverted: false,
  running-header: "មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · INNOLAB",
) = {
  split-editorial-page(
    is-left: true,
    inverted: inverted,
    item-top: item-1,
    item-bottom: item-2,
    running-header: running-header,
  )
  split-editorial-page(
    is-left: false,
    inverted: inverted,
    item-top: item-3,
    item-bottom: item-4,
    running-header: running-header,
  )
}

// ==============================================================================
// 4-PETAL CLOVER / QUADRANT SPREAD (Design 4)
// ==============================================================================
#let clover-quadrant-spread(
  kicker: "វិស័យយុទ្ធសាស្ត្រ",
  title: [វិស័យស្នូលទាំង ៤ \ នៃសហគ្រាសទាំង ២០],
  desc: [គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ បានប្រមូលផ្តុំ និងអភិវឌ្ឍន៍សហគ្រាសធុនតូច និងមធ្យមចំនួន ២០ មកពីគ្រប់ ៨ ស្រុក-ក្រុងនៃខេត្តកំពង់ធំ ដោយបែងចែកជា ៤ វិស័យស្នូល ដែលមានសក្តានុពលខ្ពស់ក្នុងការជំរុញខ្សែច្រវាក់តម្លៃក្នុងស្រុក ស្របតាមយុទ្ធសាស្ត្របញ្ចកោណរបស់រាជរដ្ឋាភិបាលកម្ពុជា។],
  hero-photo: "/assets/photos/18.jpg",
  
  petal-1: (
    num: "០១",
    title: [កសិកម្មទំនើប និងធាតុចូល],
    subtitle: "AgriTech & Modern Agriculture",
    enterprises: [
      - ក្រុមហ៊ុន ខេ អេស ស៊ីដ ឯ.ក\
      - កសិដ្ឋាន ម៉ៅ សៃ\
      - បច្ចេកវិទ្យាគ្រឿងយន្ដ 007 AI\
      - ជីធម្មជាតិ ១០០% ប្រាសាទសាមគ្គី\
      - ជីទឹកកសិករយើង
    ],
  ),
  petal-2: (
    num: "០២",
    title: [កែច្នៃចំណីអាហារ និងភេសជ្ជៈ],
    subtitle: "Food Processing & Value Addition",
    enterprises: [
      - សិប្បកម្មផលិតប្រេងសណ្ដែកផ្កាយ\
      - LCDC Eco Green\
      - សហគ្រាសធុនតូចមេគង្គអូឌឺ\
      - សិប្បកម្ម ស្រេង ហ៊ុន\
      - ជ័យសំបូរ, SSKH, Khmer Pantry, សុវណ្ណភូមិ
    ],
  ),
  petal-3: (
    num: "០៣",
    title: [អេកូទេសចរណ៍ & បដិសណ្ឋារកិច្ច],
    subtitle: "Eco-Tourism & Hospitality",
    enterprises: [
      - សហគមន៍ទេសចរណ៍សំបូរព្រៃគុក\
      - ហាងទាអូ ជំនោរស្ទឹងសែន\
      - សិប្បកម្មកែច្នៃ និងដាំបន្លែសុវត្ថិភាព
    ],
  ),
  petal-4: (
    num: "០៤",
    title: [សិប្បកម្មកែច្នៃ & ចក្រា],
    subtitle: "Creative Handicrafts & Upcycling",
    enterprises: [
      - សម្បុកកំប្លោក (Floating Creations)\
      - សិប្បកម្មផលិតត្រីងៀតបឹងទន្លេសាប\
      - កសិដ្ឋានចិញ្ចឹមចង្រិតសំបូរព្រៃគុក\
      - កសិដ្ឋានចិញ្ចឹមមាន់ និងកែច្នៃស៊ុតមាន់ធម្មជាតិ
    ],
  ),
  
  page-left-num: none,
  page-right-num: none,
) = {
  // Page 1: Left (Verso)
  page(
    paper: "a4",
    margin: 0pt,
    header: none,
    footer: none,
    fill: c-paper,
  )[
    #place(top + left, dx: 22mm, dy: 24mm)[
      #grid(
        columns: (auto, 1fr),
        gutter: 4.5mm,
        align: horizon,
        rect(
          width: 15mm,
          height: 15mm,
          fill: c-teal,
          radius: (top-left: 14pt, bottom-right: 14pt, top-right: 3pt, bottom-left: 3pt),
          align(center + horizon)[
            #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-sand)[INNO]
          ]
        ),
        [
          #text(font: font-khmer-display, size: 8pt, weight: "bold", fill: c-sand)[#upper(kicker)]\
          #v(0.6mm)
          #text(font: font-khmer-display, size: 16pt, weight: "bold", fill: c-teal)[#title]
        ]
      )
      
      #v(6mm)
      
      #block(
        width: 170mm,
        height: 125mm,
        radius: (top-left: 42pt, bottom-right: 42pt, top-right: 6pt, bottom-left: 6pt),
        stroke: 2pt + c-sand.transparentize(50%),
        clip: true,
        image(hero-photo, width: 100%, height: 100%, fit: "cover")
      )
      
      #v(6.5mm)
      
      #block(width: 170mm)[
        #set par(leading: 7pt, justify: true)
        #text(font: font-khmer-body, size: 9.2pt, fill: c-charcoal)[#desc]
      ]
      
      #v(7mm)
      
      #image("/assets/icons/chevron_bar.svg", width: 170mm, height: 4.5mm, fit: "cover")
    ]
    
    #place(bottom + left, dx: 22mm, dy: -10mm)[
      #context text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[
        #if page-left-num != none { page-left-num } else { to-khmer-num(counter(page).get().first()) }
      ]
    ]
  ]

  // Page 2: Right (Recto)
  page(
    paper: "a4",
    margin: 0pt,
    header: none,
    footer: none,
    fill: c-paper,
  )[
    #place(top + left, dx: 18mm, dy: 24mm)[
      #let card-w = 82mm
      #let card-h = 84mm
      
      #let clover-card(p, pos: "tl", bg: c-teal) = {
        let r = if pos == "tl" {
          (top-left: 32pt, bottom-right: 18pt, top-right: 8pt, bottom-left: 8pt)
        } else if pos == "tr" {
          (top-right: 32pt, bottom-left: 18pt, top-left: 8pt, bottom-right: 8pt)
        } else if pos == "bl" {
          (bottom-left: 32pt, top-right: 18pt, top-left: 8pt, bottom-right: 8pt)
        } else {
          (bottom-right: 32pt, top-left: 18pt, top-right: 8pt, bottom-left: 8pt)
        }
        
        rect(
          width: card-w,
          height: card-h,
          fill: bg,
          radius: r,
          inset: (x: 6.5mm, y: 6mm),
          stroke: none,
        )[
          #place(top + left)[
            #text(font: font-khmer-display, size: 20pt, weight: "bold", fill: c-sand)[#p.num]\
            #v(0.8mm)
            #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-white)[#p.title]\
            #v(0.3mm)
            #text(font: font-sans, size: 6.8pt, style: "italic", fill: c-white.transparentize(25%))[#p.subtitle]
            #v(2.5mm)
            #set par(leading: 5.2pt)
            #text(font: font-khmer-body, size: 7.6pt, fill: c-white.transparentize(10%))[#p.enterprises]
          ]
        ]
      }
      
      #block(width: 174mm, height: 176mm)[
        #grid(
          columns: (card-w, card-w),
          rows: (card-h, card-h),
          gutter: 6.5mm,
          clover-card(petal-1, pos: "tl", bg: c-teal),
          clover-card(petal-3, pos: "tr", bg: rgb("#195868")),
          clover-card(petal-2, pos: "bl", bg: rgb("#195868")),
          clover-card(petal-4, pos: "br", bg: c-teal),
        )
        
        #place(center + horizon)[
          #circle(
            radius: 14mm,
            fill: c-paper,
            stroke: 3.5pt + c-sand,
            align(center + horizon)[
              #circle(
                radius: 9.5mm,
                fill: c-teal,
                align(center + horizon)[
                  #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-sand)[៤]
                ]
              )
            ]
          )
        ]
      ]
      
      #v(6mm)
      
      #rect(
        width: 170.5mm,
        height: 24mm,
        fill: c-white,
        stroke: 1pt + c-teal.transparentize(70%),
        radius: 6pt,
        inset: (x: 4mm, y: 3.5mm),
        align(horizon)[
          #grid(
            columns: (1fr, 1fr, 1fr, 1fr),
            gutter: 2mm,
            align: center,
            [
              #text(font: font-khmer-display, size: 14pt, weight: "bold", fill: c-teal)[២០]\
              #v(-1mm)
              #text(font: font-khmer-body, size: 7.5pt, fill: c-muted)[សហគ្រាសសរុប]
            ],
            [
              #text(font: font-khmer-display, size: 14pt, weight: "bold", fill: c-teal)[៨]\
              #v(-1mm)
              #text(font: font-khmer-body, size: 7.5pt, fill: c-muted)[ស្រុក-ក្រុងគ្របដណ្តប់]
            ],
            [
              #text(font: font-khmer-display, size: 14pt, weight: "bold", fill: c-teal)[៤]\
              #v(-1mm)
              #text(font: font-khmer-body, size: 7.5pt, fill: c-muted)[វិស័យយុទ្ធសាស្ត្រ]
            ],
            [
              #text(font: font-khmer-display, size: 14pt, weight: "bold", fill: c-sand)[៤៨ លាន]\
              #v(-1mm)
              #text(font: font-khmer-body, size: 7.5pt, fill: c-muted)[រង្វាន់ជ័យលាភី (រៀល)]
            ],
          )
        ]
      )
    ]
    
    #place(bottom + right, dx: -22mm, dy: -10mm)[
      #context text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[
        #if page-right-num != none { page-right-num } else { to-khmer-num(counter(page).get().first()) }
      ]
    ]
  ]
}

// ==============================================================================
// ASYMMETRIC BLOCK-SPLIT SPREAD (Design 5)
// ==============================================================================
#let asymmetric-split-spread(
  left-photo: "/assets/photos/03.jpg",
  left-top-text: [],
  left-dark-title: [],
  left-dark-text: [],
  left-dark-bullets: [],
  page-left-num: none,
  
  right-kicker: "សមិទ្ធផលលេចធ្លោ",
  right-headline: [],
  right-body-text: [],
  right-stat-num: "៤៨,០០០,០០០ ៛",
  right-stat-label: [រង្វាន់ជ័យលាភីសរុប],
  right-stat-desc: [],
  right-photo: "/assets/photos/18.jpg",
  page-right-num: none,
) = {
  let col-w = 82mm
  let gutter = 8mm
  let margin-top = 22mm
  let margin-bottom = 20mm
  let margin-outer = 20mm
  let margin-inner = 16mm

  // Page 1: Verso
  page(
    paper: "a4",
    margin: 0pt,
    header: none,
    footer: none,
    fill: c-paper,
  )[
    #place(top + left, dx: margin-outer, dy: margin-top)[
      #block(width: col-w, height: 154mm, radius: 2pt, clip: true)[
        #image(left-photo, width: 100%, height: 100%, fit: "cover")
      ]
    ]
    
    #place(top + left, dx: margin-outer, dy: 180mm)[
      #rect(
        width: col-w,
        height: 94mm,
        fill: c-teal,
        radius: 2pt,
        inset: (x: 6mm, y: 7mm),
      )[
        #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-sand)[ចំណុចគន្លឹះយុទ្ធសាស្ត្រ]\
        #v(2.5mm)
        #set par(leading: 6.5pt)
        #text(font: font-khmer-body, size: 8.2pt, fill: c-white.transparentize(10%))[#left-dark-bullets]
      ]
    ]
    
    #place(top + left, dx: margin-outer + col-w + gutter, dy: margin-top)[
      #block(width: col-w, height: 102mm)[
        #set par(leading: 7pt, justify: true)
        #text(font: font-khmer-body, size: 9.2pt, fill: c-charcoal)[#left-top-text]
      ]
    ]
    
    #place(top + left, dx: margin-outer + col-w + gutter, dy: 128mm)[
      #rect(
        width: col-w,
        height: 146mm,
        fill: c-teal,
        radius: 2pt,
        inset: (x: 7mm, y: 8mm),
      )[
        #text(font: font-khmer-display, size: 11.5pt, weight: "bold", fill: c-sand)[#left-dark-title]\
        #v(3mm)
        #set par(leading: 6.8pt, justify: true)
        #text(font: font-khmer-body, size: 8.8pt, fill: c-white.transparentize(10%))[#left-dark-text]
      ]
    ]
    
    #place(bottom + left, dx: margin-outer + 6mm, dy: -margin-bottom + 12mm)[
      #context text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-sand)[
        #if page-left-num != none { page-left-num } else { to-khmer-num(counter(page).get().first()) }
      ]
    ]
  ]

  // Page 2: Recto
  page(
    paper: "a4",
    margin: 0pt,
    header: none,
    footer: none,
    fill: c-paper,
  )[
    #place(top + left, dx: margin-inner, dy: margin-top)[
      #block(width: col-w)[
        #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-sand)[#upper(right-kicker)]
        #v(1.5mm)
        #block(width: 100%)[
          #set par(leading: 18pt)
          #text(font: font-khmer-display, size: 18.5pt, weight: "bold", fill: c-teal)[#right-headline]
        ]
        #v(5mm)
        #line(length: 30mm, stroke: 2pt + c-sand)
        #v(5mm)
        #set par(leading: 7.2pt, justify: true)
        #text(font: font-khmer-body, size: 9.2pt, fill: c-charcoal)[#right-body-text]
      ]
    ]
    
    #place(top + left, dx: margin-inner + col-w + gutter, dy: margin-top)[
      #rect(
        width: col-w,
        height: 64mm,
        fill: c-teal,
        radius: 2pt,
        inset: (x: 6.5mm, y: 6.5mm),
      )[
        #place(top + left)[
          #text(font: font-khmer-display, size: 22pt, weight: "bold", fill: c-sand)[#right-stat-num]
          #v(1.5mm)
          #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-white)[#right-stat-label]
          #v(2.5mm)
          #set par(leading: 5.8pt, justify: true)
          #text(font: font-khmer-body, size: 8pt, fill: c-white.transparentize(15%))[#right-stat-desc]
        ]
      ]
      
      #v(6mm)
      
      #block(
        width: col-w,
        height: 168mm,
        radius: 2pt,
        clip: true,
      )[
        #image(right-photo, width: 100%, height: 100%, fit: "cover")
      ]
    ]
    
    #place(bottom + right, dx: -margin-outer, dy: -margin-bottom + 10mm)[
      #context text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[
        #if page-right-num != none { page-right-num } else { to-khmer-num(counter(page).get().first()) }
      ]
    ]
  ]
}


// ==============================================================================
// PANORAMIC CROSS-GUTTER SPREAD (Design 6)
// ==============================================================================
#let panoramic-cross-spread(
  left-title: [អំពីគម្រោង \ ABOUT INNOLAB],
  left-dark-text: [],
  left-small-photo: "/assets/photos/07.jpg",
  page-left-num: none,
  
  right-title: [ការផ្តល់ជូន និងផលជះ \ OUR IMPACT & OFFER],
  panoramic-photo: "/assets/photos/18.jpg",
  
  bottom-badge-num: "៤៨ លាន",
  bottom-badge-label: [រង្វាន់ជ័យលាភី (រៀល)],
  bottom-banner-text: [],
  page-right-num: none,
) = {
  let page-w = 210mm
  let page-h = 297mm
  let col-w = 82mm
  let gutter = 8mm
  let margin-top = 22mm
  let margin-bottom = 20mm
  let margin-outer = 20mm
  let margin-inner = 16mm

  // Page 1: Verso
  page(
    paper: "a4",
    margin: 0pt,
    header: none,
    footer: none,
    fill: c-paper,
  )[
    #place(top + left, dx: margin-outer, dy: margin-top)[
      #rect(
        width: col-w,
        height: 46mm,
        fill: none,
        stroke: 1.5pt + c-teal,
        radius: 2pt,
        inset: (x: 5.5mm, y: 7mm),
      )[
        #align(horizon)[
          #set par(leading: 13pt)
          #text(font: font-khmer-display, size: 14pt, weight: "bold", fill: c-teal)[#left-title]
        ]
      ]
    ]

    #place(top + left, dx: margin-outer, dy: 74mm)[
      #rect(
        width: col-w,
        height: 124mm,
        fill: c-teal,
        radius: 2pt,
        inset: (x: 6.5mm, y: 8mm),
      )[
        #set par(leading: 5.8pt, justify: true)
        #text(font: font-khmer-body, size: 8.0pt, fill: c-white.transparentize(10%))[#left-dark-text]
      ]
    ]

    #place(top + left, dx: margin-outer + col-w + gutter, dy: 74mm)[
      #block(width: page-w - (margin-outer + col-w + gutter), height: 124mm, clip: true)[
        #image(panoramic-photo, width: 274mm, height: 124mm, fit: "cover")
      ]
    ]

    #place(top + left, dx: margin-outer, dy: 206mm)[
      #block(width: col-w, height: 68mm, radius: 2pt, clip: true)[
        #image(left-small-photo, width: 100%, height: 100%, fit: "cover")
      ]
    ]

    #place(top + left, dx: margin-outer + col-w + gutter, dy: 206mm)[
      #rect(
        width: page-w - (margin-outer + col-w + gutter),
        height: 68mm,
        fill: c-teal,
        inset: (x: 5mm, y: 6mm),
      )[
        #align(center + horizon)[
          #rect(
            fill: rgb("#0D3642"),
            stroke: 1pt + c-sand,
            radius: 3pt,
            inset: (x: 4.5mm, y: 4mm),
          )[
            #text(font: font-khmer-display, size: 14pt, weight: "bold", fill: c-sand)[#bottom-badge-num]\
            #v(0.5mm)
            #text(font: font-khmer-body, size: 7.5pt, fill: c-white)[#bottom-badge-label]
          ]
        ]
      ]
    ]

    #place(bottom + left, dx: margin-outer, dy: -8mm)[
      #context text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[
        #if page-left-num != none { page-left-num } else { to-khmer-num(counter(page).get().first()) }
      ]
    ]
  ]

  // Page 2: Recto
  page(
    paper: "a4",
    margin: 0pt,
    header: none,
    footer: none,
    fill: c-paper,
  )[
    #place(top + left, dx: margin-inner, dy: margin-top + 8mm)[
      #text(font: font-khmer-display, size: 24pt, weight: "bold", fill: c-teal)[#right-title]
    ]

    #place(top + left, dx: 0mm, dy: 74mm)[
      #block(width: page-w - margin-outer, height: 124mm, clip: true)[
        #place(top + left, dx: -100mm)[
          #image(panoramic-photo, width: 274mm, height: 124mm, fit: "cover")
        ]
      ]
    ]

    #place(top + left, dx: 0mm, dy: 206mm)[
      #rect(
        width: page-w - margin-outer,
        height: 68mm,
        fill: c-teal,
        inset: (x: 10mm, y: 7mm),
      )[
        #align(horizon)[
          #set par(leading: 7pt, justify: true)
          #text(font: font-khmer-body, size: 9pt, fill: c-white.transparentize(12%))[#bottom-banner-text]
        ]
      ]
    ]

    #place(bottom + right, dx: -margin-outer, dy: -8mm)[
      #context text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[
        #if page-right-num != none { page-right-num } else { to-khmer-num(counter(page).get().first()) }
      ]
    ]
  ]
}


// ==============================================================================
// EDITORIAL COMPONENT: PROJECT CASE STUDY PAGE (USER DESIGN 1)
// Recreates the executive editorial case study layout with tinted objective box,
// metadata header, hero photography, and project overview story.
// ==============================================================================
#let project-case-study-page(
  folio-num: none,
  badge-text: "មន្ទីរ\nពិសោធន៍\nនវានុវត្តន៍",
  phone: "+855 (0) 92 682 999",
  email: "asip.info@angkorinnovation.org",
  website: "www.angkorinnovation.org",
  address: "ខេត្តកំពង់ធំ ព្រះរាជាណាចក្រកម្ពុជា",
  title-khmer: "ករណីសិក្សាគម្រោង",
  subtitle-khmer: "ការអភិវឌ្ឍ និងនវានុវត្តន៍សហគ្រាសធុនតូច និងមធ្យម",
  project-name: "មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (រដូវកាលទី ១)",
  client-name: "សហគ្រាសធុនតូច និងមធ្យម ២០ ក្នុងខេត្តកំពង់ធំ",
  objective-title: "គោលបំណងនៃគម្រោង ៖",
  objective-body: [
    គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ មានគោលបំណងចម្បងក្នុងការជួយពង្រឹងសមត្ថភាពសហគ្រិនក្នុងស្រុក តាមរយៈការផ្ទេរចំណេះដឹងនវានុវត្តន៍ ការរៀបចំគំរូអាជីវកម្ម (Business Model Canvas) និងការស្វែងយល់ស៊ីជម្រៅពីដំណើរអតិថិជន (Customer Journey)។

    គោលដៅយុទ្ធសាស្ត្រគឺការប្រែក្លាយកសិផល និងធនធានធម្មជាតិក្នុងខេត្តឱ្យទៅជាផលិតផលដែលមានតម្លៃបន្ថែមខ្ពស់ ព្រមទាំងកសាងបណ្តាញសហគមន៍សហគ្រិនដែលចេះសហការ និងរីកចម្រើនប្រកបដោយចីរភាព។
  ],
  hero-image: "/assets/photos/DSC_8462.jpg",
  overview-title: "ទិដ្ឋភាពទូទៅនៃគម្រោង",
  overview-image: "/assets/photos/08.jpg",
  headline: "ការកសាងសមត្ថភាព និងការលើកកម្ពស់ផលិតផលក្នុងស្រុក តាមរយៈនវានុវត្តន៍ជាក់ស្តែង",
  overview-body: [
    ឆ្លងកាត់ការអនុវត្តយ៉ាងសកម្មក្នុងរយៈពេលកន្លងមក គម្រោង InnoLab Kampong Thom បានបង្ហាញពីប្រសិទ្ធភាពជាក់ស្តែងនៃការអភិវឌ្ឍសហគ្រាសធុនតូច និងមធ្យមនៅថ្នាក់មូលដ្ឋាន។ សហគ្រាសទាំង ២០ បានបង្ហាញពីការប្តេជ្ញាចិត្តខ្ពស់ក្នុងការកែលម្អផលិតផល និងដំណើរការអាជីវកម្ម។

    ភាពជោគជ័យនេះឆ្លុះបញ្ចាំងឱ្យឃើញថា នៅពេលដែលសហគ្រិនទទួលបានការបណ្តុះបណ្តាលត្រឹមត្រូវ ការប្រឹក្សាយោបល់ផ្ទាល់ និងការគាំទ្រផ្នែកទីផ្សារ ពួកគេមានលទ្ធភាពពេញលេញក្នុងការបង្កើតនវានុវត្តន៍ និងពង្រីកសក្តានុពលសេដ្ឋកិច្ចមូលដ្ឋានប្រកបដោយនិរន្តរភាព។
  ],
) = {
  page(
    paper: "a4",
    margin: (top: 18mm, bottom: 18mm, left: 20mm, right: 20mm),
    header: none,
    footer: none,
    fill: c-white,
  )[
    // Header
    #grid(
      columns: (68mm, 1fr),
      column-gutter: 8mm,
      align: top,
      [
        #grid(
          columns: (17mm, 1fr),
          gutter: 3.5mm,
          align: horizon,
          [
            #rect(
              width: 16mm,
              height: 16mm,
              radius: 50%,
              fill: rgb("#E6E9E4"),
              stroke: 0.5pt + c-sand,
              inset: 0pt,
              align(center + horizon)[
                #text(font: font-khmer-display, size: 5pt, weight: "bold", fill: c-teal)[#badge-text]
              ]
            )
          ],
          [
            #set text(font: font-khmer-body, size: 6.8pt, fill: c-charcoal.lighten(15%))
            #set par(leading: 3.5pt)
            *ទូរស័ព្ទ៖* #phone \
            *អ៊ីមែល៖* #email \
            *គេហទំព័រ៖* #website \
            *អាសយដ្ឋាន៖* #address
          ]
        )
      ],
      [
        #align(left)[
          #text(font: font-khmer-display, size: 16pt, weight: "bold", fill: c-teal)[#title-khmer]
          #v(0.5mm)
          #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-sand-dark)[#subtitle-khmer]
          #v(2.5mm)
          #grid(
            columns: (1.15fr, 1fr),
            gutter: 4mm,
            [
              #text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-charcoal)[ឈ្មោះគម្រោង ៖]\
              #v(0.8mm)
              #text(font: font-khmer-display, size: 7.5pt, fill: c-teal)[#project-name]\
              #v(0.5mm)
              #line(length: 100%, stroke: 0.5pt + rgb("#D0D5CC"))
            ],
            [
              #text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-charcoal)[សហគ្រាសគោលដៅ ៖]\
              #v(0.8mm)
              #text(font: font-khmer-display, size: 8pt, fill: c-teal)[#client-name]\
              #v(0.5mm)
              #line(length: 100%, stroke: 0.5pt + rgb("#D0D5CC"))
            ]
          )
        ]
      ]
    )

    #v(4.5mm)

    // Middle: Objective Box + Hero Photo
    #grid(
      columns: (68mm, 1fr),
      gutter: 6mm,
      align: top,
      [
        #rect(
          width: 100%,
          height: 100mm,
          fill: rgb("#E6E9E4"),
          radius: 3pt,
          inset: (x: 4.8mm, y: 5mm),
          stroke: none,
        )[
          #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[#objective-title]
          #v(3mm)
          #set par(leading: 5.8pt, justify: true)
          #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[#objective-body]
        ]
      ],
      [
        #box(
          width: 100%,
          height: 100mm,
          radius: 3pt,
          stroke: 0.5pt + rgb("#E0E3DE"),
          clip: true,
        )[
          #image(hero-image, width: 100%, height: 100%, fit: "cover")
        ]
      ]
    )

    #v(5mm)

    // Bottom: Overview + Story
    #grid(
      columns: (68mm, 1fr),
      gutter: 6mm,
      align: top,
      [
        #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[#overview-title]
        #v(2.5mm)
        #box(
          width: 100%,
          height: 48mm,
          radius: 3pt,
          stroke: 0.5pt + rgb("#E0E3DE"),
          clip: true,
        )[
          #image(overview-image, width: 100%, height: 100%, fit: "cover")
        ]
      ],
      [
        #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-teal)[#headline]
        #v(2.5mm)
        #set par(leading: 6pt, justify: true)
        #text(font: font-khmer-body, size: 8.2pt, fill: c-charcoal)[#overview-body]
      ]
    )

    // Folio
    #place(bottom + left, dy: 6mm)[
      #line(length: 100%, stroke: 0.4pt + c-line)
      #v(1.5mm)
      #context {
        let pnum = if folio-num != none { folio-num } else { counter(page).get().first() }
        catalogue-folio(
          pnum,
          header-left: "មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ករណីសិក្សាគម្រោង",
          side: "left",
        )
      }
    ]
  ]
}

// ==============================================================================
// EDITORIAL COMPONENT: APPROACH, RESULTS & CONCLUSION PAGE (USER DESIGN 2)
// Pure Khmer Version
// ==============================================================================
#let approach-results-page(
  folio-num: none,
  approach-title: "វិធីសាស្ត្រ និងដំណើរការអនុវត្ត",
  approach-image: "/assets/photos/02.jpg",
  approach-points: (
    [ការរៀបចំវគ្គបណ្តុះបណ្តាល Bootcamps ចំនួន ៣ វគ្គ លើជំនាញ Design Thinking, Customer Journey និង Project Management],
    [ការចុះជួប វាយតម្លៃ និងប្រឹក្សាយោបល់បច្ចេកទេសផ្ទាល់ ១-ទល់-១ ដល់មូលដ្ឋានសហគ្រាស],
    [ដំណើរទស្សនកិច្ច InnoTour នៅខេត្តសៀមរាប ដើម្បីដកស្រង់បទពិសោធន៍ពីសហគ្រាសគំរូ],
    [ការគាំទ្រការរៀបចំគម្រោងនវានុវត្តន៍ និងការប្រកួតប្រជែង Final Pitch Day ដណ្តើមទុនពូជ],
  ),
  results-title: "លទ្ធផល និងការវាយតម្លៃគន្លឹះ",
  results-blurb: [ការវាយតម្លៃផលប៉ះពាល់លើសហគ្រាសទាំង ២០ បានបង្ហាញពីការរីកចម្រើនគួរឱ្យកត់សម្គាល់លើគ្រប់វិមាត្រ ៖],
  stat-1-val: "១០០%",
  stat-1-title: "នវានុវត្តន៍ផលិតផល",
  stat-1-desc: "សហគ្រាសទាំងអស់បានកែលម្អ ឬបង្កើតផលិតផលថ្មីសម្រេច",
  stat-2-val: "៨០%",
  stat-2-title: "ពង្រឹងកម្រិតគ្រប់គ្រង",
  stat-2-desc: "សហគ្រាសបានវិវត្តទៅកាន់កម្រិតគ្រប់គ្រងមធ្យម និងមានរចនាសម្ព័ន្ធ",
  stat-3-val: "៧៣%",
  stat-3-title: "ការយល់ដឹងនវានុវត្តន៍",
  stat-3-desc: "សហគ្រិនយល់ដឹងពីនវានុវត្តន៍ក្នុងកម្រិតល្អប្រសើរខ្លាំង",
  conclusion-title: "ការសំយោគ និងសេចក្តីសន្និដ្ឋាន",
  conclusion-headline: "ការកសាងសមត្ថភាព និងប្រព័ន្ធអេកូឡូស៊ី ដើម្បីចីរភាពសហគ្រាសធុនតូច និងមធ្យម",
  conclusion-body: [
    គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ រដូវកាលទី១ ទទួលបានជោគជ័យយ៉ាងត្រចះត្រចង់ ក្នុងការបណ្តុះផ្នត់គំនិតនវានុវត្តន៍ និងការកសាងសមត្ថភាពសហគ្រាសធុនតូច និងមធ្យម (SMEs) នៅថ្នាក់មូលដ្ឋាន។ ទិន្នន័យបានបង្ហាញឱ្យឃើញពីការផ្លាស់ប្តូរជាវិជ្ជមានលើគ្រប់វិមាត្រ៖ ការពង្រីកបណ្តាញដៃគូ, ការធ្វើទំនើបកម្មខ្សែច្រវាក់ផលិតកម្ម, និងការកសាងកម្រិតគ្រប់គ្រងដែលមានរចនាសម្ព័ន្ធ។

    ទោះជាយ៉ាងណា ដើម្បីធានានិរន្តរភាព និងការលូតលាស់នៃសហគ្រាសទាំងនេះ ការគាំទ្រជាបន្តផ្នែកហិរញ្ញវត្ថុ ជំនាញបច្ចេកវិទ្យា និងការភ្ជាប់ទីផ្សារ គឺជាកត្តាចាំបាច់ដែលមិនអាចខ្វះបានសម្រាប់គម្រោងដំណាក់កាលបន្ទាប់។
  ],
  conclusion-image: "/assets/photos/07.jpg",
) = {
  page(
    paper: "a4",
    margin: (top: 18mm, bottom: 18mm, left: 20mm, right: 20mm),
    header: none,
    footer: none,
    fill: c-white,
  )[
    // Top: Photo Left + Approach Right
    #grid(
      columns: (68mm, 1fr),
      gutter: 6mm,
      align: top,
      [
        #box(
          width: 100%,
          height: 48mm,
          radius: 3pt,
          stroke: 0.5pt + rgb("#E0E3DE"),
          clip: true,
        )[
          #image(approach-image, width: 100%, height: 100%, fit: "cover")
        ]
      ],
      [
        #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[#approach-title]
        #v(2.5mm)
        #for pt in approach-points [
          #grid(
            columns: (3.5mm, 1fr),
            gutter: 1.5mm,
            align: top,
            [
              #place(dy: 1.2mm)[
                #circle(radius: 1.2pt, fill: c-teal)
              ]
            ],
            [
              #set par(leading: 5pt, justify: true)
              #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#pt]
              #v(1.2mm)
            ]
          )
        ]
      ]
    )

    #v(4.5mm)

    // Middle Tinted Band with Centered Title & 3 Stat Cards
    #rect(
      width: 100%,
      fill: rgb("#E6E9E4"),
      radius: 3pt,
      inset: (x: 5mm, y: 5mm),
      stroke: none,
    )[
      #align(center)[
        #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[#results-title]
        #v(0.8mm)
        #text(font: font-khmer-body, size: 7.6pt, fill: c-charcoal)[#results-blurb]
        #v(1.5mm)
        #line(length: 60mm, stroke: 0.5pt + rgb("#D0D5CC"))
        #v(2.5mm)
      ]

      #grid(
        columns: (1fr, 1fr, 1fr),
        gutter: 3.5mm,
        [
          #rect(
            width: 100%,
            height: 36mm,
            fill: c-white,
            radius: 3pt,
            inset: (x: 3mm, y: 3.5mm),
            stroke: 0.5pt + rgb("#E0E3DE"),
          )[
            #align(center)[
              #text(font: font-khmer-display, size: 17pt, weight: "bold", fill: c-teal)[#stat-1-val]
              #v(0.8mm)
              #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-charcoal)[#stat-1-title]
              #v(0.8mm)
              #set par(leading: 4.5pt)
              #text(font: font-khmer-body, size: 6.8pt, fill: c-charcoal.lighten(20%))[#stat-1-desc]
            ]
          ]
        ],
        [
          #rect(
            width: 100%,
            height: 36mm,
            fill: c-white,
            radius: 3pt,
            inset: (x: 3mm, y: 3.5mm),
            stroke: 0.5pt + rgb("#E0E3DE"),
          )[
            #align(center)[
              #text(font: font-khmer-display, size: 17pt, weight: "bold", fill: c-teal)[#stat-2-val]
              #v(0.8mm)
              #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-charcoal)[#stat-2-title]
              #v(0.8mm)
              #set par(leading: 4.5pt)
              #text(font: font-khmer-body, size: 6.8pt, fill: c-charcoal.lighten(20%))[#stat-2-desc]
            ]
          ]
        ],
        [
          #rect(
            width: 100%,
            height: 36mm,
            fill: c-white,
            radius: 3pt,
            inset: (x: 3mm, y: 3.5mm),
            stroke: 0.5pt + rgb("#E0E3DE"),
          )[
            #align(center)[
              #text(font: font-khmer-display, size: 17pt, weight: "bold", fill: c-teal)[#stat-3-val]
              #v(0.8mm)
              #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-charcoal)[#stat-3-title]
              #v(0.8mm)
              #set par(leading: 4.5pt)
              #text(font: font-khmer-body, size: 6.8pt, fill: c-charcoal.lighten(20%))[#stat-3-desc]
            ]
          ]
        ],
      )
    ]

    #v(4.5mm)

    // Bottom Band: Conclusion Left + Photo Right
    #grid(
      columns: (1fr, 52mm),
      gutter: 6mm,
      align: top,
      [
        #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[#conclusion-title]
        #v(1.8mm)
        #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-teal)[#conclusion-headline]
        #v(2mm)
        #set par(leading: 5.8pt, justify: true)
        #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[#conclusion-body]
      ],
      [
        #box(
          width: 100%,
          height: 60mm,
          radius: 3pt,
          stroke: 0.5pt + rgb("#E0E3DE"),
          clip: true,
        )[
          #image(conclusion-image, width: 100%, height: 100%, fit: "cover")
        ]
      ]
    )

    // Folio
    #place(bottom + left, dy: 6mm)[
      #line(length: 100%, stroke: 0.4pt + c-line)
      #v(1.5mm)
      #context {
        let pnum = if folio-num != none { folio-num } else { counter(page).get().first() }
        catalogue-folio(
          pnum,
          header-right: "មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · វិធីសាស្ត្រ លទ្ធផល និងការសន្និដ្ឋាន",
          side: "right",
        )
      }
    ]
  ]
}


// ==============================================================================
// EDITORIAL COMPONENT: ACTIVITY FEATURE PAGE (USER DESIGN - WHAT WE DO)
// Recreates the modern annual report feature layout with big section numeral,
// stacked display title, top hero photo, divider narrative, and dual-tone cards.
// Pure Khmer Version (Zero English translation)
// ==============================================================================
#let activity-feature-page(
  folio-num: none,
  running-title: "មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ផែនការ និងយុទ្ធសាស្ត្រ",
  section-num: "០៣",
  title-line1: "សកម្មភាព",
  title-line2: "ផ្សព្វផ្សាយ",
  hero-image: "/assets/photos/02.jpg",
  intro-body: [
    ដើម្បីធានាថាព័ត៌មានស្តីពីគម្រោងបានហូរចូលដល់មូលដ្ឋាន និងទាក់ទាញសហគ្រិនដែលស្ថិតនៅចន្លោះខេត្ត ឬស្រុកឆ្ងាយៗ ក្រុមការងារគម្រោងបានចុះអនុវត្តសកម្មភាពផ្សព្វផ្សាយយ៉ាងសកម្ម តាមរយៈការតភ្ជាប់ជាមួយរដ្ឋបាលខេត្ត អាជ្ញាធរស្រុក និងគ្រឹះស្ថានអប់រំបច្ចេកទេសក្នុងតំបន់។
  ],
  card-1-title: "វិទ្យាស្ថានពហុបច្ចេកទេស",
  card-1-body: [
    គម្រោងបានសហការរៀបចំកិច្ចប្រជុំផ្សព្វផ្សាយផ្ទាល់នៅ វិទ្យាស្ថានពហុបច្ចេកទេសខេត្តកំពង់ធំ (ដោយមានការចូលរួមពីឯកឧត្តម ងួន រាសី និងមន្ទីរខេត្តពាក់ព័ន្ធ) ដើម្បីបំផុសស្មារតីនវានុវត្តន៍ និងការចូលរួមរបស់សហគ្រិនក្នុងមូលដ្ឋាន។
  ],
  card-2-title: "រដ្ឋបាលស្រុកស្ទោង",
  card-2-body: [
    សកម្មភាពទាំងនេះត្រូវបានធ្វើឡើងតាមរយៈកិច្ចសហការយ៉ាងជិតស្និទ្ធជាមួយលោកអភិបាលស្រុក និងមន្ត្រីពាក់ព័ន្ធ ដើម្បីធានាថាការផ្សព្វផ្សាយទៅដល់គោលដៅ និងរួមចំណែកកសាងប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍ថ្នាក់មូលដ្ឋានឱ្យកាន់តែរស់រវើក និងបរិយាបន្ន។
  ],
) = {
  page(
    paper: "a4",
    margin: (top: 18mm, bottom: 18mm, left: 20mm, right: 20mm),
    header: none,
    footer: none,
    fill: c-white,
  )[
    // 1. RUNNING HEADER (Thin line + Title + Page)
    #grid(
      columns: (auto, 1fr, auto),
      gutter: 3mm,
      align: horizon,
      [
        #text(font: font-khmer-display, size: 7.5pt, fill: c-charcoal.lighten(30%))[#running-title]
      ],
      [
        #line(length: 100%, stroke: 0.4pt + rgb("#D5DCD0"))
      ],
      [
        #context {
          let pnum = if folio-num != none { folio-num } else { counter(page).get().first() }
          text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[ទំព័រ #to-khmer-num(pnum)]
        }
      ]
    )

    #v(7mm)

    // 2. TOP SECTION: Big Numeral & Stacked Title (Left) + Hero Image (Right)
    #grid(
      columns: (68mm, 1fr),
      gutter: 8mm,
      align: top,
      [
        #text(font: "Kdam Thmor Pro", size: 68pt, fill: rgb("#9AA89D"))[#section-num]
        #v(-5mm)
        #text(font: font-khmer-display, size: 16pt, weight: "medium", fill: c-charcoal.lighten(20%))[#title-line1]\
        #v(1mm)
        #text(font: font-khmer-display, size: 24pt, weight: "bold", fill: c-teal)[#title-line2]
      ],
      [
        #box(
          width: 100%,
          height: 66mm,
          radius: 3pt,
          stroke: 0.5pt + rgb("#E0E3DE"),
          clip: true,
        )[
          #image(hero-image, width: 100%, height: 100%, fit: "cover")
        ]
      ]
    )

    #v(8mm)

    // 3. MIDDLE SECTION: Icon on Left + Vertical Divider + Narrative Text on Right
    #grid(
      columns: (22mm, 3pt, 1fr),
      gutter: 4.5mm,
      align: horizon,
      [
        #align(center)[
          #rect(
            width: 18mm,
            height: 18mm,
            radius: 50%,
            fill: rgb("#E6E9E4"),
            stroke: 0.5pt + c-sand,
            inset: 0pt,
            align(center + horizon)[
              #circle(radius: 3pt, fill: c-teal)
            ]
          )
        ]
      ],
      [
        #rect(width: 2.2pt, height: 26mm, fill: c-teal, radius: 1pt)
      ],
      [
        #set par(leading: 6.8pt, justify: true)
        #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[#intro-body]
      ]
    )

    #v(8mm)

    // 4. BOTTOM SECTION: 2 Colored Feature Cards Side-by-Side
    #grid(
      columns: (1fr, 1fr),
      gutter: 4.5mm,
      align: top,
      [
        // Card 1: Deep Teal Block
        #rect(
          width: 100%,
          height: 52mm,
          fill: c-teal,
          radius: 3pt,
          inset: (x: 4.5mm, y: 4.5mm),
          stroke: none,
        )[
          #grid(
            columns: (auto, 1fr),
            gutter: 2.5mm,
            align: horizon,
            [
              #circle(radius: 2pt, fill: c-sand)
            ],
            [
              #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-white)[#card-1-title]
            ]
          )
          #v(1mm)
          #line(length: 100%, stroke: 0.5pt + c-sand.transparentize(40%))
          #v(2.5mm)
          #set par(leading: 5.5pt, justify: true)
          #text(font: font-khmer-body, size: 7.8pt, fill: c-white.transparentize(10%))[#card-1-body]
        ]
      ],
      [
        // Card 2: Light Sand / Accent Tinted Block
        #rect(
          width: 100%,
          height: 52mm,
          fill: rgb("#E6E9CD"),
          radius: 3pt,
          inset: (x: 4.5mm, y: 4.5mm),
          stroke: 0.5pt + rgb("#D4D8BA"),
        )[
          #grid(
            columns: (auto, 1fr),
            gutter: 2.5mm,
            align: horizon,
            [
              #circle(radius: 2pt, fill: c-teal)
            ],
            [
              #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[#card-2-title]
            ]
          )
          #v(1mm)
          #line(length: 100%, stroke: 0.5pt + rgb("#C2C8A4"))
          #v(2.5mm)
          #set par(leading: 5.5pt, justify: true)
          #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#card-2-body]
        ]
      ]
    )

    // Folio at bottom
    #place(bottom + left, dy: 6mm)[
      #line(length: 100%, stroke: 0.4pt + c-line)
      #v(1.5mm)
      #context {
        let pnum = if folio-num != none { folio-num } else { counter(page).get().first() }
        catalogue-folio(
          pnum,
          header-right: "មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ផែនការយុទ្ធសាស្ត្រ",
          side: "right",
        )
      }
    ]
  ]
}


// ------------------------------------------------------------------------------
// 21. EXECUTIVE PROFILE SPREAD (DESIGN 1: ABOUT PROJECT & VISION/MISSION)
// ------------------------------------------------------------------------------
#let executive-profile-spread(
  kicker: "អំពីគម្រោង",
  title: [អំពីគម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍],
  subtitle: "ប្រវត្តិ និងដំណើរការកកើតគម្រោង",
  intro-lead: [
    *គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ* គឺជាគំនិតផ្តួចផ្តើមគំរូថ្នាក់ក្រោមជាតិដំបូងបង្អស់ ដែលអនុវត្តដោយ *ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)* ក្នុងគោលដៅប្រែក្លាយសក្តានុពលសេដ្ឋកិច្ចក្នុងស្រុកទៅជាកម្លាំងប្រកួតប្រជែងជាក់ស្តែង។
  ],
  lead-photo: "/assets/photos/02.jpg",
  body-p1: [
    គម្រោងនេះដំណើរការជាការអនុវត្តផ្ទាល់នៃ *យុទ្ធសាស្ត្របញ្ចកោណ ដំណាក់កាលទី១* របស់រាជរដ្ឋាភិបាលកម្ពុជា ក្រោមចក្ខុវិស័យដឹកនាំរបស់ *ឯកឧត្តម វង្សី វិស្សុត* ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ។ គោលដៅចម្បងគឺប្រែក្លាយខេត្តកំពង់ធំពីតំបន់កសិកម្មបុរាណឱ្យទៅជា «មជ្ឈមណ្ឌលកសិ-ឧស្សាហកម្ម និងនវានុវត្តន៍ឈានមុខគេ» តាមរយៈការគាំទ្រសហគ្រាសធុនតូច និងមធ្យម (SMEs)។
  ],
  body-p2: [
    តាមរយៈកិច្ចសហការយ៉ាងជិតស្និទ្ធជាមួយ *មូលនិធិអភិវឌ្ឍន៍ជំនាញ (SDF)*, *សហគ្រិនខ្មែរ (Khmer Enterprise - KE)* និងរដ្ឋបាលខេត្តកំពង់ធំ គម្រោងបានផ្តល់នូវវគ្គបណ្តុះបណ្តាល ការប្រឹក្សាយោបល់ជំនាញ និងការបង្កើតគំរូនវានុវត្តន៍ជាក់ស្តែងដល់សហគ្រិនទាំង ២០ រូប ដែលតំណាងឱ្យ ៤ វិស័យស្នូលទូទាំង ៨ ស្រុក-ក្រុង។
  ],
  stats: (
    (num: "១១១ រូប", label: "បេក្ខជនដាក់ពាក្យ", desc: "សហគ្រិនក្នុងខេត្តដាក់ពាក្យ"),
    (num: "២០ សហគ្រាស", label: "សហគ្រាសជម្រុះ", desc: "ជ្រើសរើសយ៉ាងសម្រិតសម្រាំង"),
    (num: "៨ ស្រុក-ក្រុង", label: "ភូមិសាស្ត្រគ្របដណ្តប់", desc: "១០០% នៃខេត្តកំពង់ធំ"),
    (num: "៣ វគ្គធំៗ", label: "បណ្តុះបណ្តាលសមត្ថភាព", desc: "ជំនាញស្នូលសតវត្សរ៍ទី២១"),
    (num: "៤៨ លាន", label: "ប្រាក់រង្វាន់ពូជសរុប", desc: "គាំទ្រដើមទុនពង្រីកអាជីវកម្ម"),
    (num: "១០០%", label: "អត្រានវានុវត្តន៍", desc: "បង្កើតផលិតផលថ្មីជោគជ័យ"),
  ),
  vision-title: "ចក្ខុវិស័យ (Vision)",
  vision-body: [
    ប្រែក្លាយខេត្តកំពង់ធំឱ្យទៅជាមជ្ឈមណ្ឌលកសិ-ឧស្សាហកម្ម និងសហគ្រាសនវានុវត្តន៍ឈានមុខគេនៅកម្ពុជា តាមរយៈការបំប្លែងកសិផលធម្មជាតិទៅជាទំនិញកែច្នៃដែលមានតម្លៃបន្ថែមខ្ពស់ និងមានចីរភាពសេដ្ឋកិច្ចយូរអង្វែង។
  ],
  mission-title: "បេសកកម្ម (Mission)",
  mission-points: (
    [ពង្រឹងសមត្ថភាពសហគ្រិនលើការគ្រប់គ្រង និងការច្នៃប្រឌិត],
    [ជំរុញការកែច្នៃកសិផលក្នុងស្រុកបង្កើតជាតម្លៃបន្ថែមខ្ពស់],
    [តភ្ជាប់បណ្តាញទីផ្សារទំនើប និងដៃគូយុទ្ធសាស្ត្រជាតិ],
    [បញ្ចូលបច្ចេកវិទ្យា និងការអនុវត្តសេដ្ឋកិច្ចចក្រាបៃតង],
  ),
  core-values-title: "គុណតម្លៃស្នូល (Core Values)",
  core-values-body: [
    *នវានុវត្តន៍ជាក់ស្តែង (Actionable Innovation)* ផ្តោតលើដំណោះស្រាយពិត; *កិច្ចសហការជាប្រព័ន្ធ (Ecosystem Synergy)* ផ្សារភ្ជាប់រដ្ឋ ឯកជន និងដៃគូ; *ចីរភាព និងបរិយាបន្ន (Sustainability & Inclusivity)* អភិវឌ្ឍប្រកបដោយមេត្រីភាព; និង *បរិវត្តកម្មឌីជីថល (Digital Empowerment)* ប្រើបច្ចេកវិទ្យាជំរុញកំណើន។
  ],
  brand-primary: c-teal,
  brand-accent: c-sand,
) = {
  // Page 1: Left Page (Verso)
  page(
    paper: "a4",
    margin: (top: 18mm, bottom: 16mm, left: 20mm, right: 18mm),
    header: [
      #grid(
        columns: (1fr, auto),
        text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: brand-primary)[#kicker · ទិដ្ឋភាពទូទៅនៃគម្រោង],
        text(font: font-khmer-display, size: 7.5pt, fill: c-muted)[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ],
      )
      #v(1mm)
      #line(length: 100%, stroke: 0.4pt + c-line)
    ],
    footer: none,
  )[
    #v(3mm)
    #text(font: font-khmer-display, size: 20pt, weight: "bold", fill: brand-primary)[#title]    #v(1mm)
    #text(font: font-khmer-body, size: 9pt, weight: "bold", fill: brand-accent)[#subtitle]
    
    #v(4mm)

    #grid(
      columns: (48mm, 1fr),
      gutter: 6mm,
      align: top,
      [
        #set par(leading: 6pt, justify: true)
        #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[#intro-lead]
        #v(3mm)
        #box(
          width: 100%,
          height: 60mm,
          radius: 4pt,
          clip: true,
          stroke: 0.5pt + c-line,
        )[
          #image(lead-photo, width: 100%, height: 100%, fit: "cover")
        ]
      ],
      [
        #set par(leading: 6.5pt, justify: true)
        #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[#body-p1]
        #v(3mm)
        #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[#body-p2]
      ]
    )

    #v(5mm)

    #rect(
      width: 100%,
      radius: 8pt,
      stroke: 0.8pt + brand-primary.lighten(60%),
      inset: (x: 5mm, y: 4.5mm),
      fill: c-paper,
    )[
      #grid(
        columns: (1fr, 1fr, 1fr),
        column-gutter: 5mm,
        row-gutter: 4mm,
        ..stats.map(s => [
          #text(
            font: "Kdam Thmor Pro",
            size: 15pt,
            weight: "bold",
            fill: brand-primary,
          )[#s.num]          #v(0.5mm)
          #text(
            font: font-khmer-display,
            size: 8pt,
            weight: "bold",
            fill: brand-accent,
          )[#s.label]          #v(0.3mm)
          #text(
            font: font-khmer-body,
            size: 7.2pt,
            fill: c-muted,
          )[#s.desc]
        ])
      )
    ]
  ]

  // Page 2: Right Page (Recto)
  page(
    paper: "a4",
    margin: (top: 14mm, bottom: 14mm, left: 14mm, right: 14mm),
    header: none,
    footer: none,
  )[
    #rect(
      width: 100%,
      height: 100%,
      fill: brand-primary,
      radius: 14pt,
    )[
      #place(bottom + left, dx: 0mm, dy: 0mm)[
        #box(width: 100%, height: 95mm, clip: true)[
          #image("/assets/photos/finnal-pitching-2.jpg", width: 100%, height: 100%, fit: "cover")
          #place(top + left, rect(
            width: 100%,
            height: 100%,
            fill: gradient.linear(
              brand-primary,
              brand-primary.transparentize(30%),
              brand-primary.transparentize(80%),
              angle: 90deg,
            )
          ))
        ]
      ]

      #place(top + left, dx: -2mm, dy: 14mm)[
        #rect(
          width: 96%,
          radius: (right: 14pt),
          fill: rgb("#FAF9F6"),
          stroke: (top: 0.5pt + c-white, right: 0.5pt + c-white, bottom: 0.5pt + c-white),
          inset: (x: 7mm, top: 7mm, bottom: 6mm),
        )[
          #grid(
            columns: (1fr, 1.15fr),
            column-gutter: 6mm,
            align: top,
            [
              #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: brand-primary)[#vision-title]              #v(2mm)
              #set par(leading: 6.2pt, justify: true)
              #text(font: font-khmer-body, size: 8.2pt, fill: c-charcoal)[#vision-body]
            ],
            [
              #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: brand-primary)[#mission-title]              #v(2mm)
              #set par(leading: 5.8pt, justify: true)
              #list(
                ..mission-points.map(pt => text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[#pt])
              )
            ]
          )

          #v(3.5mm)
          #line(length: 100%, stroke: 0.5pt + c-sand.lighten(30%))
          #v(3mm)

          #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: brand-primary)[#core-values-title]          #v(1.5mm)
          #set par(leading: 6.2pt, justify: true)
          #text(font: font-khmer-body, size: 8.2pt, fill: c-charcoal)[#core-values-body]
        ]
      ]
    ]
  ]
}
