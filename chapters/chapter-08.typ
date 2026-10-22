#import "../styles.typ": *
#import "../components/catalogue.typ": *

// ==============================================================================
// ជំពូកទី៨ ៖ ផែនការ និងយុទ្ធសាស្ត្របន្ទាប់ (ទស្សនវិស័យពង្រីកថ្នាក់ជាតិ)
// EDITORIAL CATALOGUE ARCHITECTURE (5 FACING SPREADS · PAGES 101–110)
// ==============================================================================

#label("ch-08")

// ==============================================================================
// SPREAD 1 · PAGE 101 (VERSO / LEFT): CHAPTER OPENER (DEEP TEAL BLOCK)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-teal,
  header: none,
  footer: none,
)[
  // Running Header Top Left
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-sand,
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · រដូវកាលទី១])

  // Archival Identification Tag
  #place(top + left, dx: 24mm, dy: 26mm, text(
    font: font-khmer-display,
    size: 6.5pt,
    fill: c-white.transparentize(30%),
  )[ឯកសារផ្លូវការ · ផែនការ និងយុទ្ធសាស្ត្របន្ទាប់])

  // Architectural Geometric Frame behind photo
  #geom-frame(24mm, 36mm, 162mm, 146mm, stroke-color: c-sand, offset-x: -5mm, offset-y: -5mm)

  // Future Strategic Photograph
  #place(top + left, dx: 24mm, dy: 36mm, image("../assets/photos/01.jpg", width: 162mm, height: 146mm, fit: "cover"))

  // Enormous Sculptural Numeral 08 overlapping photo bottom edge
  #place(top + left, dx: 18mm, dy: 166mm, display-number("០៨", size: 100pt, fill: c-sand, weight: "regular"))

  // Chapter Identity & Title
  #place(top + left, dx: 24mm, dy: 218mm, stack(
    spacing: 5mm,
    text(font: font-khmer-display, size: 22pt, fill: c-paper)[ជំពូកទី ៨ ៖\ ៧. ផែនការ និងយុទ្ធសាស្ត្របន្ទាប់],
    text(
      font: font-khmer-display,
      size: 9.5pt,
      weight: "bold",
      fill: c-sand-light,
    )[CHAPTER 6: Strategic Horizon & National Scalability Plan],
  ))

  // Figure Caption for Chapter Opener Photo
  #place(top + left, dx: 86mm, dy: 194mm, editorial-caption(
    "ទិដ្ឋភាពយុទ្ធសាស្ត្រ និងការរៀបចំផែនការពង្រីកវិសាលភាពគម្រោងទៅកាន់ទូទាំងប្រទេស",
    meta-tag: "យុទ្ធសាស្ត្របន្ទាប់",
    text-color: c-sand-light,
    width: 100mm,
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-teal.lighten(30%)))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    101,
    header-left: "ជំពូកទី៨ ៖ ផែនការ និងយុទ្ធសាស្ត្របន្ទាប់",
    side: "left",
    folio-color: c-sand,
    color: c-sand-light,
  ))
]


// ==============================================================================
// SPREAD 1 · PAGE 102 (RECTO / RIGHT): STRATEGIC EXPANSION OVERVIEW (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Right
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ៧. ផែនការបន្ទាប់])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "៧. ផែនការ និងយុទ្ធសាស្ត្របន្ទាប់",
    preset: "lg",
    size: 18pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Narrative Stack
  #place(top + left, dx: 24mm, dy: 66mm, block(
    width: 162mm,
    inset: 5mm,
    fill: c-white,
    stroke: (left: 3.5pt + c-teal, rest: 0.5pt + c-line),
    radius: 2pt,
  )[
    #text(font: font-khmer-body, size: 9pt, fill: c-charcoal)[
      ដោយគម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំរដូវកាលទី១ នេះទទួលបានសមិទ្ធផលល្អ និងផ្ដល់ជាអត្ថប្រយោជន៍បានយ៉ាងច្រើនដល់ខេត្តកំពង់ធំ និងសហគ្រាសក្នុងខេត្តកំពង់ធំ ផងដែរនោះ ក្រុមហ៊ុន អង្គរ  សូសល អ៊ិននើវេសិន ផាក ឯ.ក (ASIP) គ្រោងនឹងរៀបចំនូវគម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំរដូវកាលទី២ ទី៣ និងទី៤ ដោយយោងតាមប្រសាសន៍របស់ ឯកឧត្តមឧបនាយករដ្ឋមន្រ្ដីប្រចាំការ ដែលបានលើកឡើងថា នៅក្នុងកម្មវិធីសម្ពោធជាផ្លូវការនាថ្ងៃទី ខែកក្កដា ឆ្នាំ២០២៥ ថាគម្រោងមន្ទីរពិសោធន៍នវានុវត្ដន៍កំពង់ធំ នឹងរៀបចំជាបន្តបន្ទាប់រហូតសម្រេចអនុវត្តជាមួយសហគ្រិនចំនួន ១០០ រូប ត្រឹមឆ្នាំ២០២៨ នេះ ដោយមានការបន្តឧបត្ថម្ភថវិការបន្ថែមពី មូលនិធិអភិវឌ្ឍន៍ជំនាញ (SDF), សហគ្រិនខ្មែរ  (KE) និង ស្ថាប័នពាក់ព័ន្ធនានា។ គួរបញ្ជាក់ថា គម្រោងមន្ទីរពិសោធន៍នវានុវត្ដន៍កំពង់ធំរដូវកាលទី២ កំពុងតែបន្តជ្រើសរើសបេក្ខជនចូលរួមប្រកួត ដោយមកដល់ពេលនេះមានសហគ្រាសបានដាក់ពាក្យរហូតដល់១១០ រូប ដែលនឹងត្រូវជ្រើសរើសក្នុងវគ្គបន្តបន្ទាប់តរហូតទទួលបានបេក្ខជន ចំនួន៣០រូបចុងក្រោយ។
    ]
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    102,
    header-right: "៧. ផែនការ និងយុទ្ធសាស្ត្របន្ទាប់",
    side: "right",
  ))
]


// ==============================================================================
// SPREAD 2 · PAGE 103 (VERSO / LEFT): PROVINCIAL OUTREACH & STOUNG (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Left
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · សកម្មភាពផ្សព្វផ្សាយ])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "សកម្មភាពផ្សព្វផ្សាយគម្រោងក្នុងខេត្ត និងស្រុកស្ទោង",
    preset: "lg",
    size: 16pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Content Stack
  #place(top + left, dx: 24mm, dy: 66mm, stack(
    spacing: 4mm,
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-white,
      stroke: 0.5pt + c-line,
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
        ក្នុងដំណាក់កាលជ្រើសជ្រើសនេះផងដែរ ក្រុមការងារបានចុះធ្វើការផ្សព្វផ្សាយអំពីគម្រោងចំនួន២ លើកដោយ ៖
      ]
    ],
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-white,
      stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        - លើកទី១ ៖ នាថ្ងៃទី៣០ ខែឧសភា នៅវិទ្យាស្ថានពហុបច្ចេកទេសខេត្តកំពង់ធំ ដោយមានការចូលរួមពីឯកឧត្តម ងួន រាសី និងមន្ទីរខេត្តពាក់ព័ន្ធ។
      ]
    ],
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-sand-light.lighten(40%),
      stroke: (left: 3pt + c-sand, rest: 0.5pt + c-sand),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        - លើកទី២ ៖​ នាថ្ងៃទី៣១ ខែឧសភា នៅសាលាស្រុកស្ទោង ដោយមានការចូលរួមពីលោក អភិបាលស្រុក និងមន្រី្តពាក់ព័ន្ធ។
      ]
    ],
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    103,
    header-left: "សកម្មភាពផ្សព្វផ្សាយនៅខេត្តកំពង់ធំ និងស្រុកស្ទោង",
    side: "left",
  ))
]


// ==============================================================================
// SPREAD 2 · PAGE 104 (RECTO / RIGHT): 6.1 OPERATIONAL CHALLENGES & RISK (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Right
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ៦.១ ការគ្រប់គ្រងហានិភ័យ])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "6.1 Operational Challenges & Systemic Risk Management",
    preset: "lg",
    size: 16pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Intro
  #place(top + left, dx: 24mm, dy: 66mm, block(
    width: 162mm,
    inset: 4.5mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    radius: 2pt,
  )[
    #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
      Expanding incubation frameworks into rural environments requires navigating distinct operational hurdles:
    ]
    #h(2mm) #text(font: font-khmer-display, size: 7pt, fill: c-charcoal.lighten(40%))[(PDF)]
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    104,
    header-right: "៦.១ បញ្ហាប្រឈមប្រតិបត្តិការ និងការគ្រប់គ្រងហានិភ័យ",
    side: "right",
  ))
]


// ==============================================================================
// SPREAD 3 · PAGE 105 (VERSO / LEFT): SYSTEMIC RISKS (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Left
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ហានិភ័យប្រព័ន្ធ])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "ការវិភាគហានិភ័យប្រព័ន្ធ និងដំណោះស្រាយបច្ចេកវិទ្យា",
    preset: "lg",
    size: 15pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Risk Stack
  #place(top + left, dx: 24mm, dy: 66mm, stack(
    spacing: 4mm,
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-white,
      stroke: (left: 3pt + c-sand-dark, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        - The Rural Digital Divide: Inconsistent electricity and low digital literacy can delay online training and data tracking. Solution: Move toward a hybrid model by deploying mobile-friendly communication tools (e.g., Telegram channels) and providing direct, personal onsite coaching at the facilities. PDF+ 1
      ]
    ],
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-white,
      stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        - Superficial Learning vs. Real Application: Business owners sometimes struggle to translate broad classroom concepts into their everyday workflows. Solution: Make hands-on field exercises (like the market observation missions) mandatory, and pair them with weekly, one-on-one consulting reviews. PDF+ 1
      ]
    ],
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    105,
    header-left: "ការវិភាគហានិភ័យប្រព័ន្ធ",
    side: "left",
  ))
]


// ==============================================================================
// SPREAD 3 · PAGE 106 (RECTO / RIGHT): 6.2 LOCALIZATION (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Right
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ៦.២ ការធ្វើមូលដ្ឋានីយកម្ម])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "6.2 Localization & Full Khmer-Centric Curriculum Development",
    preset: "lg",
    size: 15pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Narrative Stack
  #place(top + left, dx: 24mm, dy: 66mm, block(
    width: 162mm,
    inset: 4.5mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    radius: 2pt,
  )[
    #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
      To make this business education permanently accessible across Cambodia's provinces, the project is actively updating its educational resources. Every textbook, diagnostic matrix, project management tool, and auditing sheet is being fully translated and localized into clear, practical Khmer. This ensures that future provincial business owners can easily learn advanced concepts without facing language barriers.
    ]
    #h(2mm) #text(font: font-khmer-display, size: 7pt, fill: c-charcoal.lighten(40%))[(PDF+ 2)]
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    106,
    header-right: "៦.២ ការធ្វើមូលដ្ឋានីយកម្មកម្មវិធីសិក្សាជាភាសាខ្មែរ",
    side: "right",
  ))
]


// ==============================================================================
// SPREAD 4 · PAGE 107 (VERSO / LEFT): 6.3 SEASON 2 EXPANSION (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Left
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ៦.៣ ការពង្រីករដូវកាលទី ២])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "6.3 Season 2 Expansion: Institutional Regional Blueprint",
    preset: "lg",
    size: 15pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Narrative Stack
  #place(top + left, dx: 24mm, dy: 66mm, block(
    width: 162mm,
    inset: 4.5mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    radius: 2pt,
  )[
    #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
      Building directly on the successful foundation established in Kampong Thom, the framework is being structured to scale nationwide via InnoLab Season 2.
    ]
    #h(2mm) #text(font: font-khmer-display, size: 7pt, fill: c-charcoal.lighten(40%))[(PDF)]
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    107,
    header-left: "៦.៣ ផែនការពង្រីករដូវកាលទី២ និងប្លង់មេស្ថាប័ន",
    side: "left",
  ))
]


// ==============================================================================
// SPREAD 4 · PAGE 108 (RECTO / RIGHT): NATIONAL BLUEPRINT DIAGRAM (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Right
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ប្លង់មេថ្នាក់ជាតិ])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "ដ្យាក្រាមពង្រីកវិសាលភាពស្ថាប័នថ្នាក់ជាតិ",
    preset: "lg",
    size: 16pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // National Blueprint Box
  #place(top + left, dx: 24mm, dy: 66mm, block(
    width: 162mm,
    height: 140mm,
    fill: c-teal.darken(15%),
    stroke: 0.5pt + c-sand,
    inset: 6mm,
    radius: 3pt,
  )[
    #align(center)[
      /*
    ┌─────────────────────────┼─────────────────────────┐
    ▼                         ▼                         ▼
    ┌──────────────────┐      ┌──────────────────┐      ┌──────────────────┐
    │  Kampong Thom    │      │    Province X    │      │    Province Y    │
    │    (Season 1     │      │    (Season 2     │      │    (Season 2     │
    │   Operational)   │      │   Deployment)    │      │   Deployment)    │
    └──────────────────┘      └──────────────────┘      └──────────────────┘
    */
    #text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-sand)[[ NATIONAL INNOLAB CORE ]]
      #v(6mm)
      #line(length: 120mm, stroke: 1pt + c-sand)
      #v(6mm)
      #grid(
        columns: (1fr, 1fr, 1fr),
        gutter: 4mm,
        block(fill: c-teal, inset: 4mm, radius: 2pt, stroke: 0.5pt + c-sand)[
          #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-sand)[│  Kampong Thom    │      │    Province X    │      │    Province Y    │]
          #v(1mm)
          #text(font: font-khmer-body, size: 7.5pt, fill: c-white)[│    (Season 1     │      │    (Season 2     │      │    (Season 2     │ │   Operational)   │      │   Deployment)    │      │   Deployment)    │]
        ],
        block(fill: c-teal.lighten(10%), inset: 4mm, radius: 2pt, stroke: 0.5pt + c-sand.transparentize(50%))[
          #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-sand)[│  Province X    │      │    Province X    │      │    Province Y    │]
          #v(1mm)
          #text(font: font-khmer-body, size: 7.5pt, fill: c-sand-light)[Season 2 Deployment]
        ],
        block(fill: c-teal.lighten(10%), inset: 4mm, radius: 2pt, stroke: 0.5pt + c-sand.transparentize(50%))[
          #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-sand)[│  Province Y    │      │    Province X    │      │    Province Y    │]
          #v(1mm)
          #text(font: font-khmer-body, size: 7.5pt, fill: c-sand-light)[Season 2 Deployment]
        ],
      )
    ]
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    108,
    header-right: "ប្លង់មេពង្រីកវិសាលភាពស្ថាប័នថ្នាក់ជាតិ",
    side: "right",
  ))
]


// ==============================================================================
// SPREAD 5 · PAGE 109 (VERSO / LEFT): LONG-TERM INSTITUTIONAL GOAL (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Left
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · គោលដៅវែងឆ្ងាយ])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "គោលដៅស្ថាប័នរយៈពេលវែង និងការបង្កើតបណ្តាញអចិន្ត្រៃយ៍",
    preset: "lg",
    size: 15pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Long-Term Goal
  #place(top + left, dx: 24mm, dy: 66mm, block(
    width: 162mm,
    inset: 5mm,
    fill: c-white,
    stroke: (left: 3.5pt + c-teal, rest: 0.5pt + c-line),
    radius: 2pt,
  )[
    #text(font: font-khmer-body, size: 9pt, fill: c-charcoal)[
      The long-term goal is to embed these innovation labs directly into regional polytechnic institutes across Cambodia. This strategy will establish permanent, practical business incubation hubs that continuously drive sustainable, modern economic growth throughout the country's provinces.
    ]
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    109,
    header-left: "គោលដៅស្ថាប័នរយៈពេលវែង",
    side: "left",
  ))
]


// ==============================================================================
// SPREAD 5 · PAGE 110 (RECTO / RIGHT): CHAPTER CLOSING PHOTOGRAPHY (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Right
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · សំយោគជំពូកទី ៨])

  // Full Page Photographic Hero Frame
  #geom-frame(24mm, 28mm, 162mm, 122mm, stroke-color: c-sand, offset-x: 3mm, offset-y: 3mm)
  #place(top + left, dx: 24mm, dy: 28mm, image("../assets/photos/02.jpg", width: 162mm, height: 122mm, fit: "cover"))

  // Photo Caption Cleanly Below Photo
  #place(top + left, dx: 24mm, dy: 154mm, editorial-caption(
    "ចក្ខុវិស័យប្រែក្លាយខេត្តកំពង់ធំជាមជ្ឈមណ្ឌលកសិឧស្សាហកម្មឈានមុខ និងការបោះជំហានទៅកាន់អនាគត",
    meta-tag: "ទស្សនវិស័យអនាគត",
    width: 162mm,
  ))

  // Bottom Synthesis Block
  #place(top + left, dx: 24mm, dy: 174mm, block(
    width: 162mm,
    inset: 4.5mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    radius: 2pt,
  )[
    #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[សំយោគយុទ្ធសាស្ត្រពង្រីកថ្នាក់ជាតិ]
    #v(1.5mm)
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      តាមរយៈភាពជោគជ័យជាក់ស្តែងនៃរដូវកាលទី១ គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំបានក្លាយជាគំរូដ៏រស់រវើកដែលអាចយកទៅអនុវត្តនៅតាមបណ្តាខេត្តផ្សេងៗទៀតក្នុងព្រះរាជាណាចក្រកម្ពុជា ដើម្បីចូលរួមចំណែកយ៉ាងសកម្មក្នុងការអភិវឌ្ឍសេដ្ឋកិច្ចមូលដ្ឋាន និងសេដ្ឋកិច្ចជាតិទាំងមូល។
    ]
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    110,
    header-right: "ជំពូកទី៨ ៖ សំយោគយុទ្ធសាស្ត្រពង្រីកថ្នាក់ជាតិ",
    side: "right",
  ))
]
