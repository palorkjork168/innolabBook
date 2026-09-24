#import "../styles.typ": *

// Prototype Cover Spread
#set document(title: "InnoLab Kampong Thom - Cover Spread Test")

#let brand = (
  primary: rgb("#114554"),
  sage: rgb("#DDE8E2"),
  sand: rgb("#D8B86C"),
  white: rgb("#FFFFFF"),
  dark: rgb("#202627"),
  tint: rgb("#19586b"),
)

#let font-khmer = "Kantumruy Pro"
#let font-latin = ("Barlow", "Arial")

// -------------------------------------------------------------
// Vector Innovation Path SVG generator
// -------------------------------------------------------------
// We create SVG paths that can be rendered either for the full spread (width: 432mm)
// or for back cover (0..210mm) and front cover (222..432mm).
#let spread-motif-svg = ```
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 432 297" width="432mm" height="297mm">
  <defs>
    <linearGradient id="pathGrad" x1="0%" y1="100%" x2="100%" y2="0%">
      <stop offset="0%" stop-color="#DDE8E2" stop-opacity="0.3"/>
      <stop offset="50%" stop-color="#DDE8E2" stop-opacity="0.5"/>
      <stop offset="85%" stop-color="#D8B86C" stop-opacity="0.9"/>
      <stop offset="100%" stop-color="#FFFFFF" stop-opacity="1"/>
    </linearGradient>
    <linearGradient id="glowGrad" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" stop-color="#D8B86C" stop-opacity="0.2"/>
      <stop offset="100%" stop-color="#114554" stop-opacity="0"/>
    </linearGradient>
  </defs>

  <!-- Ambient background geometry (subtle, editorial) -->
  <circle cx="360" cy="110" r="90" fill="url(#glowGrad)"/>
  <circle cx="80" cy="200" r="70" fill="url(#glowGrad)"/>

  <!-- Subtle secondary guide line (dotted) -->
  <path d="M 25 215 C 80 215, 140 190, 210 185 C 216 184.6, 222 184.2, 228 183.8 C 290 180, 335 155, 385 85"
        fill="none" stroke="#DDE8E2" stroke-width="0.8" stroke-dasharray="2,3" stroke-opacity="0.4"/>

  <!-- Primary Innovation Trajectory Path -->
  <path d="M 30 200 C 90 200, 150 175, 210 173 C 216 172.8, 222 172.6, 228 172.4 C 285 170, 320 145, 375 95"
        fill="none" stroke="url(#pathGrad)" stroke-width="1.8" stroke-linecap="round"/>

  <!-- Upward directional pulse dash -->
  <path d="M 375 95 L 392 80"
        fill="none" stroke="#D8B86C" stroke-width="2.2" stroke-linecap="round"/>

  <!-- Arrowhead / Forward Beacon (minimalist geometric diamond/arrow) -->
  <polygon points="392,80 382,83 388,89" fill="#D8B86C"/>

  <!-- Back Cover Nodes -->
  <!-- Node 1: Foundation (Kampong Thom ecosystem) -->
  <circle cx="65" cy="198" r="3.5" fill="#114554" stroke="#DDE8E2" stroke-width="1.2"/>
  <circle cx="65" cy="198" r="1.5" fill="#DDE8E2"/>

  <!-- Node 2: SME Connection -->
  <circle cx="140" cy="180" r="4" fill="#114554" stroke="#D8B86C" stroke-width="1.2"/>
  <circle cx="140" cy="180" r="1.8" fill="#D8B86C"/>

  <!-- Spine Crossing Node -->
  <circle cx="216" cy="172.7" r="2.5" fill="#114554" stroke="#DDE8E2" stroke-width="1"/>
  <circle cx="216" cy="172.7" r="1" fill="#FFFFFF"/>

  <!-- Front Cover Nodes -->
  <!-- Node 3: Acceleration -->
  <circle cx="275" cy="168" r="4" fill="#114554" stroke="#DDE8E2" stroke-width="1.2"/>
  <circle cx="275" cy="168" r="1.8" fill="#DDE8E2"/>

  <!-- Node 4: Innovation Summit / Peak (Gold highlight) -->
  <circle cx="340" cy="130" r="5" fill="#114554" stroke="#D8B86C" stroke-width="1.5"/>
  <circle cx="340" cy="130" r="2.4" fill="#D8B86C"/>
  <circle cx="340" cy="130" r="9" fill="none" stroke="#D8B86C" stroke-width="0.6" stroke-dasharray="1.5,2" stroke-opacity="0.7"/>

  <!-- Micro constellation dots for high-tech innovation feel -->
  <circle cx="365" cy="75" r="1.2" fill="#FFFFFF" fill-opacity="0.7"/>
  <circle cx="330" cy="85" r="1" fill="#DDE8E2" fill-opacity="0.6"/>
  <circle cx="385" cy="120" r="1" fill="#D8B86C" fill-opacity="0.8"/>
  <circle cx="165" cy="160" r="1" fill="#DDE8E2" fill-opacity="0.5"/>
</svg>
```

// Render spread page
#set page(
  width: 432mm,
  height: 297mm,
  margin: 0mm,
  fill: brand.primary,
)

// Background SVG motif placed full bleed
#place(top + left)[
  #image("/assets/innovation-path.svg", width: 432mm, height: 297mm, fit: "cover")
]

// Spread grid: Back Cover (210mm) | Spine (12mm) | Front Cover (210mm)
#grid(
  columns: (210mm, 12mm, 210mm),
  rows: (297mm),

  // ===========================================================
  // BACK COVER (Left)
  // ===========================================================
  block(
    width: 210mm,
    height: 297mm,
    inset: (top: 28mm, bottom: 24mm, left: 24mm, right: 24mm),
  )[
    #grid(
      rows: (auto, 1fr, auto),

      // Top identity line
      align(top + left)[
        #text(
          font: font-latin,
          size: 9pt,
          weight: 600,
          fill: brand.sand,
          tracking: 1.5pt,
        )[
          INNOLAB KAMPONG THOM
        ]
        #v(1mm)
        #text(
          font: font-khmer,
          size: 8.5pt,
          fill: brand.sage,
        )[
          របាយការណ៍បូកសរុបលទ្ធផលគម្រោង
        ]
      ],

      // Middle Summary Block
      align(horizon + left)[
        #text(
          font: font-khmer,
          size: 20pt,
          weight: 700,
          fill: brand.white,
        )[
          ផ្សារភ្ជាប់សហគ្រាស\
          និងនវានុវត្តន៍ភាព
        ]

        #v(3mm)

        #text(
          font: font-latin,
          size: 11pt,
          weight: 600,
          fill: brand.sand,
          tracking: 1pt,
        )[
          CONNECT SMEs, CONNECT INNOVATIONS
        ]

        #v(6mm)

        #line(
          length: 30mm,
          stroke: 1.2pt + brand.sand,
        )

        #v(6mm)

        #block(width: 155mm)[
          #text(
            font: font-khmer,
            size: 9.5pt,
            fill: brand.sage,
            spacing: 150%,
          )[
            មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (InnoLab Kampong Thom) ត្រូវបានបង្កើតឡើងក្នុងគោលបំណងពង្រឹង និងលើកកម្ពស់សមត្ថភាពសហគ្រាសធុនតូច និងមធ្យម (SMEs) តាមរយៈការធ្វើតេស្តសាកល្បងគំនិតច្នៃប្រឌិត ការបណ្តុះបណ្តាលបច្ចេកវិទ្យា និងការតភ្ជាប់បណ្តាញធុរកិច្ច ដើម្បីជំរុញកំណើនសេដ្ឋកិច្ចប្រកបដោយចីរភាពក្នុងខេត្តកំពង់ធំ។
          ]
        ]
      ],

      // Bottom Institutional & Logos Area
      align(bottom + left)[
        #text(
          font: font-khmer,
          size: 8.5pt,
          fill: brand.sage,
        )[
          អនុវត្ត និងគាំទ្រដោយ៖
        ]

        #v(3mm)

        // Clean white card for official logos
        #block(
          width: 100%,
          fill: brand.white,
          radius: 4pt,
          inset: (x: 10mm, y: 4.5mm),
          stroke: 0.5pt + brand.sage,
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
            font: font-latin,
            size: 7.5pt,
            fill: brand.sage,
            weight: 500,
            tracking: 0.8pt,
          )[
            ANGKOR SOCIAL INNOVATION PARK · SDF · KHMER ENTERPRISE
          ],
          text(
            font: font-latin,
            size: 7.5pt,
            fill: brand.sand,
            weight: 600,
            tracking: 1pt,
          )[
            KAMPONG THOM · CAMBODIA
          ],
        )
      ]
    )
  ],

  // ===========================================================
  // SPINE (Middle)
  // ===========================================================
  block(
    width: 12mm,
    height: 297mm,
    fill: brand.primary,
    inset: (top: 20mm, bottom: 20mm),
  )[
    #align(center + horizon)[
      #rotate(90deg)[
        #block(width: 250mm)[
          #grid(
            columns: (auto, 1fr, auto),
            align: horizon,
            gutter: 4mm,

            text(
              font: font-latin,
              size: 8pt,
              weight: 700,
              fill: brand.white,
              tracking: 1pt,
            )[
              INNOLAB KAMPONG THOM
            ],

            align(center)[
              #text(
                font: font-khmer,
                size: 7.5pt,
                weight: 600,
                fill: brand.sage,
              )[
                របាយការណ៍គម្រោង និងសមិទ្ធផល
              ]
            ],

            text(
              font: font-latin,
              size: 8pt,
              weight: 600,
              fill: brand.sand,
              tracking: 0.8pt,
            )[
              SEASON 1 · 2025–2026
            ],
          )
        ]
      ]
    ]
  ],

  // ===========================================================
  // FRONT COVER (Right)
  // ===========================================================
  block(
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
            fill: brand.white,
            radius: 5pt,
            inset: (x: 10pt, y: 5pt),
            stroke: 0.5pt + brand.sage,
          )[
            #image("../assets/logos/innolab.webp", height: 13mm, fit: "contain")
          ],

          none,

          // Season / Year Badge
          block(
            stroke: 0.8pt + brand.sand,
            radius: 3pt,
            inset: (x: 8pt, y: 4pt),
          )[
            #text(
              font: font-latin,
              size: 8.5pt,
              weight: 700,
              fill: brand.sand,
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
          font: font-latin,
          size: 10pt,
          weight: 600,
          fill: brand.sand,
          tracking: 2pt,
        )[
          PROJECT & ACHIEVEMENT REPORT
        ]

        #v(4mm)

        #text(
          font: font-khmer,
          size: 32pt,
          weight: 700,
          fill: brand.white,
          spacing: 130%,
        )[
          មន្ទីរពិសោធន៍\
          នវានុវត្តន៍កំពង់ធំ
        ]

        #v(3mm)

        #text(
          font: font-latin,
          size: 20pt,
          weight: 700,
          fill: brand.sage,
          tracking: 1.5pt,
        )[
          INNOLAB KAMPONG THOM
        ]

        #v(4mm)

        #line(
          length: 30mm,
          stroke: 1.5pt + brand.sand,
        )

        #v(4mm)

        #text(
          font: font-khmer,
          size: 13pt,
          weight: 600,
          fill: brand.white,
        )[
          ផ្សារភ្ជាប់សហគ្រាស និងនវានុវត្តន៍ភាព
        ]

        #v(2mm)

        #text(
          font: font-latin,
          size: 9.5pt,
          weight: 500,
          fill: brand.sage,
          tracking: 0.8pt,
        )[
          CONNECT SMEs, CONNECT INNOVATIONS
        ]
      ],

      // Bottom Supporting Institutional / Location Area
      align(bottom + left)[
        #line(
          length: 100%,
          stroke: 0.5pt + rgb(brand.sage.to-hex() + "40"),
        )

        #v(3mm)

        #grid(
          columns: (1fr, auto),
          align: horizon,

          text(
            font: font-khmer,
            size: 8.5pt,
            fill: brand.white,
            weight: 600,
          )[
            ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)
          ],

          text(
            font: font-latin,
            size: 8pt,
            fill: brand.sand,
            weight: 600,
            tracking: 1pt,
          )[
            KAMPONG THOM · CAMBODIA
          ]
        )

        #v(1mm)

        #text(
          font: font-latin,
          size: 7.5pt,
          fill: brand.sage,
          tracking: 0.5pt,
        )[
          ANGKOR SOCIAL INNOVATION PARK · PROJECT REPORT
        ]
      ]
    )
  ]
)
