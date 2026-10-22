// ==============================================================================
// INNOLAB KAMPONG THOM — CATALOGUE DESIGN SYSTEM PRIMITIVES
// Contemporary Editorial Publication / Brand Book Architecture
// ==============================================================================

#let c-teal = rgb("#114554")
#let c-teal-dark = rgb("#0B2C36")
#let c-paper = rgb("#F7F7F3")
#let c-charcoal = rgb("#202627")
#let c-sand = rgb("#D8B86C")
#let c-sand-light = rgb("#EBDAB0")
#let c-sand-dark = rgb("#B39246")
#let c-white = rgb("#FFFFFF")
#let c-muted = rgb("#687276")
#let c-line = rgb("#202627").lighten(78%)
#let c-line-teal = rgb("#114554").lighten(65%)

// Approved Typography System (Barlow, Kdam Thmor Pro, Kantumruy Pro)
#let font-khmer-display = ("Kdam Thmor Pro", "Kantumruy Pro")
#let font-khmer-body = ("Kantumruy Pro", "Khmer OS Battambang")
#let font-sans = ("Barlow", "Arial")

// ------------------------------------------------------------------------------
// GLOBAL KHMER NUMERAL & FIGURE COUNTER ENGINE
// ------------------------------------------------------------------------------
#let fig-counter = counter("report-figure")

#let to-khmer-num(n) = {
  let s = str(n)
  let digits = (
    "0": "០",
    "1": "១",
    "2": "២",
    "3": "៣",
    "4": "៤",
    "5": "៥",
    "6": "៦",
    "7": "៧",
    "8": "៨",
    "9": "៩",
  )
  s.clusters().map(c => digits.at(c, default: c)).join()
}

#let clean-caption-title(title) = {
  if type(title) == str {
    let t = title.trim()
    if t.starts-with("រូបភាព") {
      for sep in ("—", "-", "៖", ":") {
        let parts = t.split(sep)
        if parts.len() > 1 {
          return parts.slice(1).join(sep).trim()
        }
      }
    }
    return t
  }
  return title
}

// ------------------------------------------------------------------------------
// 1. KHMER DISPLAY TITLE WITH CALIBRATED LINE HEIGHT
// Eliminates line collision while maintaining generous editorial breathing room
// ------------------------------------------------------------------------------
// Calibrated Khmer display leading tokens (Generous breathing room, zero collision)
#let khmer-leading-xl = 16pt   // 32pt – 40pt
#let khmer-leading-lg = 13pt   // 24pt – 30pt
#let khmer-leading-md = 10.5pt // 18pt – 22pt
#let khmer-leading-sm = 8.5pt  // 13pt – 16pt

#let khmer-display-title(
  khmer-text,
  preset: "lg", // "xl", "lg", "md", "sm"
  english: none,
  eyebrow: none,
  size: none,
  leading: none,
  color: c-teal,
  english-color: none,
  rule: true,
  rule-length: auto,
  rule-stroke: auto,
  spacing: none,
) = {
  let final-size = if size != none {
    size
  } else if preset == "xl" {
    32pt
  } else if preset == "lg" {
    26pt
  } else if preset == "md" {
    20pt
  } else {
    15pt
  }

  let final-leading = if leading != none {
    leading
  } else if final-size >= 30pt {
    khmer-leading-xl
  } else if final-size >= 24pt {
    khmer-leading-lg
  } else if final-size >= 18pt {
    khmer-leading-md
  } else {
    khmer-leading-sm
  }

  let final-rule-length = if rule-length != auto {
    rule-length
  } else if preset == "xl" {
    110mm
  } else if preset == "lg" {
    90mm
  } else if preset == "md" {
    80mm
  } else {
    60mm
  }

  let final-rule-stroke = if rule-stroke != auto {
    rule-stroke
  } else if preset == "xl" {
    1pt + c-sand
  } else {
    0.75pt + c-sand
  }

  // Calibrated editorial gaps: comfortable separation between Khmer glyphs, English subtitles, and hairline rules
  let (gap-title-sub, gap-sub-rule, gap-title-rule) = if spacing != none {
    (spacing, spacing * 0.6, spacing * 0.9)
  } else if final-size >= 30pt {
    (5mm, 2.5mm, 4.5mm)
  } else if final-size >= 24pt {
    (4.5mm, 2.2mm, 4mm)
  } else if final-size >= 18pt {
    (4mm, 2mm, 3.5mm)
  } else {
    (3.5mm, 1.8mm, 3mm)
  }

  let eng-color = if english-color != none { english-color } else {
    if color == c-white or color == c-sand { c-sand-light } else { c-charcoal.lighten(20%) }
  }

  stack(
    if eyebrow != none [
      #text(font: font-sans, size: 7.5pt, weight: "medium", fill: c-charcoal.lighten(40%), tracking: 0.16em)[#upper(eyebrow)]
      #v(3mm)
    ],
    block[
      #set par(leading: final-leading, justify: false)
      #text(font: font-khmer-display, size: final-size, fill: color)[#khmer-text]
    ],
    if english != none [
      #v(gap-title-sub)
      #let eng-size = if final-size >= 30pt { 13pt } else if final-size >= 24pt { 11pt } else { final-size * 0.44 }
      #text(font: font-sans, size: eng-size, weight: 600, tracking: 0.12em, fill: color)[#upper(english)]
    ],
    if rule [
      #let rule-spacing = if english != none { gap-sub-rule } else { gap-title-rule }
      #v(rule-spacing)
      #line(length: final-rule-length, stroke: final-rule-stroke)
    ]
  )
}

// ------------------------------------------------------------------------------
// 2. LARGE EDITORIAL DISPLAY NUMERAL
// Bold Barlow numbers for chapters, sections, and metrics
// ------------------------------------------------------------------------------
#let display-number(
  num,
  size: 100pt,
  fill: c-sand,
  weight: 700,
) = {
  text(
    font: font-sans,
    size: size,
    weight: weight,
    fill: fill,
    baseline: 0pt,
  )[#num]
}

// ------------------------------------------------------------------------------
// 3. THIN ARCHITECTURAL GEOMETRIC FRAME
// Structural 0.5pt hairline with optional corner anchor marker
// ------------------------------------------------------------------------------
#let geom-frame(
  x, y, w, h,
  stroke-color: c-sand,
  offset-x: -5mm,
  offset-y: -5mm,
  marker: true,
  marker-size: 2mm,
) = {
  place(
    top + left,
    dx: x + offset-x,
    dy: y + offset-y,
    rect(
      width: w,
      height: h,
      stroke: 0.5pt + stroke-color,
      fill: none,
    )
  )
  if marker {
    place(
      top + left,
      dx: x + offset-x - (marker-size / 2),
      dy: y + offset-y - (marker-size / 2),
      rect(
        width: marker-size,
        height: marker-size,
        fill: stroke-color,
        stroke: none,
      )
    )
  }
}

// ------------------------------------------------------------------------------
// 4. UNBOXED EDITORIAL PULL QUOTE
// Minimalist architectural quote with vertical accent rule
// ------------------------------------------------------------------------------
#let editorial-quote(
  quote-text,
  author: none,
  attribution: none,
  tag: none,
  meta-tag: none,
  bar-color: c-sand,
  text-color: c-teal,
  text-size: 10.5pt,
  bar-height: 18mm,
  width: 100%,
) = {
  let final-author = if author != none { author } else { attribution }
  let final-tag = if tag != none { tag } else { meta-tag }
  block(width: width)[
    #grid(
      columns: (1.5pt, 1fr),
      gutter: 4.5mm,
      rect(width: 1.5pt, height: bar-height, fill: bar-color, stroke: none),
      stack(spacing: 4mm,
        if final-tag != none [
          #text(font: font-sans, size: 7pt, weight: "bold", fill: bar-color.darken(10%), tracking: 0.16em)[#final-tag]
        ],
        block[
          #set par(leading: 9.5pt, justify: false)
          #text(font: font-khmer-display, size: text-size, fill: text-color)[«#quote-text»]
        ],
        if final-author != none [
          #text(font: font-sans, size: 7pt, fill: c-muted, tracking: 0.1em)[— #final-author]
        ]
      )
    )
  ]
}

#let editorial-kicker(kicker-text, color: c-sand-dark) = {
  text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: color,
    tracking: 0.12em,
  )[#kicker-text]
}

// ------------------------------------------------------------------------------
// 5. EDITORIAL METRIC DISPLAY (No boxes, pure typographic scale)
// ------------------------------------------------------------------------------
#let metric-display(
  num-str,
  label-khmer,
  label-english: none,
  num-size: 48pt,
  num-color: c-teal,
) = {
  stack(spacing: 3.5mm,
    text(font: font-sans, size: num-size, weight: 700, fill: num-color)[#num-str],
    block[
      #set par(leading: 7.5pt, justify: false)
      #text(font: font-khmer-display, size: 10pt, fill: c-teal)[#label-khmer]
    ],
    if label-english != none [
      #text(font: font-sans, size: 7pt, fill: c-muted, tracking: 0.12em)[#label-english]
    ]
  )
}

// ------------------------------------------------------------------------------
// 6. EDITORIAL CAPTION & AUTOMATIC GLOBAL FIGURE NUMBERING
// ------------------------------------------------------------------------------
#let editorial-caption(
  khmer-caption,
  meta-tag: none,
  width: 100%,
  text-color: none,
) = {
  fig-counter.step()
  context {
    let num = to-khmer-num(fig-counter.get().first())
    let clean-t = clean-caption-title(khmer-caption)
    let col = if text-color != none { text-color } else { c-charcoal.lighten(35%) }
    block(width: width)[
      #set par(leading: 6.5pt, justify: false)
      #grid(
        columns: (1fr, auto),
        align: (left + horizon, right + horizon),
        text(font: font-khmer-body, size: 7.5pt, fill: col)[រូបភាពទី#num — #clean-t],
        if meta-tag != none [
          #text(font: font-sans, size: 6.5pt, weight: "medium", fill: col, tracking: 0.14em)[#meta-tag]
        ]
      )
    ]
  }
}

#let figure-caption = editorial-caption

// ------------------------------------------------------------------------------
// 7. ARCHIVAL IDENTIFICATION LABEL
// Tracked architectural coordinate or category stamp
// ------------------------------------------------------------------------------
#let archival-tag(tag-text, color: c-sand) = {
  text(
    font: font-sans,
    size: 6.5pt,
    weight: "medium",
    fill: color,
    tracking: 0.18em,
  )[#tag-text]
}

// ------------------------------------------------------------------------------
// 8. RESTRAINED RUNNING FOLIO (ONE KHMER PAGE NUMBER ONLY)
// ------------------------------------------------------------------------------
#let catalogue-folio(
  pg-num,
  header-left: "INNOLAB KAMPONG THOM",
  header-right: "REPORT SEASON 1",
  color: c-charcoal.lighten(40%),
  folio-color: c-teal,
  side: "right", // "left" or "right"
  width: 162mm,
) = {
  let kh-num = to-khmer-num(pg-num)
  block(width: width)[
    #if side == "left" {
      grid(
        columns: (auto, 1fr),
        align: (left + horizon, right + horizon),
        text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: folio-color)[#kh-num],
        text(font: font-sans, size: 7pt, fill: color, tracking: 0.12em)[#header-left]
      )
    } else {
      grid(
        columns: (1fr, auto),
        align: (left + horizon, right + horizon),
        text(font: font-sans, size: 7pt, fill: color, tracking: 0.12em)[#header-right],
        text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: folio-color)[#kh-num]
      )
    }
  ]
}
