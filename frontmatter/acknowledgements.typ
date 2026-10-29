#import "../styles.typ": *
#import "../components/catalogue.typ": *

#metadata("acknowledgements") <fm-ack>

#page(
  paper: "a4",
  margin: (top: 25mm, bottom: 25mm, left: 22mm, right: 22mm),
  fill: c-paper,
  header: none,
  footer: none,
)[
  #v(4mm)
  #align(center)[
    #text(font: font-khmer-display, size: 20pt, weight: "bold", fill: c-teal)[សេចក្តីថ្លែងអំណរគុណ]
  ]
  #v(4mm)
  #line(length: 100%, stroke: 1.2pt + c-sand)
  #v(6mm)

  #block(width: 100%)[
    #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-teal)[
      តាងនាមក្រុមការងារ ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ មានមោទនភាពដែលបានកំពុងអនុវត្តនូវ គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (InnoLab Kampong Thom) សូមសម្តែងនូវការដឹងគុណ
    ]
    #v(2.5mm)
    #set par(leading: 8pt, justify: true)
    #text(font: font-khmer-body, size: 9.5pt, fill: c-charcoal)[
      យ៉ាងជ្រាលជ្រៅបំផុតចំពោះ *ឯកឧត្តម វង្សី វិស្សុត* ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ រដ្ឋមន្ត្រីទទួលបន្ទុកទីស្តីការគណៈរដ្ឋមន្ត្រី ដែលបានផ្តល់ការគាំទ្រ ណែនាំតម្រង់ទិស និងលើកទឹកចិត្តជាប្រចាំដល់ការកសាងប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍នៅថ្នាក់មូលដ្ឋាន។
    ]
  ]

  #v(5mm)

  #block(width: 100%)[
    #set par(leading: 8pt, justify: true)
    #text(font: font-khmer-body, size: 9.2pt, fill: c-charcoal)[
      យើងខ្ញុំសូមថ្លែងអំណរគុណយ៉ាងស្មោះស្ម័គ្រចំពោះថ្នាក់ដឹកនាំ *ឯកឧត្តមបណ្ឌិតសភាចារ្យ ផាន់ ផល្លា* រដ្ឋលេខាធិការក្រសួងសេដ្ឋកិច្ច និងហិរញ្ញវត្ថុ ដែលបានផ្តួចផ្តើមគំនិតនេះឡើងមកសម្រាប់ការអនុវត្តជាយុទ្ធសាស្ត្រក្នុងខេត្តកំពង់ធំ ហើយបន្តរួមជាមួយ *មូលនិធិអភិវឌ្ឍន៍ជំនាញ (SDF)*, *សហគ្រិនខ្មែរ (Khmer Enterprise)* និងជាពិសេស *រដ្ឋបាលខេត្តកំពង់ធំ* ក្រោមការដឹកនាំរបស់ *ឯកឧត្តម នួន ផារ័ត្ន*, មន្ទីរ-អង្គភាពជំនាញពាក់ព័ន្ធជុំវិញខេត្ត, វិទ្យាស្ថានពហុបច្ចេកទេសខេត្តកំពង់ធំ, គ្រូបណ្តុះបណ្តាល, អ្នកប្រឹក្សាយោបល់ជំនាញ និងជាពិសេសម្ចាស់សហគ្រាសធុនតូច និងមធ្យមទាំង ២០ រូប ដែលបានប្តេជ្ញាចិត្ត ចូលរួម និងផ្លាស់ប្តូរផ្នត់គំនិតដើម្បីអភិវឌ្ឍសេដ្ឋកិច្ចខេត្តកំពង់ធំឱ្យកាន់តែរឹងមាំ និងមានចីរភាព។
    ]
  ]

  #v(8mm)
  #line(length: 100%, stroke: 0.5pt + c-sand.lighten(30%))
  #v(6mm)

  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 6mm,
    align(center)[
      #image(resolve-logo("asip"), height: 12.5mm, fit: "contain")
      #v(2.5mm)
      #text(font: font-khmer-display, size: 8pt, weight: "bold", fill: c-teal)[ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ]
    ],
    align(center)[
      #image(resolve-logo("sdf"), height: 12.5mm, fit: "contain")
      #v(2.5mm)
      #text(font: font-khmer-display, size: 8pt, weight: "bold", fill: c-teal)[មូលនិធិអភិវឌ្ឍន៍ជំនាញ]
    ],
    align(center)[
      #image(resolve-logo("ke"), height: 12.5mm, fit: "contain")
      #v(2.5mm)
      #text(font: font-khmer-display, size: 8pt, weight: "bold", fill: c-teal)[សហគ្រិនខ្មែរ (KE)]
    ],
  )

  #place(top + left, dx: 0mm, dy: 242mm)[
    #line(length: 100%, stroke: 0.5pt + c-line)
  ]
  #place(top + left, dx: 0mm, dy: 247mm)[
    #catalogue-folio(
      "iv",
      header-right: "INNOLAB KAMPONG THOM · ACKNOWLEDGEMENTS",
      side: "right",
      width: 100%,
    )
  ]
]
