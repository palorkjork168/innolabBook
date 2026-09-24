#import "../styles.typ": *

#set text(font: fonts.main)

#set page(
  paper: "a3",
  flipped: true,
  margin: 0mm,
  fill: colors.paper,
)

#grid(
  columns: (210mm, 210mm),
  rows: (297mm),
  
  // ============================================================
  // LEFT PAGE: CHAPTER OPENER (Deep Teal)
  // ============================================================
  block(
    width: 210mm,
    height: 297mm,
    fill: colors.primary,
  )[
    // Subtle background decorative tint
    #place(top + right, dx: 25mm, dy: -30mm)[
      #circle(
        radius: 80mm,
        fill: colors.primary.lighten(8%).transparentize(85%),
      )
    ]

    // Dotted trajectory line at bottom
    #place(bottom + left, dx: 0mm, dy: -16mm)[
      #block(width: 100%, height: 6mm)[
        #line(
          length: 100%,
          stroke: (
            paint: colors.sand.transparentize(70%),
            thickness: 0.8pt,
            dash: "densely-dashed",
          ),
        )
        // Milestone circle on the line at right margin
        #place(top + right, dx: -26mm, dy: -2.2mm)[
          #circle(
            radius: 2.5mm,
            stroke: 1.5pt + colors.sand,
            fill: colors.primary,
          )
        ]
      ]
    ]

    // Main Content Group
    #place(top + left, dx: 26mm, dy: 38mm)[
      #block(width: 158mm)[
        // Top label badge
        #text(
          font: fonts.display,
          size: 10pt,
          weight: 700,
          fill: colors.sand,
          tracking: 3pt,
        )[
          CHAPTER 01 · INNOLAB KAMPONG THOM
        ]

        #v(18mm)

        // Huge Chapter Numeral
        #text(
          font: fonts.display,
          size: 130pt,
          weight: 800,
          fill: colors.white,
        )[
          01
        ]

        #v(4mm)

        // Refined Sand Accent Bar
        #line(
          length: 40mm,
          stroke: (
            paint: colors.sand,
            thickness: 2.5pt,
          ),
        )

        #v(10mm)

        // Khmer Title (white, bold)
        #text(
          font: fonts.main,
          size: 30pt,
          weight: 700,
          fill: colors.white,
          spacing: 130%,
        )[
          ទិដ្ឋភាពទូទៅ និងអំពីគម្រោង
        ]

        #v(5mm)
        #text(
          font: fonts.display,
          size: 14pt,
          weight: 600,
          fill: colors.sage,
          tracking: 2pt,
        )[
          PROJECT OVERVIEW
        ]
      ]
    ]

    // Bottom Institutional Label
    #place(bottom + left, dx: 26mm, dy: -24mm)[
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
          fill: colors.sage.transparentize(30%),
        )[
          · របាយការណ៍បូកសរុបលទ្ធផលគម្រោង
        ]
      )
    ]
  ],

  // ============================================================
  // RIGHT PAGE: CHAPTER INTRO (Light Paper)
  // ============================================================
  block(
    width: 210mm,
    height: 297mm,
    fill: colors.paper,
    inset: (top: 24mm, bottom: 22mm, left: 24mm, right: 22mm),
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
        CHAPTER 01 OVERVIEW
      ],
      text(
        font: fonts.main,
        size: 8.5pt,
        weight: 600,
        fill: colors.gray,
      )[
        ទិដ្ឋភាពទូទៅនៃជំពូក
      ]
    )
    #v(2.5mm)
    #line(length: 100%, stroke: 0.75pt + colors.line)

    #v(7mm)

    // Intro Heading
    #text(
      font: fonts.main,
      size: 17pt,
      weight: 700,
      fill: colors.primary,
    )[
      សេចក្តីផ្តើម និងខ្លឹមសារសង្ខេប
    ]

    #v(4mm)

    // Chapter Intro Paragraph
    #block(
      width: 100%,
      stroke: (left: 3pt + colors.sand),
      inset: (left: 5mm, y: 1.5mm),
    )[
      #text(
        font: fonts.main,
        size: 10.5pt,
        fill: colors.text,
        weight: 400,
        spacing: 140%,
      )[
        ជំពូកនេះបង្ហាញ បរិបទខេត្តកំពង់ធំ សារៈសំខាន់នៃនវានុវត្តន៍ អត្តសញ្ញាណ និងចក្ខុវិស័យ របស់ InnoLab Kampong Thom ព្រមទាំងរចនាសម្ព័ន្ធការអនុវត្ត និងរូបភាពសង្ខេប នៃរដូវកាលទី១។
      ]
    ]

    #v(7mm)

    // Image Area
    #block(
      width: 100%,
      height: 68mm,
      radius: 3pt,
      clip: true,
      stroke: 0.6pt + colors.line,
    )[
      #image("../assets/photos/DSC_8462.jpg", width: 100%, height: 100%, fit: "cover")
    ]
    
    #v(2mm)
    
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      text(
        font: fonts.main,
        size: 7.5pt,
        fill: colors.gray,
      )[
        រូបភាព៖ សកម្មភាពគម្រោង InnoLab Kampong Thom រដូវកាលទី១
      ],
      text(
        font: fonts.display,
        size: 7.5pt,
        fill: colors.gray,
        weight: 600,
        tracking: 1pt,
      )[
        INNOLAB ARCHIVE · 2025
      ]
    )

    #v(6mm)

    // Key Focus Card
    #block(
      width: 100%,
      fill: colors.white,
      radius: 3pt,
      inset: (x: 5mm, y: 4.5mm),
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
          ]
        ),
        text(
          font: fonts.main,
          size: 8.5pt,
          fill: colors.text,
        )[
          ការស្វែងយល់ពីបរិបទគម្រោង ចក្ខុវិស័យ និងគោលបំណងយុទ្ធសាស្ត្រនៃការបង្កើត InnoLab
        ]
      )
    ]
  ]
)
