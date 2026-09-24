#import "../styles.typ": *

#set text(font: fonts.main)

// Test SVG / Typst Pattern Component
#let test-pattern-dark(width: 210mm, height: 297mm, chapter: "01") = {
  // Let's create an SVG string with geometric network lines, coordinate grid, and nodes
  let svg-code = ```<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 210 297" width="210mm" height="297mm">
    <defs>
      <!-- Subdued tone-on-tone linear gradients -->
      <linearGradient id="gridGrad" x1="0%" y1="0%" x2="100%" y2="100%">
        <stop offset="0%" stop-color="#DDE8E2" stop-opacity="0.04"/>
        <stop offset="50%" stop-color="#DDE8E2" stop-opacity="0.08"/>
        <stop offset="100%" stop-color="#DDE8E2" stop-opacity="0.02"/>
      </linearGradient>
      
      <linearGradient id="rayGrad" x1="0%" y1="0%" x2="100%" y2="100%">
        <stop offset="0%" stop-color="#D8B86C" stop-opacity="0.25"/>
        <stop offset="40%" stop-color="#DDE8E2" stop-opacity="0.12"/>
        <stop offset="100%" stop-color="#114554" stop-opacity="0"/>
      </linearGradient>

      <!-- Pattern tile for subtle coordinate dot-matrix -->
      <pattern id="dotGrid" width="15" height="15" patternUnits="userSpaceOnUse">
        <circle cx="7.5" cy="7.5" r="0.4" fill="#DDE8E2" fill-opacity="0.18"/>
      </pattern>
    </defs>

    <!-- Subtle dot-matrix field across the upper-right canvas -->
    <rect x="80" y="20" width="120" height="180" fill="url(#dotGrid)"/>

    <!-- Fine architectural coordinate grid lines (spacing 30mm) -->
    <!-- Vertical grid lines -->
    <line x1="26" y1="20" x2="26" y2="280" stroke="#DDE8E2" stroke-width="0.3" stroke-opacity="0.08" stroke-dasharray="1,4"/>
    <line x1="60" y1="20" x2="60" y2="280" stroke="#DDE8E2" stroke-width="0.3" stroke-opacity="0.08" stroke-dasharray="1,4"/>
    <line x1="120" y1="20" x2="120" y2="280" stroke="#DDE8E2" stroke-width="0.3" stroke-opacity="0.08" stroke-dasharray="1,4"/>
    <line x1="184" y1="20" x2="184" y2="280" stroke="#DDE8E2" stroke-width="0.3" stroke-opacity="0.08" stroke-dasharray="1,4"/>

    <!-- Horizontal grid lines -->
    <line x1="15" y1="36" x2="195" y2="36" stroke="#DDE8E2" stroke-width="0.3" stroke-opacity="0.08" stroke-dasharray="1,4"/>
    <line x1="15" y1="90" x2="195" y2="90" stroke="#DDE8E2" stroke-width="0.3" stroke-opacity="0.08" stroke-dasharray="1,4"/>
    <line x1="15" y1="160" x2="195" y2="160" stroke="#DDE8E2" stroke-width="0.3" stroke-opacity="0.08" stroke-dasharray="1,4"/>
    <line x1="15" y1="230" x2="195" y2="230" stroke="#DDE8E2" stroke-width="0.3" stroke-opacity="0.08" stroke-dasharray="1,4"/>
    <line x1="15" y1="270" x2="195" y2="270" stroke="#DDE8E2" stroke-width="0.3" stroke-opacity="0.08" stroke-dasharray="1,4"/>

    <!-- Precision crosshairs at key intersections -->
    <path d="M 58 90 L 62 90 M 60 88 L 60 92" stroke="#DDE8E2" stroke-width="0.6" stroke-opacity="0.25"/>
    <path d="M 118 36 L 122 36 M 120 34 L 120 38" stroke="#DDE8E2" stroke-width="0.6" stroke-opacity="0.25"/>
    <path d="M 182 160 L 186 160 M 184 158 L 184 162" stroke="#D8B86C" stroke-width="0.7" stroke-opacity="0.4"/>
    <path d="M 118 230 L 122 230 M 120 228 L 120 232" stroke="#DDE8E2" stroke-width="0.6" stroke-opacity="0.25"/>

    <!-- Atmospheric network rays / diagonal trajectories -->
    <path d="M 184 40 L 145 90 L 175 145 L 120 230" fill="none" stroke="url(#rayGrad)" stroke-width="0.8" stroke-linecap="round"/>
    <path d="M 145 90 L 95 110" fill="none" stroke="#DDE8E2" stroke-width="0.5" stroke-dasharray="2,3" stroke-opacity="0.15"/>
    
    <!-- Concentric radar / innovation waves (subtle top-right) -->
    <circle cx="184" cy="40" r="35" fill="none" stroke="#DDE8E2" stroke-width="0.4" stroke-opacity="0.06"/>
    <circle cx="184" cy="40" r="70" fill="none" stroke="#DDE8E2" stroke-width="0.4" stroke-opacity="0.05" stroke-dasharray="2,4"/>
    <circle cx="184" cy="40" r="110" fill="none" stroke="#DDE8E2" stroke-width="0.4" stroke-opacity="0.03"/>

    <!-- Network Nodes (milestones) -->
    <circle cx="184" cy="40" r="2" fill="#114554" stroke="#D8B86C" stroke-width="0.8"/>
    <circle cx="184" cy="40" r="0.8" fill="#D8B86C"/>

    <circle cx="145" cy="90" r="2.5" fill="#114554" stroke="#DDE8E2" stroke-width="0.8"/>
    <circle cx="145" cy="90" r="1" fill="#FFFFFF" fill-opacity="0.8"/>

    <circle cx="175" cy="145" r="3.2" fill="#114554" stroke="#D8B86C" stroke-width="0.9"/>
    <circle cx="175" cy="145" r="1.3" fill="#D8B86C"/>
    <circle cx="175" cy="145" r="6" fill="none" stroke="#D8B86C" stroke-width="0.4" stroke-dasharray="1.5,1.5" stroke-opacity="0.4"/>

    <circle cx="95" cy="110" r="1.8" fill="#114554" stroke="#DDE8E2" stroke-width="0.6"/>
    <circle cx="95" cy="110" r="0.7" fill="#DDE8E2" fill-opacity="0.7"/>

    <circle cx="120" cy="230" r="2.2" fill="#114554" stroke="#DDE8E2" stroke-width="0.8"/>
    <circle cx="120" cy="230" r="0.9" fill="#DDE8E2" fill-opacity="0.8"/>

    <!-- Geographic Coordinate Reference Stamp (subtle right-edge vertical or bottom) -->
    <text x="184" y="275" font-family="Barlow, Arial, sans-serif" font-size="3.2" font-weight="600" fill="#DDE8E2" fill-opacity="0.25" letter-spacing="0.5" text-anchor="end">
      GEO REF: 12°42'N 104°53'E · KAMPONG THOM INNOVATION ECOSYSTEM
    </text>
  </svg>```.text

  image.decode(svg-code, width: width, height: height, fit: "cover")
}

#page(
  paper: "a4",
  margin: 0mm,
  fill: colors.primary,
)[
  #place(top + left)[
    #test-pattern-dark()
  ]

  // Foreground content
  #place(top + left, dx: 26mm, dy: 34mm)[
    #block(width: 158mm)[
      #text(
        font: fonts.display,
        size: 9.5pt,
        weight: 700,
        fill: colors.sand,
        tracking: 2.8pt,
      )[
        CHAPTER 01 · INNOLAB KAMPONG THOM
      ]

      #v(14mm)

      #text(
        font: fonts.display,
        size: 120pt,
        weight: 800,
        fill: colors.white,
      )[
        01
      ]

      #v(3mm)

      #line(
        length: 38mm,
        stroke: (
          paint: colors.sand,
          thickness: 2.5pt,
        ),
      )

      #v(8mm)

      #text(
        font: fonts.main,
        size: 28pt,
        weight: 700,
        fill: colors.white,
        spacing: 130%,
      )[
        ទិដ្ឋភាពទូទៅ និងអំពីគម្រោង
      ]

      #v(4.5mm)
      #text(
        font: fonts.display,
        size: 13.5pt,
        weight: 600,
        fill: colors.sage,
        tracking: 1.8pt,
      )[
        PROJECT OVERVIEW
      ]
    ]
  ]

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
]
