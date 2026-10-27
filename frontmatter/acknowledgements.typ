#import "../styles.typ": *
#import "../components/catalogue.typ": *

#page(
  paper: "a4",
  margin: (top: 25mm, bottom: 25mm, left: 22mm, right: 22mm),
  fill: c-paper,
  header: none,
  footer: none,
)[
  #v(2mm)
  #rect(fill: c-teal, inset: (x: 4mm, y: 2mm), radius: 2pt)[
    #text(font: font-khmer-display, size: 8pt, weight: "bold", fill: c-sand)[សេចក្តីថ្លែងអំណរគុណ និងសារស្ថាប័ន]
  ]
  #v(2mm)
  #text(font: font-khmer-display, size: 18pt, weight: "bold", fill: c-teal)[សេចក្តីថ្លែងអំណរគុណ]
  #v(1mm)
  #line(length: 100%, stroke: 0.75pt + c-sand)
  #v(4mm)

  #block(
    fill: c-white,
    radius: 3pt,
    inset: (x: 6mm, y: 5mm),
    stroke: 0.5pt + c-line,
    width: 100%,
  )[
    #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-teal)[
      គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (InnoLab Kampong Thom) សូមសម្តែងនូវការដឹងគុណ
    ]
    #v(2.5mm)
    #set par(leading: 7pt, justify: true)
    #text(font: font-khmer-body, size: 9pt, fill: c-charcoal)[
      យ៉ាងជ្រាលជ្រៅបំផុតចំពោះ *ឯកឧត្តម វង្សី វិស្សុត* ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ រដ្ឋមន្ត្រីទទួលបន្ទុកទីស្តីការគណៈរដ្ឋមន្ត្រី ដែលបានផ្តល់ការគាំទ្រ ណែនាំតម្រង់ទិស និងលើកទឹកចិត្តជាប្រចាំដល់ការកសាងប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍នៅថ្នាក់មូលដ្ឋាន។
    ]
  ]

  #v(4mm)

  #block(
    fill: c-white,
    radius: 3pt,
    inset: (x: 6mm, y: 5mm),
    stroke: 0.5pt + c-line,
    width: 100%,
  )[
    #set par(leading: 7pt, justify: true)
    #text(font: font-khmer-body, size: 9pt, fill: c-charcoal)[
      យើងខ្ញុំសូមថ្លែងអំណរគុណយ៉ាងស្មោះស្ម័គ្រចំពោះថ្នាក់ដឹកនាំ និងក្រុមការងារនៃ *មូលនិធិអភិវឌ្ឍន៍ជំនាញ (SDF)*, *សហគ្រិនខ្មែរ (Khmer Enterprise)*, *រដ្ឋបាលខេត្តកំពង់ធំ* ក្រោមការដឹកនាំរបស់ *ឯកឧត្តម នួន ផារ័ត្ន*, មន្ទីរ-អង្គភាពជំនាញពាក់ព័ន្ធជុំវិញខេត្ត, វិទ្យាស្ថានពហុបច្ចេកទេសខេត្តកំពង់ធំ, គ្រូបណ្តុះបណ្តាល, អ្នកប្រឹក្សាយោបល់ជំនាញ និងជាពិសេសម្ចាស់សហគ្រាសធុនតូច និងមធ្យមទាំង ២០ រូប ដែលបានប្តេជ្ញាចិត្ត ចូលរួម និងផ្លាស់ប្តូរផ្នត់គំនិតដើម្បីអភិវឌ្ឍសេដ្ឋកិច្ចខេត្តកំពង់ធំឱ្យកាន់តែរឹងមាំ និងមានចីរភាព។
    ]
  ]

  #v(6mm)

  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 4mm,
    block(fill: c-white, radius: 2pt, inset: 4mm, stroke: 0.5pt + c-line)[
      #align(center)[
        #image(resolve-logo("asip"), height: 11mm, fit: "contain")\
        #v(1.5mm)
        #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ]
      ]
    ],
    block(fill: c-white, radius: 2pt, inset: 4mm, stroke: 0.5pt + c-line)[
      #align(center)[
        #image(resolve-logo("sdf"), height: 11mm, fit: "contain")\
        #v(1.5mm)
        #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[មូលនិធិអភិវឌ្ឍន៍ជំនាញ]
      ]
    ],
    block(fill: c-white, radius: 2pt, inset: 4mm, stroke: 0.5pt + c-line)[
      #align(center)[
        #image(resolve-logo("ke"), height: 11mm, fit: "contain")\
        #v(1.5mm)
        #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[សហគ្រិនខ្មែរ (KE)]
      ]
    ],
  )

  #place(top + left, dx: 0mm, dy: 242mm)[
    #line(length: 100%, stroke: 0.5pt + c-line)
  ]
  #place(top + left, dx: 0mm, dy: 247mm)[
    #catalogue-folio(
      "iii",
      header-right: "INNOLAB KAMPONG THOM · ACKNOWLEDGEMENTS",
      side: "right",
      width: 100%,
    )
  ]
]
