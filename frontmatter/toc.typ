#import "../styles.typ": *
#import "../components/catalogue.typ": *

// ------------------------------------------------------------------------------
// TABLE OF CONTENTS (២ ទំព័រ ស្របតាមទំព័រ ៣ និង ៤ នៃឯកសារផ្លូវការ DOCX)
// ------------------------------------------------------------------------------

#let toc-header-row(
  title,
  label-id: none,
  fallback-page: "",
  is-chapter: true,
  num-badge: none,
) = {
  let page-val = context {
    if label-id != none {
      let targets = query(label(label-id))
      if targets.len() > 0 {
        let p = counter(page).at(targets.first().location()).first()
        to-khmer-num(p)
      } else {
        fallback-page
      }
    } else {
      fallback-page
    }
  }

  let row = block(width: 100%, inset: (y: 1.2mm))[
    #grid(
      columns: (if num-badge != none { auto } else { 0pt }, 1fr, auto),
      gutter: if num-badge != none { 2.5mm } else { 0mm },
      align: bottom,
      if num-badge != none [
        #rect(fill: c-teal, radius: 2pt, inset: (x: 2mm, y: 1mm))[
          #text(font: font-sans, size: 6.8pt, weight: "bold", fill: c-white)[#num-badge]
        ]
      ] else [ #none ],
      [
        #text(
          font: font-khmer-display,
          size: if is-chapter { 8.8pt } else { 8.4pt },
          weight: "bold",
          fill: if is-chapter { c-teal } else { c-teal.darken(10%) },
        )[#title]
        #box(width: 1fr, baseline: -1.5pt)[#repeat[#text(fill: c-line, size: 6pt)[ . ]]]
      ],
      [
        #text(
          font: font-khmer-display,
          size: 9pt,
          weight: "bold",
          fill: c-sand-dark,
        )[#page-val]
      ],
    )
  ]

  context {
    if label-id != none {
      let targets = query(label(label-id))
      if targets.len() > 0 {
        link(targets.first().location())[#row]
      } else {
        row
      }
    } else {
      row
    }
  }
}

#let toc-sub-row(
  title,
  label-id: none,
  fallback-page: "",
) = {
  let page-val = context {
    if label-id != none {
      let targets = query(label(label-id))
      if targets.len() > 0 {
        let p = counter(page).at(targets.first().location()).first()
        to-khmer-num(p)
      } else {
        fallback-page
      }
    } else {
      fallback-page
    }
  }

  let row = block(width: 100%, inset: (y: 0.8mm))[
    #pad(left: 6mm)[
      #grid(
        columns: (1fr, auto),
        gutter: 2mm,
        align: bottom,
        [
          #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#title]
          #box(width: 1fr, baseline: -1.5pt)[#repeat[#text(fill: c-line.lighten(35%), size: 5.5pt)[ . ]]]
        ],
        [
          #text(font: font-khmer-body, size: 7.5pt, fill: c-muted)[#page-val]
        ],
      )
    ]
  ]

  context {
    if label-id != none {
      let targets = query(label(label-id))
      if targets.len() > 0 {
        link(targets.first().location())[#row]
      } else {
        row
      }
    } else {
      row
    }
  }
}

// ==============================================================================
// 1. CONTENT PAGE 1 (ទំព័រទី ៣ នៃសៀវភៅ ស្របតាមទំព័រ ៣ DOCX)
// ==============================================================================
#page(
  paper: "a4",
  margin: (top: 0pt, bottom: 0pt, left: 0pt, right: 0pt),
  fill: none,
  header: none,
  footer: none,
)[
  #grid(
    columns: (5mm, 1fr),
    gutter: 0pt,
    rect(width: 5mm, height: 297mm, fill: c-teal),
    rect(width: 100%, height: 297mm, fill: c-paper),
  )

  // Running header
  #place(top + left, dx: 13mm, dy: 15mm)[
    #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[
      មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · រចនាសម្ព័ន្ធមាតិកា
    ]
  ]

  #place(top + right, dx: -18mm, dy: 15mm)[
    #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-sand-dark)[
      រដូវកាលទី១ / ២០២៥–២០២៦
    ]
  ]

  // Main Content Block
  #place(top + left, dx: 13mm, dy: 24mm)[
    #block(width: 169mm)[
      #grid(
        columns: (1fr, auto),
        align: bottom,
        [
          #text(font: font-khmer-display, size: 26pt, weight: "bold", fill: c-teal)[មាតិកា]
        ],
        [
          #pad(bottom: 2mm)[
            #rect(fill: c-sand.lighten(40%), radius: 2pt, inset: (x: 2.5mm, y: 1mm))[
              #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[ទំព័រ ១/២]
            ]
          ]
        ],
      )
      #v(1mm)
      #line(length: 100%, stroke: 1.5pt + c-sand)
      #v(4mm)

      // Section: Front Matter
      #rect(fill: c-white, stroke: 0.5pt + c-line, radius: 2.5pt, inset: (x: 3.5mm, y: 2.5mm), width: 100%)[
        #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-sand-dark)[ផ្នែកបុព្វកថា (FRONT MATTER)]
        #v(1mm)
        #toc-header-row("សេចក្តីថ្លែងអំណរគុណ និងសារស្ថាប័ន", label-id: "fm-ack", fallback-page: "iv", is-chapter: false)
        #toc-header-row("សេចក្តីសង្ខេបប្រតិបត្តិ", label-id: "fm-exec", fallback-page: "v", is-chapter: false)
      ]

      #v(3mm)

      // Section: Chapter 1
      #rect(fill: c-white, stroke: 0.5pt + c-line, radius: 2.5pt, inset: (x: 3.5mm, y: 2.5mm), width: 100%)[
        #toc-header-row("ជំពូកទី ១៖ ទិដ្ឋភាពទូទៅ និងក្របខ័ណ្ឌយុទ្ធសាស្ត្រគម្រោង", label-id: "ch-01", fallback-page: "១", num-badge: "CH 01")
        #v(1mm)
        #line(length: 100%, stroke: 0.4pt + c-line)
        #v(1.2mm)
        #toc-sub-row("១.១ បរិបទភូមិសាស្ត្រ និងសេដ្ឋកិច្ចខេត្តកំពង់ធំ", fallback-page: "១")
        #toc-sub-row("១.២ គុណតម្លៃ និងសារៈសំខាន់យុទ្ធសាស្ត្រទាំង ៥ នៃនវានុវត្តន៍", fallback-page: "២")
        #toc-sub-row("១.៣ គម្រោងមន្ទីពិសោធន៍នវានុវត្តន៍កំពង់ធំ និងការផ្សារភ្ជាប់យុទ្ធសាស្ត្របញ្ចកោណ", fallback-page: "៣")
        #toc-sub-row("១.៤ បញ្ហាប្រឈមជាប្រព័ន្ធក្នុងមូលដ្ឋាន", fallback-page: "៤")
        #toc-sub-row("១.៥ គោលបំណង និងនវានុវត្តន៍លើ ៤ វិមាត្រស្នូល", fallback-page: "៥")
        #toc-sub-row("១.៦ តួនាទីរបស់ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)", fallback-page: "៦")
        #toc-sub-row("១.៧ ដំណាក់កាលស្នូលទាំង ៧ នៃការអនុវត្តគម្រោង", fallback-page: "៧")
      ]

      #v(3mm)

      // Section: Chapter 2
      #rect(fill: c-white, stroke: 0.5pt + c-line, radius: 2.5pt, inset: (x: 3.5mm, y: 2.5mm), width: 100%)[
        #toc-header-row("ជំពូកទី ២៖ កំណត់ត្រាសកម្មភាពប្រតិបត្តិទាំង ១០ នៃគម្រោង", label-id: "ch-02", fallback-page: "៨", num-badge: "CH 02")
        #v(1mm)
        #line(length: 100%, stroke: 0.4pt + c-line)
        #v(1.2mm)
        #toc-sub-row("ដំណាក់កាលទី ១៖ ដំណើរការវាយតម្លៃ និងជ្រើសរើសសហគ្រាស", fallback-page: "៨")
        #toc-sub-row("ដំណាក់កាលទី ២៖ យុទ្ធនាការចុះផ្សព្វផ្សាយផ្ទាល់", fallback-page: "៩")
        #toc-sub-row("ដំណាក់កាលទី ៣៖ វគ្គបណ្តុះបណ្តាលធំៗទាំង៣", fallback-page: "១០")
        #toc-sub-row("ដំណាក់កាលទី ៤៖ ដំណើរទស្សនកិច្ច InnoTour", fallback-page: "១២")
        #toc-sub-row("ដំណាក់កាលទី ៥៖ កម្មវិធីផលិតខ្សែវីដេអូឯកសារសហគ្រាស", fallback-page: "១៤")
        #toc-sub-row("ដំណាក់កាលទី ៦៖ ការប្រឹក្សាយោបល់ និងការបង្វឹកផ្ទាល់", fallback-page: "១៦")
        #toc-sub-row("ដំណាក់កាលទី ៧៖ ការប្រកួតប្រជែងផ្តាច់ព្រ័ត្រ ប្រកាសលទ្ធផល និងពិធីប្រគល់រង្វាន់", fallback-page: "១៨")
      ]
    ]
  ]

  // Bottom publication accent bar
  #place(top + left, dx: 13mm, dy: 262mm)[
    #rect(width: 169mm, fill: c-teal, radius: 2.5pt, inset: (x: 4mm, y: 2.5mm))[
      #grid(
        columns: (1fr, auto),
        align: horizon,
        text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-sand-light)[គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ASIP · ២០២៥–២០២៦],
        text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-sand)[រដូវកាលទី ១],
      )
    ]
  ]

  // Bottom datum line & folio
  #place(top + left, dx: 13mm, dy: 272mm)[
    #line(length: 169mm, stroke: 0.5pt + c-line)
  ]
  #place(top + left, dx: 13mm, dy: 276mm)[
    #catalogue-folio(
      "ii",
      header-right: "មាតិកា (ទំព័រ ១/២) · INNOLAB KAMPONG THOM",
      side: "right",
      width: 169mm,
    )
  ]
]

// ==============================================================================
// 2. CONTENT PAGE 2 (ទំព័រទី ៤ នៃសៀវភៅ ស្របតាមទំព័រ ៤ DOCX)
// ==============================================================================
#page(
  paper: "a4",
  margin: (top: 0pt, bottom: 0pt, left: 0pt, right: 0pt),
  fill: none,
  header: none,
  footer: none,
)[
  #grid(
    columns: (5mm, 1fr),
    gutter: 0pt,
    rect(width: 5mm, height: 297mm, fill: c-teal),
    rect(width: 100%, height: 297mm, fill: c-paper),
  )

  // Running header
  #place(top + left, dx: 13mm, dy: 15mm)[
    #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[
      មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · រចនាសម្ព័ន្ធមាតិកា
    ]
  ]

  #place(top + right, dx: -18mm, dy: 15mm)[
    #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-sand-dark)[
      រដូវកាលទី១ / ២០២៥–២០២៦
    ]
  ]

  // Main Content Block
  #place(top + left, dx: 13mm, dy: 24mm)[
    #block(width: 169mm)[
      #grid(
        columns: (1fr, auto),
        align: bottom,
        [
          #text(font: font-khmer-display, size: 26pt, weight: "bold", fill: c-teal)[មាតិកា (ត)]
        ],
        [
          #pad(bottom: 2mm)[
            #rect(fill: c-sand.lighten(40%), radius: 2pt, inset: (x: 2.5mm, y: 1mm))[
              #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[ទំព័រ ២/២]
            ]
          ]
        ],
      )
      #v(1mm)
      #line(length: 100%, stroke: 1.5pt + c-sand)
      #v(4mm)

      // Section: Chapter 3
      #rect(fill: c-white, stroke: 0.5pt + c-line, radius: 2.5pt, inset: (x: 3.5mm, y: 2.5mm), width: 100%)[
        #toc-header-row("ជំពូកទី ៣៖ ករណីសិក្សាសហគ្រាសឆ្នើមទាំង ២០", label-id: "ch-03", fallback-page: "២៣", num-badge: "CH 03")
        #v(1mm)
        #line(length: 100%, stroke: 0.4pt + c-line)
        #v(1.2mm)
        #toc-sub-row("ផ្នែកកសិកម្មទំនើប និងធាតុចូលកសិកម្ម (សហគ្រាស ៣.០១ – ៣.០៨)", fallback-page: "២៤")
        #toc-sub-row("ផ្នែកកែច្នៃចំណីអាហារ និងភេសជ្ជៈ (សហគ្រាស ៣.០៩ – ៣.១២)", fallback-page: "៣០")
        #toc-sub-row("ផ្នែកទេសចរណ៍ និងបដិសណ្ឋារកិច្ចសហគមន៍ (សហគ្រាស ៣.១៣ – ៣.១៦)", fallback-page: "៣៣")
        #toc-sub-row("ផ្នែកសិប្បកម្មកែច្នៃ និងសេដ្ឋកិច្ចចក្រា (សហគ្រាស ៣.១៧ – ៣.២០)", fallback-page: "៣៥")
      ]

      #v(3mm)

      // Section: Chapter 4
      #rect(fill: c-white, stroke: 0.5pt + c-line, radius: 2.5pt, inset: (x: 3.5mm, y: 2.5mm), width: 100%)[
        #toc-header-row("ជំពូកទី ៤៖ ការរកឃើញសំខាន់ៗ និងការវាយតម្លៃផលប៉ះពាល់", label-id: "ch-04", fallback-page: "៣៧", num-badge: "CH 04")
        #v(1mm)
        #line(length: 100%, stroke: 0.4pt + c-line)
        #v(1.2mm)
        #toc-sub-row("៤.១ ការវិភាគលក្ខណៈទូទៅនៃសហគ្រាស", fallback-page: "៣៧")
        #toc-sub-row("៤.២ បរិវត្តកម្មគំរូអាជីវកម្ម និងដៃគូយុទ្ធសាស្ត្រ", fallback-page: "៣៨")
        #toc-sub-row("៤.៣ ការអភិវឌ្ឍសមត្ថភាពគ្រប់គ្រង និងធនធានមនុស្ស", fallback-page: "៤១")
        #toc-sub-row("៤.៤ ការស្ទង់មតិលើកម្រិតនវានុវត្តន៍ និងសមត្ថភាពប្រកួតប្រជែង", fallback-page: "៤៣")
        #toc-sub-row("៤.៥ បញ្ហាប្រឈម និងតម្រូវការគាំទ្រជាបន្ត", fallback-page: "៤៦")
        #toc-sub-row("៤.៦ ការសំយោគលទ្ធផល និងសេចក្តីសន្និដ្ឋាន", fallback-page: "៤៨")
      ]

      #v(3mm)

      // Section: Chapter 5 & Appendix
      #rect(fill: c-white, stroke: 0.5pt + c-line, radius: 2.5pt, inset: (x: 3.5mm, y: 2.5mm), width: 100%)[
        #toc-header-row("ជំពូកទី ៥៖ ផែនការ និងយុទ្ធសាស្ត្របន្ទាប់ (Strategy 2026–2028)", label-id: "ch-05", fallback-page: "៥០", num-badge: "CH 05")
        #v(1mm)
        #line(length: 100%, stroke: 0.4pt + c-line)
        #v(1.2mm)
        #toc-sub-row("៥.១ ចក្ខុវិស័យឆ្ពោះទៅឆ្នាំ២០២៨ និងគោលដៅ ១០០ សហគ្រិន", fallback-page: "៥០")
        #toc-sub-row("៥.២ សភាពការណ៍ និងវឌ្ឍនភាពនៃការរៀបចំរដូវកាលទី ២", fallback-page: "៥១")
        #toc-sub-row("៥.៣ ការពង្រីកវិសាលភាព ២៥ រាជធានី-ខេត្ត និងកិច្ចសហការដៃគូ", fallback-page: "៥២")
        #v(1.5mm)
        #line(length: 100%, stroke: 0.4pt + c-sand.lighten(30%))
        #v(1.2mm)
        #toc-header-row("ឧបសម្ព័ន្ធ៖ សូចនាករគន្លឹះ និងកំណត់ត្រារដ្ឋបាល", label-id: "appendix-start", fallback-page: "៥៣", is-chapter: false)
      ]
    ]
  ]

  // Bottom publication accent bar
  #place(top + left, dx: 13mm, dy: 262mm)[
    #rect(width: 169mm, fill: c-teal, radius: 2.5pt, inset: (x: 4mm, y: 2.5mm))[
      #grid(
        columns: (1fr, auto),
        align: horizon,
        text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-sand-light)[គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ASIP · ២០២៥–២០២៦],
        text(font: font-khmer-display, size: 7.2pt, weight: "bold", fill: c-sand)[រដូវកាលទី ១],
      )
    ]
  ]

  // Bottom datum line & folio
  #place(top + left, dx: 13mm, dy: 272mm)[
    #line(length: 169mm, stroke: 0.5pt + c-line)
  ]
  #place(top + left, dx: 13mm, dy: 276mm)[
    #catalogue-folio(
      "iii",
      header-right: "មាតិកា (ទំព័រ ២/២) · INNOLAB KAMPONG THOM",
      side: "right",
      width: 169mm,
    )
  ]
]
