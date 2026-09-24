// ============================================================
// INNOLAB KAMPONG THOM
// REUSABLE PATTERN & DESIGN ACCENT SYSTEM
// CONTEMPORARY EDITORIAL & KHMER GEOMETRY (NO AI DOTS/NODES)
// ============================================================

// Chapter Opener Background Pattern (Deep Teal tone-on-tone)
#let chapter-bg-pattern(number: none) = {
  place(top + left)[
    #image("/assets/chapter-pattern-dark.svg", width: 210mm, height: 297mm, fit: "cover")
  ]
}

// Table of Contents Background Pattern (Paper tone-on-tone)
#let toc-bg-pattern() = {
  place(top + left)[
    #image("/assets/toc-pattern-light.svg", width: 210mm, height: 297mm, fit: "cover")
  ]
}

// Reusable clean editorial divider rule with subtle sand center accent
#let editorial-divider(colors, length: 100%, stroke-width: 0.65pt) = {
  block(width: length, height: 3mm)[
    #line(
      length: 100%,
      stroke: stroke-width + colors.line,
    )
    #place(center + horizon)[
      #block(
        width: 14mm,
        height: 1.5pt,
        fill: colors.sand,
      )
    ]
  ]
}

// Backward-compatible alias
#let network-divider(colors, length: 100%, stroke-width: 0.6pt) = editorial-divider(colors, length: length, stroke-width: stroke-width)

// Reusable architectural corner framing marks
#let editorial-frame-marks(colors, width: 100%, height: 100%) = {
  place(top + left)[
    #block(width: width, height: height)[
      // Top-left
      #place(top + left, dx: 0mm, dy: 0mm)[
        #line(length: 6mm, stroke: 0.8pt + colors.sand)
        #place(top + left)[#line(start: (0pt, 0pt), end: (0pt, 6mm), stroke: 0.8pt + colors.sand)]
      ]
      // Top-right
      #place(top + right, dx: 0mm, dy: 0mm)[
        #line(length: 6mm, stroke: 0.8pt + colors.sand)
        #place(top + right)[#line(start: (0pt, 0pt), end: (0pt, 6mm), stroke: 0.8pt + colors.sand)]
      ]
      // Bottom-left
      #place(bottom + left, dx: 0mm, dy: 0mm)[
        #line(length: 6mm, stroke: 0.8pt + colors.line)
        #place(bottom + left)[#line(start: (0pt, -6mm), end: (0pt, 0mm), stroke: 0.8pt + colors.line)]
      ]
      // Bottom-right
      #place(bottom + right, dx: 0mm, dy: 0mm)[
        #line(length: 6mm, stroke: 0.8pt + colors.line)
        #place(bottom + right)[#line(start: (0pt, -6mm), end: (0pt, 0mm), stroke: 0.8pt + colors.line)]
      ]
    ]
  ]
}
