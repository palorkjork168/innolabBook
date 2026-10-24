#import "../styles.typ": *
#import "../components/catalogue.typ": *

#let ch-data = (
  (
    num: "០១",
    km: "ជំពូកទី១៖ ទិដ្ឋភាពទូទៅនិងអំពីគម្រោងមន្ទីរពិសោធន៍នវានុវត្ដន៍កំពង់ធំ",
    sub: "បរិបទសេដ្ឋកិច្ចខេត្តកំពង់ធំ យុទ្ធសាស្ត្របញ្ចកោណ សសរស្តម្ភនវានុវត្តន៍ បញ្ហាប្រឈមជាប្រព័ន្ធ ដំណោះស្រាយ អំពី ASIP និងដំណាក់កាលគម្រោង (១.១ ដល់ ១.៨)",
    label-id: "ch-01",
    pg: "01",
  ),
  (
    num: "០២",
    km: "ជំពូកទី២៖ សកម្មភាពប្រតិបត្តិទាំង ១០ នៃគម្រោង",
    sub: "ដំណើរការជ្រើសរើស សិក្ខាសាលាផ្សព្វផ្សាយ ពិធីសម្ពោធផ្លូវការ វគ្គបណ្តុះបណ្តាល ទស្សនកិច្ច InnoTour វីដេអូឯកសារ ការប្រឹក្សា និង Final Pitch (សកម្មភាព ២.១ ដល់ ២.១០)",
    label-id: "ch-02",
    pg: "11",
  ),
  (
    num: "០៣",
    km: "ជំពូកទី៣៖ ករណីសិក្សាសហគ្រាសធុនតូច និងមធ្យមទាំង ២០",
    sub: "កសិកម្មទំនើប ចំណីអាហារកែច្នៃ សិប្បកម្មច្នៃប្រឌិត និងបដិសណ្ឋារកិច្ចចីរភាព នៃសហគ្រាសឆ្នើមទាំង ២០ ក្នុងខេត្តកំពង់ធំ (សហគ្រាស ៣.០១ ដល់ ៣.២០)",
    label-id: "ch-03",
    pg: "25",
  ),
  (
    num: "០៤",
    km: "ជំពូកទី៤៖ ការរកឃើញសំខាន់ៗ និងការវាយតម្លៃផលប៉ះពាល់",
    sub: "ការវិភាគគំរូអាជីវកម្ម នវានុវត្តន៍ភាព បញ្ហាប្រឈម និងសេចក្តីសន្និដ្ឋាន ផ្អែកលើទិន្នន័យស្ទង់មតិសហគ្រាសទាំង ២០ (រូបភាពទី ៤.១ ដល់ ៤.២២)",
    label-id: "ch-04",
    pg: "39",
  ),
  (
    num: "០៥",
    km: "ជំពូកទី៥៖ ផែនការ និងយុទ្ធសាស្ត្របន្ទាប់",
    sub: "យុទ្ធសាស្ត្រពង្រីកវិសាលភាពឆ្ពោះទៅឆ្នាំ២០២៨ សកម្មភាពផ្សព្វផ្សាយរដូវកាលទី២ និងប្រព័ន្ធអេកូឡូស៊ីភាពជាដៃគូ (៥.១ ដល់ ៥.៣)",
    label-id: "ch-05",
    pg: "53",
  ),
)

#let get-chapter-page(item) = context {
  let targets = query(label(item.label-id))
  if targets.len() > 0 {
    let p = counter(page).at(targets.first().location()).first()
    to-khmer-num(p)
  } else {
    to-khmer-num(item.pg)
  }
}

#let toc-card(item) = {
  let content = block(width: 100%)[
    #grid(
      columns: (auto, 1fr, auto),
      align: bottom,
      gutter: 2.5mm,
      text(font: font-khmer-display, size: 20pt, weight: "bold", fill: c-teal)[#item.num],
      none,
      box(baseline: 3pt)[
        #text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-sand-dark)[#get-chapter-page(item)]
      ],
    )
    #v(1.5mm)
    #line(length: 100%, stroke: 0.75pt + c-sand.lighten(20%))
    #v(3mm)
    #set par(leading: 6.5pt, justify: false)
    #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[#item.km]
    #v(2.5mm)
    #set par(leading: 5.8pt, justify: false)
    #text(font: font-khmer-body, size: 7.5pt, fill: c-muted)[#item.sub]
  ]

  context {
    let targets = query(label(item.label-id))
    if targets.len() > 0 {
      link(targets.first().location())[#content]
    } else {
      content
    }
  }
}

// Equal-height TOC grid
#let toc-card-grid(items, col-count: 2, column-gutter: 9mm, row-gutter: 10mm) = {
  context {
    layout(size => {
      let col-width = (size.width - column-gutter * (col-count - 1)) / col-count
      let measured = items.map(item => {
        let inside = block(width: col-width)[#toc-card(item)]
        (item: item, h: measure(inside).height)
      })
      let rows = measured.chunks(col-count)
      let rendered = rows.map(row => {
        let row-h = calc.max(..row.map(m => m.h))
        row.map(m => block(width: 100%, height: row-h)[#toc-card(m.item)])
      }).flatten()
      let pad-count = calc.rem(rendered.len(), col-count)
      if pad-count != 0 {
        for _ in range(col-count - pad-count) {
          rendered.push(none)
        }
      }
      grid(
        columns: (1fr,) * col-count,
        column-gutter: column-gutter,
        row-gutter: row-gutter,
        ..rendered,
      )
    })
  }
}

// Use a two-column outer layout: 5mm teal bar + content
#page(
  paper: "a4",
  margin: (top: 0pt, bottom: 0pt, left: 0pt, right: 0pt),
  fill: none,
  header: none,
  footer: none,
)[
  // Full-width background split: teal bar + paper body
  #grid(
    columns: (5mm, 1fr),
    gutter: 0pt,
    rect(width: 5mm, height: 297mm, fill: c-teal),
    rect(width: 100%, height: 297mm, fill: c-paper),
  )

  // Running header
  #place(top + left, dx: 13mm, dy: 16mm)[
    #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[
      មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · រចនាសម្ព័ន្ធមាតិកា
    ]
  ]

  // Top right season tag
  #place(top + right, dx: -18mm, dy: 16mm)[
    #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-sand-dark)[
      រដូវកាលទី១ / ២០២៥–២០២៦
    ]
  ]

  // Master title block
  #place(top + left, dx: 13mm, dy: 27mm)[
    #block(width: 169mm)[
      #grid(
        columns: (1fr, auto),
        align: bottom,
        gutter: 0mm,
        [
          #text(font: font-khmer-display, size: 30pt, weight: "bold", fill: c-teal)[មាតិកា]
        ],
        [
          #pad(bottom: 2.5mm)[
            #text(font: font-sans, size: 7pt, weight: "bold", fill: c-muted, tracking: 0.18em)[TABLE OF CONTENTS]
          ]
        ],
      )
      #v(1.5mm)
      #line(length: 100%, stroke: 1.5pt + c-sand)
      #v(10mm)

      #toc-card-grid(ch-data, col-count: 2, column-gutter: 9mm, row-gutter: 10mm)

      #v(8mm)

      // Publication accent bar
      #rect(
        width: 100%,
        fill: c-teal,
        radius: 3pt,
        inset: (x: 5mm, y: 3.5mm),
      )[
        #grid(
          columns: (1fr, auto),
          align: horizon,
          [
            #text(font: font-khmer-display, size: 7.8pt, weight: "bold", fill: c-sand-light)[
              គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ASIP · ២០២៥–២០២៦
            ]
          ],
          [
            #text(font: font-sans, size: 6.5pt, weight: "bold", fill: c-sand, tracking: 0.12em)[
              INNOLAB KAMPONG THOM — SEASON 1
            ]
          ],
        )
      ]
    ]
  ]

  // Bottom datum line & folio
  #place(top + left, dx: 13mm, dy: 269mm)[
    #line(length: 169mm, stroke: 0.5pt + c-line)
  ]
  #place(top + left, dx: 13mm, dy: 275mm)[
    #catalogue-folio(
      "ii",
      header-right: "មាតិកា · មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ",
      side: "right",
      width: 169mm,
    )
  ]
]