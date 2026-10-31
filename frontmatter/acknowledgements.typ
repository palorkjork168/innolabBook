#import "../styles.typ": *
#import "../components/catalogue.typ": *

#metadata("acknowledgements") <fm-ack>

// ==============================================================================
// រូបថតផ្លូវការរបស់ ឯកឧត្តម វង្សី វិស្សុត
// (ដើម្បីដាក់រូបភាពពិត៖ គ្រាន់តែដាក់ផ្លូវ file រូបភាពនៅទីនេះ ឧទាហរណ៍: "assets/photos/vongsey_vissoth.jpg")
// ==============================================================================
#let leader-photo = "../assets/photos/ឯកឧត្តម វង្សី វិស្សុត.jpeg"

#page(
  paper: "a4",
  margin: (top: 22mm, bottom: 22mm, left: 22mm, right: 22mm),
  fill: c-paper,
  header: none,
  footer: none,
)[
  #v(2mm)
  #align(center)[
    #text(font: font-khmer-display, size: 20pt, weight: "bold", fill: c-teal)[សេចក្តីថ្លែងអំណរគុណ]
  ]
  #v(3mm)
  #line(length: 100%, stroke: 1.2pt + c-sand)
  #v(5mm)

  // Top Section: Portrait of ឯកឧត្តម វង្សី វិស្សុត + Dedication Text side-by-side
  #grid(
    columns: (52mm, 1fr),
    gutter: 7mm,
    align: top,
    [
      // Portrait Frame Placeholder
      #align(center)[
        #block(
          width: 50mm,
          height: 64mm,
          stroke: 1.5pt + c-sand,
          radius: 4pt,
          fill: c-white,
          clip: true,
        )[
          #if leader-photo != none and leader-photo != "" [
            #image(leader-photo, width: 100%, height: 100%, fit: "cover")
          ] else [
            #box(width: 100%, height: 100%)[
              #align(center + horizon)[
                #stack(spacing: 2.5mm)[
                  #rect(fill: c-sand.lighten(60%), radius: 100pt, width: 14mm, height: 14mm)[
                    #align(center + horizon)[
                      #text(size: 16pt)[👤]
                    ]
                  ]
                  #text(font: font-khmer-display, size: 8pt, weight: "bold", fill: c-teal)[
                    រូបថតឯកឧត្តម\ វង្សី វិស្សុត
                  ]
                  #text(font: font-khmer-display, size: 6.8pt, fill: c-muted)[
                    (ដាក់រូបភាពផ្លូវការនៅទីនេះ)
                  ]
                ]
              ]
            ]
          ]
        ]
        #v(2mm)

      ]
    ],
    [
      // Dedication Statement to ឯកឧត្តម វង្សី វិស្សុត
      #pad(top: 2mm)[
        #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[
          តាងនាមក្រុមការងារ ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ មានមោទនភាពដែលបានកំពុងអនុវត្តនូវ គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (InnoLab Kampong Thom) សូមសម្តែងនូវការដឹងគុណ
        ]
        #v(3mm)
        #set par(leading: 7.5pt, justify: true)
        #text(font: font-khmer-body, size: 9pt, fill: c-charcoal)[
          យ៉ាងជ្រាលជ្រៅបំផុតចំពោះ *ឯកឧត្តម វង្សី វិស្សុត* ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ រដ្ឋមន្ត្រីទទួលបន្ទុកទីស្តីការគណៈរដ្ឋមន្ត្រី ដែលបានផ្តល់ការគាំទ្រ ណែនាំតម្រង់ទិស និងលើកទឹកចិត្តជាប្រចាំដល់ការកសាងប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍នៅថ្នាក់មូលដ្ឋាន។
        ]
        #v(3mm)
        #line(length: 100%, stroke: 0.5pt + c-sand.lighten(40%))
        #v(3mm)
        #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
          ការចង្អុលបង្ហាញដ៏ខ្ពង់ខ្ពស់របស់ឯកឧត្តម បានក្លាយជាត្រីវិស័យដ៏មានតម្លៃក្នុងការជំរុញសក្តានុពលសេដ្ឋកិច្ចមូលដ្ឋាន តាមរយៈការតភ្ជាប់សហគ្រាសធុនតូច និងមធ្យម ទៅកាន់បច្ចេកវិទ្យា និងនវានុវត្តន៍ថ្មីៗ។
        ]
      ]
    ],
  )

  #v(4mm)
  #line(length: 100%, stroke: 0.5pt + c-line)
  #v(4mm)

  // Second Acknowledgement Block: Leadership, SDF, KE, Provincial Administration, SMEs
  #block(width: 100%)[
    #set par(leading: 7.5pt, justify: true)
    #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
      យើងខ្ញុំសូមថ្លែងអំណរគុណយ៉ាងស្មោះស្ម័គ្រចំពោះថ្នាក់ដឹកនាំ *ឯកឧត្តមបណ្ឌិតសភាចារ្យ ផាន់ ផល្លា* រដ្ឋលេខាធិការក្រសួងសេដ្ឋកិច្ច និងហិរញ្ញវត្ថុ ដែលបានផ្តួចផ្តើមគំនិតនេះឡើងមកសម្រាប់ការអនុវត្តជាយុទ្ធសាស្ត្រក្នុងខេត្តកំពង់ធំ ហើយបន្តរួមជាមួយ *មូលនិធិអភិវឌ្ឍន៍ជំនាញ (SDF)*, *សហគ្រិនខ្មែរ (Khmer Enterprise)* និងជាពិសេស *រដ្ឋបាលខេត្តកំពង់ធំ* ក្រោមការដឹកនាំរបស់ *ឯកឧត្តម នួន ផារ័ត្ន*, មន្ទីរ-អង្គភាពជំនាញពាក់ព័ន្ធជុំវិញខេត្ត, វិទ្យាស្ថានពហុបច្ចេកទេសខេត្តកំពង់ធំ, គ្រូបណ្តុះបណ្តាល, អ្នកប្រឹក្សាយោបល់ជំនាញ និងជាពិសេសម្ចាស់សហគ្រាសធុនតូច និងមធ្យមទាំង ២០ រូប ដែលបានប្តេជ្ញាចិត្ត ចូលរួម និងផ្លាស់ប្តូរផ្នត់គំនិតដើម្បីអភិវឌ្ឍសេដ្ឋកិច្ចខេត្តកំពង់ធំឱ្យកាន់តែរឹងមាំ និងមានចីរភាព។
    ]
  ]

  #v(6mm)
  #line(length: 100%, stroke: 0.5pt + c-sand.lighten(30%))
  #v(4mm)


  #place(top + left, dx: 0mm, dy: 244mm)[
    #line(length: 100%, stroke: 0.5pt + c-line)
  ]
  #place(top + left, dx: 0mm, dy: 248mm)[
    #catalogue-folio(
      "iv",
      header-right: "INNOLAB KAMPONG THOM · ACKNOWLEDGEMENTS",
      side: "right",
      width: 100%,
    )
  ]
]
