#import "../styles.typ": *
#import "../components/catalogue.typ": *
#import "../components/photos.typ": photos

// ==============================================================================
// SME CASE STUDY EDITORIAL ARCHITECTURE
// Three Controlled Layout Archetypes (A, B, C) for 20 Cohort Profiles
// ==============================================================================

#let case-study-full(
  number,
  name,
  business,
  photo-id: none,
  orientation: "portrait",
  source-note: none,
  background: [],
  innovation: [],
  archetype: auto,
) = {
  // Determine page number: Chapter 06 starts at page 67 (Opener: 67-68, Case 01: 69...)
  let num-int = int(number)
  let page-num = 68 + num-int
  let folio-side = if calc.rem(page-num, 2) == 1 { "left" } else { "right" }

  // Assign controlled archetype: A, B, C alternating across the 20 profiles
  let arch = if archetype != auto {
    archetype
  } else {
    let rem = calc.rem(num-int - 1, 3)
    if rem == 0 { "A" } else if rem == 1 { "B" } else { "C" }
  }

  // Resolve authentic photo source from photos registry
  let photo-src = none
  let is-portrait = not (num-int <= 7 or num-int == 10)
  if photo-id != none and photos.keys().contains(str(photo-id)) {
    let p-entry = photos.at(str(photo-id))
    let raw-src = p-entry.src
    photo-src = if raw-src.starts-with("/") { ".." + raw-src } else { raw-src }
    if "aspect" in p-entry {
      is-portrait = (p-entry.aspect == "portrait")
    }
  }

  // ----------------------------------------------------------------------------
  // PAGE CONTAINER
  // ----------------------------------------------------------------------------
  page(
    paper: "a4",
    margin: 0pt,
    fill: c-paper,
    header: none,
    footer: none,
  )[
    // Running Header
    #place(
      top + left,
      dx: 24mm,
      dy: 20mm,
      block(width: 162mm)[
        #grid(
          columns: (1fr, 1fr),
          align: (left, right),
          text(font: font-sans, size: 7.5pt, weight: "bold", fill: c-teal, tracking: 0.18em)[INNOLAB KAMPONG THOM · COHORT 2025],
          text(font: font-sans, size: 7pt, weight: "bold", fill: c-sand-dark, tracking: 0.16em)[SME PROFILE · CASE #number],
        )
      ]
    )

    // ==========================================================================
    // ARCHETYPE A: HERO PHOTO COLUMN & ASYMMETRIC STACK
    // ==========================================================================
    #if arch == "A" [
      // Top Header
      #place(top + left, dx: 24mm, dy: 32mm, block(width: 162mm)[
        #grid(
          columns: (auto, 1fr),
          gutter: 6mm,
          align: (horizon, horizon),
          display-number(number, size: 40pt, fill: c-sand, weight: 700),
          stack(
            spacing: 4.2mm,
            text(font: font-sans, size: 7pt, weight: "bold", fill: c-sand-dark, tracking: 0.16em)[SME CASE STUDY ARCHIVE],
            block[
              #set par(leading: 9pt, justify: false)
              #text(font: font-khmer-display, size: 16pt, fill: c-teal)[#business]
            ],
            text(font: font-khmer-body, size: 9pt, weight: "bold", fill: c-charcoal)[#name],
          )
        )
        #v(3mm)
        #line(length: 100%, stroke: 0.4pt + c-line)
      ])

      // Middle Section: Left Photo Column, Right Business Background
      #place(top + left, dx: 24mm, dy: 66mm, block(width: 162mm)[
        #grid(
          columns: (64mm, 1fr),
          gutter: 10mm,

          // Left Photo Column
          stack(
            spacing: 3mm,
            if photo-src != none [
              #if is-portrait [
                #block(
                  width: 64mm,
                  height: 96mm,
                  radius: 3pt,
                  stroke: 0.5pt + c-sand.lighten(20%),
                  clip: true,
                  image(photo-src, width: 100%, height: 100%, fit: "cover")
                )
                #editorial-caption("សហគ្រាស " + business, meta-tag: "SME " + str(number), width: 64mm)
              ] else [
                #block(
                  width: 64mm,
                  height: 42mm,
                  radius: 3pt,
                  stroke: 0.5pt + c-sand.lighten(20%),
                  clip: true,
                  image(photo-src, width: 100%, height: 100%, fit: "cover")
                )
                #editorial-caption("សហគ្រាស " + business, meta-tag: "SME " + str(number), width: 64mm)
                #v(1mm)
                #rect(
                  width: 64mm,
                  fill: c-sand-light.transparentize(60%),
                  stroke: 0.4pt + c-line,
                  radius: 2.5pt,
                  inset: (x: 3.5mm, y: 3mm),
                  stack(
                    spacing: 2mm,
                    grid(
                      columns: (auto, 1fr),
                      gutter: 2.5mm,
                      text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-teal)[PROGRAM:],
                      text(font: font-sans, size: 6.5pt, fill: c-charcoal)[InnoLab Kampong Thom],
                    ),
                    grid(
                      columns: (auto, 1fr),
                      gutter: 2.5mm,
                      text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-teal)[COHORT:],
                      text(font: font-sans, size: 6.5pt, fill: c-charcoal)[Top 20 Finalists],
                    ),
                    grid(
                      columns: (auto, 1fr),
                      gutter: 2.5mm,
                      text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-teal)[SEED GRANT:],
                      text(font: font-sans, size: 6.5pt, fill: c-charcoal)[\$700 Innovation Fund],
                    ),
                  )
                )
              ]
            ] else [
              #rect(width: 64mm, height: 96mm, fill: c-sand-light.transparentize(50%), stroke: 0.4pt + c-line)
              #editorial-caption("សហគ្រាស " + business, meta-tag: "SME " + str(number), width: 64mm)
            ],
          ),

          // Right Narrative Column: Business Background
          stack(
            spacing: 2.5mm,
            text(font: font-sans, size: 7pt, weight: "bold", fill: c-sand-dark, tracking: 0.16em)[BUSINESS BACKGROUND],
            line(length: 100%, stroke: 0.4pt + c-line),
            block[
              #set par(leading: 7.8pt, justify: false)
              #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[#background]
            ],
          )
        )
      ])

      // Bottom Section: Innovation Journey & Source Note
      #place(top + left, dx: 24mm, dy: 180mm, block(width: 162mm)[
        #line(length: 24mm, stroke: 1.5pt + c-sand)
        #v(2.5mm)
        #text(font: font-sans, size: 7.5pt, weight: "bold", fill: c-teal, tracking: 0.16em)[INNOVATION JOURNEY & EXPERIMENTATION]
        #v(2mm)
        #block[
          #set par(leading: 7.8pt, justify: false)
          #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[#innovation]
        ]

        #if source-note != none [
          #v(3mm)
          #block(
            width: 100%,
            stroke: (left: 1.5pt + c-sand),
            inset: (left: 4mm, y: 1mm),
            [
              #set par(leading: 7.2pt, justify: false)
              #text(font: font-khmer-body, size: 7pt, fill: c-charcoal.lighten(30%))[*កំណត់សម្គាល់ប្រភព:* #source-note]
            ]
          )
        ]
      ])
    ]

    // ==========================================================================
    // ARCHETYPE B: WIDE HORIZONTAL / PORTRAIT-ADAPTIVE NARRATIVE
    // ==========================================================================
    #if arch == "B" [
      // Top Header
      #place(top + left, dx: 24mm, dy: 32mm, block(width: 162mm)[
        #grid(
          columns: (auto, 1fr),
          gutter: 6mm,
          align: (horizon, horizon),
          display-number(number, size: 40pt, fill: c-teal, weight: 700),
          stack(
            spacing: 4.2mm,
            text(font: font-sans, size: 7pt, weight: "bold", fill: c-sand-dark, tracking: 0.16em)[SME CASE STUDY ARCHIVE],
            block[
              #set par(leading: 9pt, justify: false)
              #text(font: font-khmer-display, size: 16pt, fill: c-teal)[#business]
            ],
            text(font: font-khmer-body, size: 9pt, weight: "bold", fill: c-charcoal)[#name],
          )
        )
        #v(3mm)
        #line(length: 100%, stroke: 0.4pt + c-line)
      ])

      #if is-portrait [
        // Middle Section: Left Portrait Photo (64mm x 96mm) + Right Innovation Spotlight & Focus
        #place(top + left, dx: 24mm, dy: 66mm, block(width: 162mm)[
          #grid(
            columns: (64mm, 1fr),
            gutter: 10mm,

            // Portrait Photo
            stack(
              spacing: 2.5mm,
              if photo-src != none [
                #block(
                  width: 64mm,
                  height: 96mm,
                  radius: 3pt,
                  stroke: 0.5pt + c-sand.lighten(20%),
                  clip: true,
                  image(photo-src, width: 100%, height: 100%, fit: "cover")
                )
              ] else [
                #rect(width: 64mm, height: 96mm, fill: c-sand-light.transparentize(50%), stroke: 0.4pt + c-line)
              ],
              editorial-caption("សហគ្រាស " + business, meta-tag: "SME " + str(number), width: 64mm)
            ),

            // Right Spotlight Callout & Program Metrics
            stack(
              spacing: 3.5mm,
              text(font: font-sans, size: 7pt, weight: "bold", fill: c-teal, tracking: 0.16em)[INNOVATION FOCUS & STRATEGY],
              line(length: 100%, stroke: 0.4pt + c-line),
              editorial-quote(
                "ការធ្វើតេស្តសាកល្បងគំរូដើម និងការកែលម្អផលិតផលស្របតាមតម្រូវការទីផ្សារជាក់ស្តែង។",
                tag: "CASE " + str(number),
                bar-color: c-sand,
                bar-height: 26mm,
                text-size: 8.5pt,
              ),
              v(1mm),
              rect(
                width: 100%,
                fill: c-sand-light.transparentize(60%),
                stroke: 0.4pt + c-line,
                radius: 2.5pt,
                inset: (x: 4mm, y: 3.5mm),
                grid(
                  columns: (1fr, 1fr),
                  gutter: 4mm,
                  stack(
                    spacing: 1.5mm,
                    text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-teal)[INCUBATION STAGE],
                    text(font: font-sans, size: 7pt, fill: c-charcoal)[Prototype & Market Test],
                  ),
                  stack(
                    spacing: 1.5mm,
                    text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-sand-dark)[INNOVATION GRANT],
                    text(font: font-sans, size: 7pt, weight: "bold", fill: c-charcoal)[\$700 Seed Disbursed],
                  ),
                )
              )
            )
          )
        ])

        // Bottom Section: Two Columns (Background on left, Innovation on right)
        #place(top + left, dx: 24mm, dy: 180mm, block(width: 162mm)[
          #grid(
            columns: (1fr, 1fr),
            gutter: 12mm,

            // Left Column
            stack(
              spacing: 2.5mm,
              text(font: font-sans, size: 7pt, weight: "bold", fill: c-sand-dark, tracking: 0.16em)[BUSINESS BACKGROUND],
              line(length: 100%, stroke: 0.4pt + c-line),
              block[
                #set par(leading: 7.6pt, justify: false)
                #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#background]
              ],
            ),

            // Right Column
            stack(
              spacing: 2.5mm,
              text(font: font-sans, size: 7pt, weight: "bold", fill: c-teal, tracking: 0.16em)[INNOVATION JOURNEY],
              line(length: 100%, stroke: 0.4pt + c-sand),
              block[
                #set par(leading: 7.6pt, justify: false)
                #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#innovation]
              ],
            )
          )

          #if source-note != none [
            #v(2.5mm)
            #block(
              width: 100%,
              stroke: (left: 1.5pt + c-sand),
              inset: (left: 4mm, y: 1mm),
              [
                #set par(leading: 7pt, justify: false)
                #text(font: font-khmer-body, size: 6.8pt, fill: c-charcoal.lighten(30%))[*កំណត់សម្គាល់ប្រភព:* #source-note]
              ]
            )
          ]
        ])
      ] else [
        // Landscape Banner: Wide Photo (Left) + Editorial Spotlight (Right)
        #place(top + left, dx: 24mm, dy: 66mm, block(width: 162mm)[
          #grid(
            columns: (98mm, 1fr),
            gutter: 10mm,

            // Photo
            stack(
              spacing: 2.5mm,
              if photo-src != none [
                #block(
                  width: 98mm,
                  height: 62mm,
                  radius: 3pt,
                  stroke: 0.5pt + c-sand.lighten(20%),
                  clip: true,
                  image(photo-src, width: 100%, height: 100%, fit: "cover")
                )
              ] else [
                #rect(width: 98mm, height: 62mm, fill: c-sand-light.transparentize(50%), stroke: 0.4pt + c-line)
              ],
              editorial-caption("សហគ្រាស " + business, meta-tag: "SME " + str(number), width: 98mm)
            ),

            // Right Spotlight Callout
            stack(
              spacing: 3mm,
              text(font: font-sans, size: 7pt, weight: "bold", fill: c-teal, tracking: 0.16em)[INNOVATION FOCUS],
              line(length: 100%, stroke: 0.4pt + c-line),
              editorial-quote(
                "ការធ្វើតេស្តសាកល្បងគំរូដើម និងការកែលម្អផលិតផលស្របតាមតម្រូវការទីផ្សារជាក់ស្តែង។",
                tag: "CASE " + str(number),
                bar-color: c-sand,
                bar-height: 28mm,
                text-size: 8.8pt,
              )
            )
          )
        ])

        // Bottom Two Columns: Background (Left) & Innovation (Right)
        #place(top + left, dx: 24mm, dy: 148mm, block(width: 162mm)[
          #grid(
            columns: (1fr, 1fr),
            gutter: 12mm,

            // Left Column
            stack(
              spacing: 2.5mm,
              text(font: font-sans, size: 7pt, weight: "bold", fill: c-sand-dark, tracking: 0.16em)[BUSINESS BACKGROUND],
              line(length: 100%, stroke: 0.4pt + c-line),
              block[
                #set par(leading: 7.8pt, justify: false)
                #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[#background]
              ],
            ),

            // Right Column
            stack(
              spacing: 2.5mm,
              text(font: font-sans, size: 7pt, weight: "bold", fill: c-teal, tracking: 0.16em)[INNOVATION JOURNEY],
              line(length: 100%, stroke: 0.4pt + c-sand),
              block[
                #set par(leading: 7.8pt, justify: false)
                #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[#innovation]
              ],
            )
          )

          #if source-note != none [
            #v(3mm)
            #block(
              width: 100%,
              stroke: (left: 1.5pt + c-sand),
              inset: (left: 4mm, y: 1mm),
              [
                #set par(leading: 7.2pt, justify: false)
                #text(font: font-khmer-body, size: 7pt, fill: c-charcoal.lighten(30%))[*កំណត់សម្គាល់ប្រភព:* #source-note]
              ]
            )
          ]
        ])
      ]
    ]

    // ==========================================================================
    // ARCHETYPE C: ASYMMETRICAL EDITORIAL SPLIT (PHOTO ON RIGHT)
    // ==========================================================================
    #if arch == "C" [
      // Top Header
      #place(top + left, dx: 24mm, dy: 32mm, block(width: 162mm)[
        #grid(
          columns: (1fr, auto),
          align: (horizon, horizon),
          stack(
            spacing: 4.2mm,
            text(font: font-sans, size: 7pt, weight: "bold", fill: c-sand-dark, tracking: 0.16em)[SME CASE STUDY ARCHIVE],
            block[
              #set par(leading: 9pt, justify: false)
              #text(font: font-khmer-display, size: 16pt, fill: c-teal)[#business]
            ],
            text(font: font-khmer-body, size: 9pt, weight: "bold", fill: c-charcoal)[#name],
          ),
          display-number(number, size: 44pt, fill: c-sand, weight: 700),
        )
        #v(3mm)
        #line(length: 100%, stroke: 0.4pt + c-line)
      ])

      // Main Split: Narrative on Left, Photo on Right
      #place(top + left, dx: 24mm, dy: 66mm, block(width: 162mm)[
        #grid(
          columns: (1fr, 64mm),
          gutter: 10mm,

          // Left Narrative Stack
          stack(
            spacing: 4mm,
            // Background
            stack(
              spacing: 2mm,
              text(font: font-sans, size: 7pt, weight: "bold", fill: c-sand-dark, tracking: 0.16em)[BUSINESS BACKGROUND],
              line(length: 100%, stroke: 0.4pt + c-line),
              block[
                #set par(leading: 7.8pt, justify: false)
                #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[#background]
              ],
            ),

            // Innovation
            stack(
              spacing: 2mm,
              text(font: font-sans, size: 7pt, weight: "bold", fill: c-teal, tracking: 0.16em)[INNOVATION JOURNEY],
              line(length: 100%, stroke: 0.4pt + c-sand),
              block[
                #set par(leading: 7.8pt, justify: false)
                #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[#innovation]
              ],
            ),

            // Source Note
            if source-note != none {
              block(
                width: 100%,
                stroke: (left: 1.5pt + c-sand),
                inset: (left: 4mm, y: 1mm),
                [
                  #set par(leading: 7.2pt, justify: false)
                  #text(font: font-khmer-body, size: 7pt, fill: c-charcoal.lighten(30%))[*កំណត់សម្គាល់ប្រភព:* #source-note]
                ]
              )
            }
          ),

          // Right Photo Column
          stack(
            spacing: 3mm,
            if photo-src != none [
              #if is-portrait [
                #block(
                  width: 64mm,
                  height: 96mm,
                  radius: 3pt,
                  stroke: 0.5pt + c-sand.lighten(20%),
                  clip: true,
                  image(photo-src, width: 100%, height: 100%, fit: "cover")
                )
                #editorial-caption("សហគ្រាស " + business, meta-tag: "SME " + str(number), width: 64mm)
              ] else [
                #block(
                  width: 64mm,
                  height: 42mm,
                  radius: 3pt,
                  stroke: 0.5pt + c-sand.lighten(20%),
                  clip: true,
                  image(photo-src, width: 100%, height: 100%, fit: "cover")
                )
                #editorial-caption("សហគ្រាស " + business, meta-tag: "SME " + str(number), width: 64mm)
                #v(1mm)
                #rect(
                  width: 64mm,
                  fill: c-sand-light.transparentize(60%),
                  stroke: 0.4pt + c-line,
                  radius: 2.5pt,
                  inset: (x: 3.5mm, y: 3mm),
                  stack(
                    spacing: 2mm,
                    grid(
                      columns: (auto, 1fr),
                      gutter: 2.5mm,
                      text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-teal)[PROGRAM:],
                      text(font: font-sans, size: 6.5pt, fill: c-charcoal)[InnoLab Kampong Thom],
                    ),
                    grid(
                      columns: (auto, 1fr),
                      gutter: 2.5mm,
                      text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-teal)[COHORT:],
                      text(font: font-sans, size: 6.5pt, fill: c-charcoal)[Top 20 Finalists],
                    ),
                    grid(
                      columns: (auto, 1fr),
                      gutter: 2.5mm,
                      text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-teal)[SEED GRANT:],
                      text(font: font-sans, size: 6.5pt, fill: c-charcoal)[\$700 Innovation Fund],
                    ),
                  )
                )
              ]
            ] else [
              #rect(width: 64mm, height: 96mm, fill: c-sand-light.transparentize(50%), stroke: 0.4pt + c-line)
              #editorial-caption("សហគ្រាស " + business, meta-tag: "SME " + str(number), width: 64mm)
            ],
          )
        )
      ])
    ]

    // Bottom Datum Line & Folio
    #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-charcoal.lighten(70%)))
    #place(
      top + left,
      dx: 24mm,
      dy: 274mm,
      if folio-side == "left" {
        catalogue-folio(page-num, header-left: "INNOLAB KAMPONG THOM · CHAPTER 06", side: "left")
      } else {
        catalogue-folio(page-num, header-right: "INNOLAB KAMPONG THOM · REPORT SEASON 1", side: "right")
      }
    )
  ]
}
