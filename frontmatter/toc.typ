#import "../styles.typ": *
#import "../components/catalogue.typ": *

#let ch-data = (
  (
    num: "០១",
    km: "ជំពូកទី១៖ សេចក្តីសង្ខេបប្រតិបត្តិ និងបរិបទគម្រោង",
    sub: "ស្ថានភាពសេដ្ឋកិច្ចខេត្តកំពង់ធំ យុទ្ធសាស្ត្របញ្ចកោណដំណាក់កាលទី១ សសរស្តម្ភនវានុវត្តន៍ទាំង ៤ តម្លៃសេដ្ឋកិច្ច អំពី ASIP និងសកម្មភាពរដូវកាលទី១",
    label-id: "ch-01",
    pg: "01",
  ),
  (
    num: "០២",
    km: "ជំពូកទី២៖ សកម្មភាពប្រតិបត្តិទាំង ១០ នៃគម្រោង",
    sub: "ដំណើរការជ្រើសរើស សិក្ខាសាលាផ្សព្វផ្សាយ ពិធីសម្ពោធផ្លូវការ វគ្គបណ្តុះបណ្តាលទាំង ៣ ទស្សនកិច្ច InnoTour វីដេអូឯកសារ ការប្រឹក្សា និងទិវាប្រកួតប្រជែង Final Pitch",
    label-id: "ch-02",
    pg: "11",
  ),
  (
    num: "០៣",
    km: "ជំពូកទី៣៖ ករណីសិក្សាសហគ្រាសធុនតូច និងមធ្យមទាំង ២០",
    sub: "កសិកម្មទំនើប ចំណីអាហារកែច្នៃ សិប្បកម្មច្នៃប្រឌិត និងបដិសណ្ឋារកិច្ចចីរភាព នៃសហគ្រាសឆ្នើមទាំង ២០ ក្នុងខេត្តកំពង់ធំ",
    label-id: "ch-03",
    pg: "25",
  ),
  (
    num: "០៤",
    km: "ជំពូកទី៤៖ ការរកឃើញសំខាន់ៗ និងការវាយតម្លៃផលប៉ះពាល់",
    sub: "ការវិភាគគំរូអាជីវកម្ម នវានុវត្តន៍ភាព បញ្ហាប្រឈម និងសេចក្តីសន្និដ្ឋាន ផ្អែកលើទិន្នន័យស្ទង់មតិសហគ្រាសទាំង ២០ តាមរូបភាពទី១ ដល់ រូបភាពទី២២",
    label-id: "ch-04",
    pg: "39",
  ),
  (
    num: "០៥",
    km: "ជំពូកទី៥៖ ផែនការ និងយុទ្ធសាស្ត្របន្ទាប់",
    sub: "យុទ្ធសាស្ត្រពង្រីកវិសាលភាពសម្រាប់រដូវកាលទី ២ ទី ៣ និងទី ៤ ឆ្ពោះទៅគោលដៅសហគ្រាស ១០០ រូប ត្រឹមឆ្នាំ២០២៨ ដោយមានការគាំទ្រពី SDF និង KE",
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
      text(font: font-khmer-display, size: 18pt, weight: "bold", fill: c-teal)[#item.num],
      none,
      text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-sand-dark)[#get-chapter-page(item)],
    )
    #v(1.2mm)
    #line(length: 100%, stroke: 0.75pt + c-sand.lighten(20%))
    #v(2.5mm)
    #box(height: 10mm, width: 100%)[
      #set par(leading: 6.5pt, justify: false)
      #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[#item.km]
    ]
    #v(1.5mm)
    #block[
      #set par(leading: 5.8pt, justify: false)
      #text(font: font-khmer-body, size: 7.5pt, fill: c-muted)[#item.sub]
    ]
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

#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Left
  #place(top + left, dx: 24mm, dy: 16mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-teal,
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · រចនាសម្ព័ន្ធមាតិកា និងសន្ទស្សន៍])

  // Top Right Season Tag
  #place(top + right, dx: -24mm, dy: 16mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-sand-dark,
  )[រដូវកាលទី១ / ២០២៥–២០២៦])

  // Master Title
  #place(top + left, dx: 24mm, dy: 24mm, block(width: 162mm)[
    #khmer-display-title(
      "មាតិកា",
      preset: "xl",
      size: 26pt,
      color: c-teal,
      rule-length: 162mm,
      rule-stroke: 1.2pt + c-sand,
    )

    #v(8mm)

    // Symmetrical Row-by-Row 2-Column Chapter Spread
    #grid(
      columns: (77mm, 77mm),
      column-gutter: 8mm,
      row-gutter: 11mm,
      toc-card(ch-data.at(0)),
      toc-card(ch-data.at(3)),

      toc-card(ch-data.at(1)),
      toc-card(ch-data.at(4)),

      toc-card(ch-data.at(2)),
      none,
    )
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    "ii",
    header-right: "មាតិកា · មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ",
    side: "right",
    width: 162mm,
  ))
]
