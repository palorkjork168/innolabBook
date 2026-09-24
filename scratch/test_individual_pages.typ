#import "../styles.typ": *

#set page(
  paper: "a4",
  margin: 0mm,
  fill: rgb("#114554"),
  header: none,
  footer: none,
)

// Test Front Cover alone
#block(width: 210mm, height: 297mm, clip: true)[
  #place(top + left, dx: -222mm)[
    #image("/assets/innovation-path.svg", width: 432mm, height: 297mm)
  ]

  #block(
    width: 210mm,
    height: 297mm,
    inset: (top: 26mm, bottom: 24mm, left: 24mm, right: 24mm),
  )[
    #grid(
      rows: (auto, 1fr, auto),

      // Top identity & logo area
      align(top)[
        #grid(
          columns: (auto, 1fr, auto),
          align: horizon,

          // Logo in pristine white pill badge
          block(
            fill: rgb("#FFFFFF"),
            radius: 5pt,
            inset: (x: 10pt, y: 5pt),
            stroke: 0.5pt + rgb("#DDE8E2"),
          )[
            #image("../assets/logos/innolab.webp", height: 13mm, fit: "contain")
          ],

          none,

          // Season / Year Badge
          block(
            stroke: 0.8pt + rgb("#D8B86C"),
            radius: 3pt,
            inset: (x: 8pt, y: 4pt),
          )[
            #text(
              font: ("Barlow", "Arial"),
              size: 8.5pt,
              weight: 700,
              fill: rgb("#D8B86C"),
              tracking: 1.2pt,
            )[
              SEASON 1 / 2025–2026
            ]
          ]
        )
      ],

      // Title & Hero Typography Area
      align(top + left)[
        #v(14mm)

        #text(
          font: ("Barlow", "Arial"),
          size: 10pt,
          weight: 600,
          fill: rgb("#D8B86C"),
          tracking: 2pt,
        )[
          PROJECT & ACHIEVEMENT REPORT
        ]

        #v(4mm)

        #text(
          font: "Kantumruy Pro",
          size: 32pt,
          weight: 700,
          fill: rgb("#FFFFFF"),
          spacing: 130%,
        )[
          មន្ទីរពិសោធន៍\
          នវានុវត្តន៍កំពង់ធំ
        ]

        #v(3mm)

        #text(
          font: ("Barlow", "Arial"),
          size: 20pt,
          weight: 700,
          fill: rgb("#DDE8E2"),
          tracking: 1.5pt,
        )[
          INNOLAB KAMPONG THOM
        ]

        #v(4mm)

        #line(
          length: 30mm,
          stroke: 1.5pt + rgb("#D8B86C"),
        )

        #v(4mm)

        #text(
          font: "Kantumruy Pro",
          size: 13pt,
          weight: 600,
          fill: rgb("#FFFFFF"),
        )[
          ផ្សារភ្ជាប់សហគ្រាស និងនវានុវត្តន៍ភាព
        ]

        #v(2mm)

        #text(
          font: ("Barlow", "Arial"),
          size: 9.5pt,
          weight: 500,
          fill: rgb("#DDE8E2"),
          tracking: 0.8pt,
        )[
          CONNECT SMEs, CONNECT INNOVATIONS
        ]
      ],

      // Bottom Supporting Institutional / Location Area
      align(bottom + left)[
        #line(
          length: 100%,
          stroke: 0.5pt + rgb("#DDE8E2").transparentize(60%),
        )

        #v(3mm)

        #grid(
          columns: (1fr, auto),
          align: horizon,

          text(
            font: "Kantumruy Pro",
            size: 8.5pt,
            fill: rgb("#FFFFFF"),
            weight: 600,
          )[
            ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)
          ],

          text(
            font: ("Barlow", "Arial"),
            size: 8pt,
            fill: rgb("#D8B86C"),
            weight: 600,
            tracking: 1pt,
          )[
            KAMPONG THOM · CAMBODIA
          ]
        )

        #v(1mm)

        #text(
          font: ("Barlow", "Arial"),
          size: 7.5pt,
          fill: rgb("#DDE8E2"),
          tracking: 0.5pt,
        )[
          ANGKOR SOCIAL INNOVATION PARK · PROJECT REPORT
        ]
      ]
    )
  ]
]

#pagebreak()

// Test Back Cover alone
#block(width: 210mm, height: 297mm, clip: true)[
  #place(top + left, dx: 0mm)[
    #image("/assets/innovation-path.svg", width: 432mm, height: 297mm)
  ]

  #block(
    width: 210mm,
    height: 297mm,
    inset: (top: 28mm, bottom: 24mm, left: 24mm, right: 24mm),
  )[
    #grid(
      rows: (auto, 1fr, auto),

      // Top identity line
      align(top + left)[
        #text(
          font: ("Barlow", "Arial"),
          size: 9pt,
          weight: 600,
          fill: rgb("#D8B86C"),
          tracking: 1.5pt,
        )[
          INNOLAB KAMPONG THOM
        ]
        #v(1mm)
        #text(
          font: "Kantumruy Pro",
          size: 8.5pt,
          fill: rgb("#DDE8E2"),
        )[
          របាយការណ៍បូកសរុបលទ្ធផលគម្រោង
        ]
      ],

      // Middle Summary Block
      align(horizon + left)[
        #text(
          font: "Kantumruy Pro",
          size: 20pt,
          weight: 700,
          fill: rgb("#FFFFFF"),
        )[
          ផ្សារភ្ជាប់សហគ្រាស\ និងនវានុវត្តន៍ភាព
        ]

        #v(3mm)

        #text(
          font: ("Barlow", "Arial"),
          size: 11pt,
          weight: 600,
          fill: rgb("#D8B86C"),
          tracking: 1pt,
        )[
          CONNECT SMEs, CONNECT INNOVATIONS
        ]

        #v(6mm)

        #line(
          length: 30mm,
          stroke: 1.2pt + rgb("#D8B86C"),
        )

        #v(6mm)

        #block(width: 155mm)[
          #text(
            font: "Kantumruy Pro",
            size: 9.5pt,
            fill: rgb("#DDE8E2"),
            spacing: 150%,
          )[
            មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (InnoLab Kampong Thom) ត្រូវបានបង្កើតឡើងក្នុងគោលបំណងពង្រឹង និងលើកកម្ពស់សមត្ថភាពសហគ្រាសធុនតូច និងមធ្យម (SMEs) តាមរយៈការធ្វើតេស្តសាកល្បងគំនិតច្នៃប្រឌិត ការបណ្តុះបណ្តាលបច្ចេកវិទ្យា និងការតភ្ជាប់បណ្តាញធុរកិច្ច ដើម្បីជំរុញកំណើនសេដ្ឋកិច្ចប្រកបដោយចីរភាពក្នុងខេត្តកំពង់ធំ។
          ]
        ]
      ],

      // Bottom Institutional & Logos Area
      align(bottom + left)[
        #text(
          font: "Kantumruy Pro",
          size: 8.5pt,
          fill: rgb("#DDE8E2"),
        )[
          អនុវត្ត និងគាំទ្រដោយ៖
        ]

        #v(3mm)

        // Clean white card for official logos
        #block(
          width: 100%,
          fill: rgb("#FFFFFF"),
          radius: 4pt,
          inset: (x: 10mm, y: 4.5mm),
          stroke: 0.5pt + rgb("#DDE8E2"),
        )[
          #grid(
            columns: (1fr, 1fr, 1fr),
            gutter: 6mm,
            align: horizon + center,
            image("../assets/logos/asip.webp", height: 13mm, fit: "contain"),
            image("../assets/logos/SDF-logo.png", height: 11mm, fit: "contain"),
            image("../assets/logos/ke-logo.webp", height: 10mm, fit: "contain"),
          )
        ]

        #v(4mm)

        #grid(
          columns: (1fr, auto),
          align: horizon,
          text(
            font: ("Barlow", "Arial"),
            size: 7.5pt,
            fill: rgb("#DDE8E2"),
            weight: 500,
            tracking: 0.8pt,
          )[
            ANGKOR SOCIAL INNOVATION PARK · SDF · KHMER ENTERPRISE
          ],
          text(
            font: ("Barlow", "Arial"),
            size: 7.5pt,
            fill: rgb("#D8B86C"),
            weight: 600,
            tracking: 1pt,
          )[
            KAMPONG THOM · CAMBODIA
          ],
        )
      ]
    )
  ]
]
