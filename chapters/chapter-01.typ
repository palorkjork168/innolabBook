#import "../styles.typ": *
#import "../components/catalogue.typ": *
#import "../components/report-elements.typ": *

// ==========================================
// PAGE 4: CHAPTER OPENER & STRATEGIC OVERVIEW
// ==========================================
#chapter-opener(
  num: "០១",
  latin-num: "01",
  title: "ទិដ្ឋភាពទូទៅ",
  subtitle: "និងអំពីគម្រោងមន្ទីរពិសោធន៍នវានុវត្ដន៍កំពង់ធំ",
  label-id: "ch-01",
)

// DEDICATION HERO PANEL - Clean, modern, understated
#rect(
  width: 100%,
  fill: c-paper,
  stroke: (left: 3.5pt + c-sand, rest: 0.5pt + c-line),
  radius: (right: 3pt),
  inset: (x: 6mm, y: 3.5mm),
)[
  #grid(
    columns: (1fr, auto),
    gutter: 4mm,
    align: horizon,
    [
      #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-teal)[គម្រោងមន្ទីរពិសោធន៍នវានុវត្ដន៍កំពង់ធំ (INNOLAB KAMPONG THOM)]\
      #v(0.8mm)
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[របាយការណ៍គ្រប់ជ្រុងជ្រោយស្តីពីការបណ្តុះបណ្តាលសហគ្រាសធុនតូចនិងមធ្យម (SME) ថ្នាក់តំបន់ ការធ្វើសមាហរណកម្មសេដ្ឋកិច្ចចក្រា និងការផ្លាស់ប្តូរសេដ្ឋកិច្ចខេត្តកំពង់ធំ]
    ],
    [
      #rect(fill: c-sand.lighten(30%), radius: 3pt, inset: (x: 3.5mm, y: 1.8mm))[
        #text(font: font-khmer-body, size: 8.2pt, weight: "bold", fill: c-teal)[គោរពជូន ឯកឧត្តម វង្សី វិសុទ្ធ ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ]
      ]
    ]
  )
]
#v(3mm)

// 4 KEY METRICS - Large, confident, minimal
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 3.5mm,
  rect(width: 100%, fill: c-teal, radius: 3pt, inset: (x: 4mm, y: 3mm))[
    #text(font: font-khmer-display, size: 18pt, weight: "bold", fill: c-sand)[១១១ រូប]\
    #v(0.5mm)
    #text(font: font-khmer-body, size: 8.5pt, weight: "bold", fill: c-white)[សហគ្រិនដាក់ពាក្យ]\
    #text(font: font-sans, size: 6.5pt, fill: c-sand-light)[TOTAL APPLICANTS]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 3pt, inset: (x: 4mm, y: 3mm))[
    #text(font: font-khmer-display, size: 18pt, weight: "bold", fill: c-teal)[២០ រូប]\
    #v(0.5mm)
    #text(font: font-khmer-body, size: 8.5pt, weight: "bold", fill: c-charcoal)[សហគ្រាសជម្រុះ]\
    #text(font: font-sans, size: 6.5pt, fill: c-muted)[SELECTED SMES]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 3pt, inset: (x: 4mm, y: 3mm))[
    #text(font: font-khmer-display, size: 18pt, weight: "bold", fill: c-teal)[៨ ស្រុក]\
    #v(0.5mm)
    #text(font: font-khmer-body, size: 8.5pt, weight: "bold", fill: c-charcoal)[វិសាលភាពខេត្ត]\
    #text(font: font-sans, size: 6.5pt, fill: c-muted)[DISTRICTS COVERED]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 3pt, inset: (x: 4mm, y: 3mm))[
    #text(font: font-khmer-display, size: 18pt, weight: "bold", fill: c-teal)[៤៨ លាន]\
    #v(0.5mm)
    #text(font: font-khmer-body, size: 8.5pt, weight: "bold", fill: c-charcoal)[រង្វាន់ជ័យលាភី (រៀល)]\
    #text(font: font-sans, size: 6.5pt, fill: c-muted)[SEED PRIZE FUND]
  ],
)
#v(3.5mm)

// SECTION 1: EDITORIAL STORY WITH PROMINENT HERO PHOTO
#grid(
  columns: (1fr, 82mm),
  gutter: 6mm,
  align: top,
  [
    #text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.១ អំពីខេត្តកំពង់ធំ និងសនិទាន]\
    #v(1.5mm)
    #set par(leading: 6.5pt, justify: false)
    #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
      ខេត្តកំពង់ធំតំណាងឱ្យចំណុចយុទ្ធសាស្ត្រដ៏សំខាន់មួយសម្រាប់សន្តិសុខស្បៀងក្នុងស្រុក ផលិតកម្ម សិប្បកម្ម និងការតភ្ជាប់ភូមិសាស្ត្ររបស់ប្រទេសកម្ពុជា។ ខេត្តកំពង់ធំ ដំណើរការជាការអនុវត្តផ្ទាល់នៃយុទ្ធសាស្ត្របញ្ចកោណដំណាក់កាលទី១ របស់រាជរដ្ឋាភិបាលកម្ពុជា។ តាមរយៈការផ្តោតសំខាន់លើការកសាងសមត្ថភាពស្ថាប័ន ការធ្វើទំនើបកម្មធនធានមនុស្ស និងការធ្វើសមាហរណកម្មបច្ចេកវិទ្យានៅក្នុងសហគ្រាសធុនតូចនិងមធ្យម (SMEs) នៅជនបទ កម្មវិធីនេះបង្កើតបានជាស្ពានតភ្ជាប់រវាងគោលការណ៍ណែនាំថ្នាក់ជាតិផ្នែកម៉ាក្រូសេដ្ឋកិច្ច និងស្ថានភាពជាក់ស្តែងរបស់ខេត្តផ្នែកមីក្រូសេដ្ឋកិច្ច។
    ]\
    #v(2.5mm)
    #rect(
      width: 100%,
      fill: c-paper,
      stroke: (left: 3pt + c-sand),
      radius: (right: 3pt),
      inset: (x: 4mm, y: 2.5mm),
    )[
      #text(font: font-khmer-display, size: 8.6pt, weight: "bold", fill: c-teal)[នវានុវត្តន៍ជាយន្តការស្នូល៖]\
      #v(0.8mm)
      #text(font: font-khmer-body, size: 8.2pt, fill: c-charcoal)[
        ការផ្តោតដោយចេតនាលើការអភិវឌ្ឍសេដ្ឋកិច្ចតាមគោលដៅ ធានាថាប្រព័ន្ធអេកូឡូស៊ីក្នុងស្រុកធ្វើការផ្លាស់ប្តូរពីទម្រង់សេដ្ឋកិច្ចក្រៅប្រព័ន្ធ ទៅជារចនាសម្ព័ន្ធទីផ្សារដែលមានការរៀបចំត្រឹមត្រូវ និងមានតម្លៃបន្ថែមខ្ពស់។
      ]
    ]
  ],
  [
    #box(
      width: 82mm,
      height: 60mm,
      stroke: 0.5pt + c-line,
      radius: 3pt,
      clip: true,
    )[
      #image("../assets/photos/01.jpg", width: 82mm, height: 60mm, fit: "cover")
    ]
    #v(1mm)
    #text(font: font-khmer-body, size: 7.2pt, fill: c-muted)[រូបភាព៖ សកម្មភាពចុះមូលដ្ឋាន និងបរិបទភូមិសាស្ត្រខេត្តកំពង់ធំ]
  ]
)

#pagebreak()

// ==========================================
// PAGE 5: 5 STRATEGIC VALUES & SECTION 2
// ==========================================
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[គុណតម្លៃជាយុទ្ធសាស្ត្រទាំង ៥ នៃនវានុវត្តន៍]\
#v(1mm)
#text(font: font-khmer-body, size: 8.8pt, fill: c-muted)[5 STRATEGIC PILLARS DRIVING LOCAL ECONOMIC TRANSFORMATION]
#v(3mm)

// Clean open 2-column layout - NO duplicate boxes!
#grid(
  columns: (1fr, 1fr),
  column-gutter: 8mm,
  row-gutter: 4.5mm,
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 2.5mm,
      align: top,
      rect(fill: c-teal, radius: 2pt, inset: (x: 2mm, y: 1mm))[
        #text(font: font-sans, size: 7.5pt, weight: "bold", fill: c-white)[01]
      ],
      [
        #text(font: font-khmer-display, size: 9.2pt, weight: "bold", fill: c-teal)[ការបន្ថែមតម្លៃសេដ្ឋកិច្ច]\
        #v(0.8mm)
        #set par(leading: 6pt, justify: false)
        #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
          តាមរយៈការផ្លាស់ប្តូរពីការនាំចេញផលិតផលឆៅ (ដូចជាគ្រាប់ស្វាយចន្ទី ឬត្នោតឆៅ) ទៅជាទំនិញដែលបានកែច្នៃ និងមានម៉ាកយីហោ អាជីវកម្មអាចរក្សាទុកប្រាក់ចំណេញបាននៅក្នុងមូលដ្ឋាន និងបង្កើតឱកាសការងារដែលមានគុណភាពខ្ពស់។
        ]
      ]
    )
  ],
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 2.5mm,
      align: top,
      rect(fill: c-teal, radius: 2pt, inset: (x: 2mm, y: 1mm))[
        #text(font: font-sans, size: 7.5pt, weight: "bold", fill: c-white)[02]
      ],
      [
        #text(font: font-khmer-display, size: 9.2pt, weight: "bold", fill: c-teal)[និរន្តរភាពទីផ្សារ]\
        #v(0.8mm)
        #set par(leading: 6pt, justify: false)
        #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
          នវានុវត្តន៍អនុញ្ញាតឱ្យសហគ្រាសធុនតូចនិងមធ្យមបំពេញតាមស្តង់ដារអនាម័យ និងការវេចខ្ចប់ដ៏តឹងរ៉ឹង ដែលតម្រូវដោយទីផ្សារទីក្រុងទំនើបៗ ដែលជាការតភ្ជាប់គម្លាតរវាងការផលិតនៅជនបទ និងតម្រូវការរបស់អ្នកប្រើប្រាស់។
        ]
      ]
    )
  ],
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 2.5mm,
      align: top,
      rect(fill: c-teal, radius: 2pt, inset: (x: 2mm, y: 1mm))[
        #text(font: font-sans, size: 7.5pt, weight: "bold", fill: c-white)[03]
      ],
      [
        #text(font: font-khmer-display, size: 9.2pt, weight: "bold", fill: c-teal)[ប្រសិទ្ធភាពធនធានចក្រា]\
        #v(0.8mm)
        #set par(leading: 6pt, justify: false)
        #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
          តាមរយៈនវានុវត្តន៍ក្នុងការកែច្នៃសំណល់ឡើងវិញ (Upcycling) — ដូចជាការបំប្លែងសំណល់កសិកម្មទៅជាផលិតផលបន្ទាប់បន្សំ — សហគ្រាសកាត់បន្ថយការចំណាយប្រតិបត្តិការ កាត់បន្ថយផលប៉ះពាល់បរិស្ថាន និងបង្កើតប្រភពចំណូលថ្មីពីវត្ថុធាតុដើមដែលពីមុនធ្លាប់តែត្រូវបោះចោល។
        ]
      ]
    )
  ],
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 2.5mm,
      align: top,
      rect(fill: c-teal, radius: 2pt, inset: (x: 2mm, y: 1mm))[
        #text(font: font-sans, size: 7.5pt, weight: "bold", fill: c-white)[04]
      ],
      [
        #text(font: font-khmer-display, size: 9.2pt, weight: "bold", fill: c-teal)[ភាពធន់ផ្អែកលើទិន្នន័យ]\
        #v(0.8mm)
        #set par(leading: 6pt, justify: false)
        #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
          ការប្រើប្រាស់ឧបករណ៍ឌីជីថល និងការគ្រប់គ្រងគម្រោងដែលមានរចនាសម្ព័ន្ធច្បាស់លាស់ អនុញ្ញាតឱ្យម្ចាស់អាជីវកម្មធ្វើការសម្រេចចិត្តផ្លាស់ប្តូរយុទ្ធសាស្ត្រ ដោយផ្អែកលើចិត្តសាស្ត្រអ្នកប្រើប្រាស់ និងមតិត្រឡប់ពីទីផ្សារជាក់ស្តែង ជាជាងការសន្មត់ឬការស្មាន។
        ]
      ]
    )
  ],
)
#v(3.5mm)

// Fifth value as an elegant full-width highlight banner
#rect(
  width: 100%,
  fill: c-paper,
  stroke: (left: 3pt + c-sand, rest: 0.5pt + c-line),
  radius: (right: 3pt),
  inset: (x: 4.5mm, y: 2.8mm),
)[
  #grid(
    columns: (auto, 1fr),
    gutter: 3mm,
    align: horizon,
    rect(fill: c-sand, radius: 2pt, inset: (x: 2mm, y: 1mm))[
      #text(font: font-sans, size: 7.5pt, weight: "bold", fill: c-charcoal)[05]
    ],
    [
      #text(font: font-khmer-display, size: 9.2pt, weight: "bold", fill: c-teal)[និរន្តរភាពស្ថាប័នរយៈពេលវែង៖]
      #h(2mm)
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        នវានុវត្តន៍ដើរតួជាស្ពានតភ្ជាប់ទៅនឹងការតម្រង់ទិសគោលនយោបាយជាតិ។ តាមរយៈការធ្វើទំនើបកម្មរចនាសម្ព័ន្ធរបស់ពួកគេ សហគ្រាសទាំងនោះក្លាយជាអង្គភាពដែលមានការរៀបចំត្រឹមត្រូវ និងគោរពច្បាប់ ដែលអាចគាំទ្រដល់គោលដៅជាតិដូចជាសន្តិសុខស្បៀងបានយ៉ាងយូរអង្វែង។
      ]
    ]
  )
]
#v(4.5mm)

// SECTION 2: ABOUT INNOLAB WITH BOLD HERO PULL-QUOTE
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.២ អំពីគម្រោងមន្ទីរពិសោធន៍នវានុវត្ដន៍កំពង់ធំ]\
#v(1.5mm)
#set par(leading: 6.5pt, justify: false)
#text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
  មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (InnoLab Kampong Thom) គឺជាមជ្ឈមណ្ឌលកណ្ដាល ដែលបង្កើតឡើង ដើម្បីជំរុញសហគ្រាសធុនតូច និងមធ្យម ឱ្យមានការបង្កើតថ្មីប្រកបដោយនវានុវត្តន៍ភាពទៅលើផលិតផល ឬសេវាកម្ម និងផ្សារភ្ជាប់សហគ្រិនជាប្រព័ន្ធអេកូឡូស៊ីមួយ នៅខេត្ដកំពង់ធំ ដោយផ្តោតលើវិស័យធំៗចំនួន ៤ រួមមាន៖ ទេសចរណ៍ កម្មន្តសាល កសិកម្ម និងសិប្បកម្ម ក្រោមពាក្យស្លោក “ផ្សារភ្ជាប់សហគ្រាស និងនវានុវត្តន៍ភាព (Connect SMEs, Connect Innovations)”។
]
#v(2.5mm)

// High-impact magazine pull-quote
#rect(
  width: 100%,
  fill: c-teal,
  radius: 3pt,
  inset: (x: 6mm, y: 4mm),
)[
  #grid(
    columns: (auto, 1fr),
    gutter: 4mm,
    align: horizon,
    [
      #text(font: font-sans, size: 32pt, weight: "black", fill: c-sand)[“]
    ],
    [
      #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-sand-light)[
        ប្រែក្លាយខេត្តកំពង់ធំឱ្យទៅជាមជ្ឈមណ្ឌលកសិឧស្សាហកម្មឈានមុខ នៅក្នុងប្រទេសកម្ពុជាមុនឆ្នាំ២០២៩
      ]\
      #v(0.8mm)
      #text(font: font-khmer-body, size: 8pt, fill: c-white)[
        ចក្ខុវិស័យប្រទាក់ក្រឡាគ្នា ក្រោមការដឹកនាំរបស់ ឯកឧត្តម វង្សី វិស្សុត ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ
      ]
    ]
  )
]
#v(2.5mm)
#text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
  គម្រោងនេះត្រូវបានអនុវត្តដោយ ក្រុមហ៊ុន អង្គរ សូសល អ៊ិននើវេសិន ផាក ឯ.ក (ASIP) ក្រោមការទទួលបានការគាំទ្រពីក្រសួងសេដ្ឋកិច្ច និងហិរញ្ញវត្ថុ និងក្រសួងឧស្សាហកម្ម បច្ចេកវិទ្យា និងនវានុវត្តន៍ ក្រោមជំនួយមូលនិធិរបស់មូលនិធិអភិវឌ្ឍន៍ជំនាញ (SDF) ព្រមទាំងទទួលបានការសហការគាំទ្រពីសហគ្រិនខ្មែរ (KE) និងស្ថាប័នពាក់ព័ន្ធនានា។
]

#pagebreak()

// ==============================================================================
// PAGE 6: CORE RATIONALE (NO DUPLICATE BOXES) & LARGE DOCUMENTARY PHOTO
// ==============================================================================
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.៣ មូលហេតុនៃការបង្កើតគម្រោងមន្ទីរពិសោធន៍កំពង់ធំ]\
#v(1mm)
#text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
  គម្រោងនេះដើរតួជាការអនុវត្តផ្ទាល់នៃយុទ្ធសាស្ត្របញ្ចកោណដំណាក់កាលទី១ របស់រាជរដ្ឋាភិបាលកម្ពុជា តាមរយៈសសរស្តម្ភគន្លឹះ និងការតភ្ជាប់ប្រព័ន្ធអេកូឡូស៊ីដូចខាងក្រោម៖
]
#v(3mm)

// Open editorial 2-column list with sleek typography and subtle gold left indicators - ZERO RECTANGLE BOXES!
#grid(
  columns: (1fr, 1fr),
  column-gutter: 8mm,
  row-gutter: 4mm,
  [
    #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[·   ការកសាងសមត្ថភាពស្ថាប័ន]\
    #v(0.8mm)
    #set par(leading: 5.8pt, justify: false)
    #text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
      មានតម្រូវការច្បាស់លាស់ក្នុងការធ្វើទំនើបកម្មធនធានមនុស្ស និងការធ្វើសមាហរណកម្មបច្ចេកវិទ្យាទៅក្នុងសហគ្រាសធុនតូចនិងមធ្យម (SMEs) នៅតាមជនបទ ដើម្បីផ្លាស់ប្តូរពួកវាពីគំរូសេដ្ឋកិច្ចក្រៅប្រព័ន្ធដែលគ្រាន់តែចិញ្ចឹមជីវិត ទៅជាអាជីវកម្មដែលមានរចនាសម្ព័ន្ធត្រឹមត្រូវ។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[·   ការធ្វើទំនើបកម្មសេដ្ឋកិច្ច]\
    #v(0.8mm)
    #set par(leading: 5.8pt, justify: false)
    #text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
      គម្រោងនេះមានគោលបំណងផ្សារភ្ជាប់គម្លាតរវាងគោលការណ៍ណែនាំថ្នាក់ជាតិ និងស្ថានភាពជាក់ស្តែងនៃសេដ្ឋកិច្ចខេត្ត ធានាថាការអនុវត្តគោលនយោបាយឆ្លើយតបទៅនឹងតម្រូវការជាក់ស្តែងរបស់សហគ្រិន។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[·   និរន្តរភាពតំបន់ និងសេដ្ឋកិច្ចចក្រា]\
    #v(0.8mm)
    #set par(leading: 5.8pt, justify: false)
    #text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
      គោលដៅស្នូលគឺការជំរុញការអនុវត្តសេដ្ឋកិច្ចចក្រា (Circular Economy) ដូចជាការកែច្នៃសំណល់កសិកម្ម (សំបកស្វាយចន្ទី និងសំណល់សរីរាង្គ) ដើម្បីកាត់បន្ថយការអាស្រ័យលើការនាំចូលវត្ថុធាតុដើម និងការពារបរិស្ថាន។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[·   ការតភ្ជាប់ពីថ្នាក់ខេត្តទៅថ្នាក់ជាតិ]\
    #v(0.8mm)
    #set par(leading: 5.8pt, justify: false)
    #text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
      ធ្វើសមាហរណកម្មសហគ្រាសធុនតូចនិងមធ្យមនៅថ្នាក់មូលដ្ឋាន ឱ្យចូលទៅក្នុងបណ្តាញពាណិជ្ជកម្ម និងស្តង់ដារប្រតិបត្តិការថ្នាក់ជាតិ តម្រង់ទិសខេត្តកំពង់ធំទៅកាន់ទីផ្សារភ្នំពេញ លុបបំបាត់ភាពឯកោផ្នែកសេដ្ឋកិច្ច។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[·   អភិបាលកិច្ច និងកិច្ចសហប្រតិបត្តិការ]\
    #v(0.8mm)
    #set par(leading: 5.8pt, justify: false)
    #text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
      គាំទ្រដោយយន្តការអភិបាលកិច្ចរួមដែលសម្របសម្រួលជិតស្និទ្ធរវាងមន្ទីរជំនាញក្នុងខេត្ត (ពាណិជ្ជកម្ម ឧស្សាហកម្ម កសិកម្ម) និងស្ថាប័នជាតិ ដើម្បីផ្តល់ការចុះបញ្ជីផ្លូវការ ជំនួយបច្ចេកទេស និងស្តង់ដារជាតិ។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[·   ភាពធន់ និងការរួមបញ្ចូលធនធាន]\
    #v(0.8mm)
    #set par(leading: 5.8pt, justify: false)
    #text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
      អនុវត្តវិធីសាស្ត្រទំនើបៗដូចជា Design Thinking និង Agile Management និងតភ្ជាប់ទៅនឹងគម្រោងធនាគារស្បៀងកម្ពុជា (Foodbank Cambodia) ដើម្បីកសាងភាពធន់ និងកាត់បន្ថយសំណល់ស្បៀងអាហារ។
    ]
  ],
)
#v(4mm)

// LARGE, IMPACTFUL DOCUMENTARY PHOTOGRAPH SPREAD
#rect(
  width: 100%,
  fill: c-paper,
  stroke: (left: 3.5pt + c-teal, rest: 0.5pt + c-line),
  radius: (right: 3pt),
  inset: (x: 5mm, y: 3.5mm),
)[
  #grid(
    columns: (1fr, 110mm),
    gutter: 6mm,
    align: horizon,
    [
      #text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-teal)[ការបណ្ដុះបណ្ដាលជាក់ស្ដែងលើវិធីសាស្ត្រ Design Thinking]\
      #v(1.5mm)
      #set par(leading: 6.5pt, justify: false)
      #text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
        សហគ្រិនទាំង ២០ រូប បានចូលរួមក្នុងវគ្គបណ្តុះបណ្តាលដែលជំរុញឱ្យពួកគេផ្លាស់ប្តូរផ្នត់គំនិតអាជីវកម្មពីការផលិតបែបប្រពៃណី មកជាការកំណត់បញ្ហារបស់អតិថិជនជាស្នូល និងបង្កើតគំរូនវានុវត្តន៍ជាក់ស្តែង។
      ]\
      #v(2mm)
      #rect(fill: c-teal, radius: 2pt, inset: (x: 3mm, y: 1.2mm))[
        #text(font: font-sans, size: 7.2pt, weight: "bold", fill: c-sand-light)[CAPACITY BUILDING WORKSHOP]
      ]
    ],
    [
      #box(
        width: 110mm,
        height: 52mm,
        stroke: 0.5pt + c-sand,
        radius: 3pt,
        clip: true,
      )[
        #image("../assets/photos/02.jpg", width: 110mm, height: 52mm, fit: "cover")
      ]
      #v(0.8mm)
      #text(font: font-khmer-body, size: 7.2pt, fill: c-muted)[រូបភាព៖ សកម្មភាពសិក្ខាសាលានវានុវត្តន៍ និងការបណ្តុះបណ្តាលសហគ្រិន]
    ]
  )
]

#pagebreak()

// ==========================================
// PAGE 7: SYSTEMIC CHALLENGES & OBJECTIVES
// ==========================================
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.៤ បញ្ហាប្រឈមជាប្រព័ន្ធក្នុងខេត្តកំពង់ធំ (Systemic Challenges)]\
#v(1mm)
#set par(leading: 6pt, justify: false)
#text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
  សហគ្រាសក្នុង ខេត្តកំពង់ធំ បានកំពុងជួបប្រទះបញ្ហាកកស្ទះជាច្រើន ដែលរារាំងដល់ភាពប្រកួតប្រជែងរបស់ពួកគេទាំងនៅលើទីផ្សារក្នុងស្រុក និងអន្តរជាតិ រួមមានតម្លៃទាបនៃផលិតផលកសិកម្មមិនទាន់កែច្នៃ ការចំណាយខ្ពស់លើភស្តុភារ និងកង្វះខ្សែច្រវាក់ត្រជាក់ (Cold-chain)។
]
#v(3mm)

// Clean open list with subtle red highlight dots - NO DUPLICATE BOXES
#grid(
  columns: (1fr, 1fr),
  column-gutter: 8mm,
  row-gutter: 3.5mm,
  [
    #text(font: font-khmer-display, size: 9.2pt, weight: "bold", fill: rgb("#B53B38"))[១. ផ្នត់គំនិតប្រពៃណីដែលចាក់គ្រឹះយ៉ាងជ្រៅ]\
    #v(0.6mm)
    #set par(leading: 5.6pt, justify: false)
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      ម្ចាស់អាជីវកម្មជាច្រើនដំណើរការអាជីវកម្មដោយផ្អែកលើទម្លាប់តាមបែបវិចារណញាណដែលបានបន្តពីមួយជំនាន់ទៅមួយជំនាន់ ដែលបង្កើតឱ្យមានការប្រឆាំងនឹងការទទួលយកវិធីសាស្ត្រដោះស្រាយបញ្ហាដែលមានរចនាសម្ព័ន្ធដូចជា Design Thinking។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9.2pt, weight: "bold", fill: rgb("#B53B38"))[២. កង្វះខាតធនធានបង្កើតគំរូ (Prototyping)]\
    #v(0.6mm)
    #set par(leading: 5.6pt, justify: false)
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      សហគ្រាសតូចៗខ្វះកញ្ចប់ថវិកាបម្រុងដែលចាំបាច់ដើម្បីធ្វើតេស្តសាកល្បងលើការផ្លាស់ប្តូរផលិតផលថ្មីៗ ដែលនាំឱ្យពួកគេមានការភ័យខ្លាចក្នុងការពិសោធន៍ និងការបរាជ័យ។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9.2pt, weight: "bold", fill: rgb("#B53B38"))[៣. កង្វះខាតហេដ្ឋារចនាសម្ព័ន្ធ]\
    #v(0.6mm)
    #set par(leading: 5.6pt, justify: false)
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      ការខ្វះខាតកន្លែងកែច្នៃដែលមានស្វ័យប្រវត្តិកម្ម និងការខ្វះប្រព័ន្ធរក្សាទុកត្រជាក់ (Cold-chain) ដែលមានស្ថិរភាព បានធ្វើឱ្យវាពិបាកខាងបច្ចេកទេសក្នុងការធ្វើឱ្យនវានុវត្តន៍ផ្នែកសុវត្ថិភាពចំណីអាហារ និងអនាម័យមានភាពទូលំទូលាយ។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9.2pt, weight: "bold", fill: rgb("#B53B38"))[៤. គម្លាតនៃចំណេះដឹងឌីជីថល]\
    #v(0.6mm)
    #set par(leading: 5.6pt, justify: false)
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      កង្វះខាតចំណេះដឹងផ្នែកឌីជីថលយ៉ាងខ្លាំង បានរារាំងដល់ការផ្លាស់ប្តូរពីការកត់ត្រាបញ្ជីស្នាមដោយដៃដែលងាយនឹងមានកំហុស ទៅជាការគ្រប់គ្រងប្រតិបត្តិការដោយផ្អែកលើទិន្នន័យ។
    ]
  ],
)
#v(2.5mm)

// Fifth bottleneck as clean statement
#rect(
  width: 100%,
  fill: rgb("#FFF5F5"),
  stroke: (left: 3pt + rgb("#D9534F"), rest: 0.5pt + rgb("#E8D0D0")),
  radius: (right: 3pt),
  inset: (x: 4.5mm, y: 2.5mm),
)[
  #text(font: font-khmer-display, size: 9.2pt, weight: "bold", fill: rgb("#B53B38"))[៥. ភាពឯកោនៃខ្សែច្រវាក់ផ្គត់ផ្គង់៖]
  #h(2mm)
  #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
    ដោយសារខ្សែច្រវាក់ផ្គត់ផ្គង់មានភាពបែកខ្ញែក និងប្រព័ន្ធភស្តុភារផ្តោតទៅលើការធ្វើពាណិជ្ជកម្មតាមព្រំដែន ជាជាងទីក្រុងធំៗ ធ្វើឱ្យអាជីវកម្មពិបាកក្នុងការស្វែងរកវត្ថុធាតុដើមដែលចាំបាច់ ដើម្បីធ្វើការសាកល្បងការអនុវត្តសេដ្ឋកិច្ចចក្រា (Circular Economy)។
  ]
]
#v(4.5mm)

// SECTION 5: 3 OBJECTIVES - OPEN SPACIOUS 3-COLUMN
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.៥ ដំណោះស្រាយ គោលបំណង និងសារសំខាន់]\
#v(1mm)
#set par(leading: 6pt, justify: false)
#text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
  មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ មានចក្ខុវិស័យក្លាយជាគំរូនៃប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍មួយ ដែលជាទីតាំងសម្រាប់សហគ្រិន អ្នកច្នៃប្រឌិត អ្នកស្រាវជ្រាវ និងមន្ត្រីចាប់ពីថ្នាក់មូលដ្ឋាន តាមរយៈការបញ្ចូលនវានុវត្តន៍ភាពទៅក្នុងប្រព័ន្ធទីផ្សារ និងប្រព័ន្ធអភិបាលកិច្ច សម្រាប់អនាគតកម្ពុជា។ ក្នុងវគ្គផ្តាច់ព្រ័ត្រនេះ សិក្ខាកាមទាំង ២០ រូប បានបញ្ចូលគំនិតនវានុវត្តន៍ដើម្បីសម្រេចបាននូវគោលបំណងធំៗចំនួន ៣៖
]
#v(2.5mm)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 4.5mm,
  rect(width: 100%, fill: c-paper, stroke: (top: 2.5pt + c-teal, rest: 0.5pt + c-line), radius: (bottom: 3pt), inset: (x: 4mm, y: 3.5mm))[
    #text(font: font-sans, size: 7pt, weight: "bold", fill: c-teal)[OBJECTIVE 01]\
    #v(1mm)
    #text(font: font-khmer-display, size: 8.8pt, weight: "bold", fill: c-teal)[ទាក់ទាញវិនិយោគិនសម្រាប់ម្ចាស់សហគ្រាសនៅក្នុងខេត្តកំពង់ធំ]
  ],
  rect(width: 100%, fill: c-paper, stroke: (top: 2.5pt + c-teal, rest: 0.5pt + c-line), radius: (bottom: 3pt), inset: (x: 4mm, y: 3.5mm))[
    #text(font: font-sans, size: 7pt, weight: "bold", fill: c-teal)[OBJECTIVE 02]\
    #v(1mm)
    #text(font: font-khmer-display, size: 8.8pt, weight: "bold", fill: c-teal)[ពង្រឹងភាពនវានុវត្តន៍ និងសហគ្រិនភាពនៅក្នុងខេត្តកំពង់ធំ]
  ],
  rect(width: 100%, fill: c-paper, stroke: (top: 2.5pt + c-sand, rest: 0.5pt + c-line), radius: (bottom: 3pt), inset: (x: 4mm, y: 3.5mm))[
    #text(font: font-sans, size: 7pt, weight: "bold", fill: c-sand-dark)[OBJECTIVE 03]\
    #v(1mm)
    #text(font: font-khmer-display, size: 8.8pt, weight: "bold", fill: c-teal)[ស្វែងរកបានម្ចាស់ជ័យលាភីទាំង ៣រូប ដែលទទួលរង្វាន់សរុប ៤៨,០០០,០០០ រៀល]
  ],
)

#pagebreak()

// ==========================================
// PAGE 8: 4 INNOVATION DIMENSIONS & ASIP ROLE
// ==========================================
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[នវានុវត្តន៍លើ ៤ វិមាត្រស្នូល (Innovation Dimensions)]\
#v(1mm)
#set par(leading: 6pt, justify: false)
#text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
  ដើម្បីពង្រីកលទ្ធភាព និងដោះស្រាយបញ្ហាដែលសហគ្រិនបានជួបប្រទះ ជាពិសេសលើផ្នែកនវានុវត្តន៍ (Innovation) គម្រោងមន្ទីរពិសោធន៍កំពង់ធំ បានបង្ហាញពីរបៀបដែលសហគ្រាសក្នុងខេត្តបានផ្លាស់ប្តូរលើ ៤ វិមាត្រសំខាន់ៗ៖
]
#v(3mm)

// Clean 2-column layout with comfortable 8.8pt text - NO DUPLICATE BOXES
#grid(
  columns: (1fr, 1fr),
  column-gutter: 8mm,
  row-gutter: 4.5mm,
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 2.5mm,
      align: horizon,
      rect(fill: c-teal, radius: 2pt, inset: (x: 2mm, y: 0.8mm))[
        #text(font: font-khmer-body, size: 7.2pt, weight: "bold", fill: c-white)[វិមាត្រទី ១]
      ],
      [
        #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[នវានុវត្តន៍នៃខ្សែច្រវាក់ផលិតកម្ម]
      ]
    )
    #v(1mm)
    #set par(leading: 6pt, justify: false)
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      គម្រោងនេះបានណែនាំនូវការផ្លាស់ប្តូររូបភាពនៃការផលិតពីការប្រើដៃសុទ្ធសាធ ទៅជាការប្រើប្រាស់បច្ចេកទេសទំនើប ដោយការធ្វើស្វ័យប្រវត្តិកម្មលើកម្រិតមធ្យម ប្រើប្រាស់ម៉ាស៊ីនដែលជួយសម្រួលដល់ការវេចខ្ចប់ និងការកែច្នៃ ដើម្បីកាត់បន្ថយការខាតបង់នៃផលិតផល និងបង្កើនល្បឿននៃការផលិត ព្រមទាំងការគ្រប់គ្រងគុណភាពតាមស្តង់ដារ។
    ]
  ],
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 2.5mm,
      align: horizon,
      rect(fill: c-teal, radius: 2pt, inset: (x: 2mm, y: 0.8mm))[
        #text(font: font-khmer-body, size: 7.2pt, weight: "bold", fill: c-white)[វិមាត្រទី ២]
      ],
      [
        #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[នវានុវត្តន៍លើសេដ្ឋកិច្ចចក្រា]
      ]
    )
    #v(1mm)
    #set par(leading: 6pt, justify: false)
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      ផ្លាស់ប្តូររបៀបគិតរបស់អ្នកផលិត ដោយបានបង្រៀនឱ្យមើលឃើញ "សំណល់" ថាជា "ធនធាន"។ ឧទាហរណ៍ សំបកស្វាយចន្ទី ឬសំណល់កសិកម្មផ្សេងទៀត ត្រូវបានប្រមូលផ្តុំដើម្បីកែច្នៃទៅជាជីសរីរាង្គ ឬវត្ថុធាតុដើមសម្រាប់ផលិតផលផ្សេងទៀត ដើម្បីធានាថាផលិតផលកសិកម្មមិនត្រូវបានទុកចោលឥតប្រយោជន៍។
    ]
  ],
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 2.5mm,
      align: horizon,
      rect(fill: c-teal, radius: 2pt, inset: (x: 2mm, y: 0.8mm))[
        #text(font: font-khmer-body, size: 7.2pt, weight: "bold", fill: c-white)[វិមាត្រទី ៣]
      ],
      [
        #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[នវានុវត្តន៍លើផ្នែកឌីជីថល និងទីផ្សារ]
      ]
    )
    #v(1mm)
    #set par(leading: 6pt, justify: false)
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      គម្រោងបានសិក្សា និងអនុវត្តរួមគ្នាដោយការប្រើប្រាស់ទិន្នន័យដើម្បីធ្វើការសម្រេចចិត្ត សហគ្រិនលែងផលិតតាមអារម្មណ៍ទៀតហើយ ប៉ុន្តែពួកគេប្រើប្រាស់ទិន្នន័យទីផ្សារ ដើម្បីកំណត់តម្រូវការអតិថិជន និងការបង្កើតម៉ាកយីហោបែបទំនើបដែលអាចប្រកួតប្រជែងជាមួយផលិតផលនាំចូលបាន។
    ]
  ],
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 2.5mm,
      align: horizon,
      rect(fill: c-teal, radius: 2pt, inset: (x: 2mm, y: 0.8mm))[
        #text(font: font-khmer-body, size: 7.2pt, weight: "bold", fill: c-white)[វិមាត្រទី ៤]
      ],
      [
        #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[នវានុវត្តន៍លើវិធីសាស្ត្រគិត (Mindset)]
      ]
    )
    #v(1mm)
    #set par(leading: 6pt, justify: false)
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      ដោះស្រាយបញ្ហាប្រកបដោយរចនាសម្ព័ន្ធ (Structured Problem Solving) តាមរយៈវិធីសាស្ត្រ Design Thinking សហគ្រិនបានរៀនបំបែកបញ្ហាធំៗឱ្យទៅជាកិច្ចការតូចៗដែលអាចដោះស្រាយបានប្រចាំថ្ងៃ និងមានផែនការច្បាស់លាស់ (Gantt Chart) ព្រមទាំងកញ្ចប់ថវិកាបម្រុងសម្រាប់ហានិភ័យ។
    ]
  ],
)
#v(4.5mm)

// SECTION 6: ASIP ROLE WITH PROMINENT LARGE PHOTO
#rect(
  width: 100%,
  fill: c-paper,
  stroke: (left: 3.5pt + c-sand, rest: 0.5pt + c-line),
  radius: (right: 3pt),
  inset: (x: 5mm, y: 3.5mm),
)[
  #grid(
    columns: (1fr, 82mm),
    gutter: 6mm,
    align: horizon,
    [
      #text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-teal)[១.៦ អំពីឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)]\
      #v(1.5mm)
      #set par(leading: 6.2pt, justify: false)
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (InnoLab Kampong Thom) ត្រូវបានអនុវត្តន៍ដោយ ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)។ ក្នុងនាមជាដៃគូអនុវត្តដែលត្រូវបានតែងតាំង ASIP ដើរតួជាមជ្ឈមណ្ឌលគំនិត និងជាប្រតិបត្តិករដ៏ជំនាញ ដែលដើរតួនាទីជាស្ពានតភ្ជាប់រវាងអាណត្តិគោលនយោបាយថ្នាក់ជាតិ និងល្បឿននៃការអនុវត្តប្រកបដោយប្រសិទ្ធភាពនៅថ្នាក់ខេត្ត ដើម្បីធានាថា "យុទ្ធសាស្ត្របញ្ចកោណ" របស់សម្តេចធិបតីនាយករដ្ឋមន្ត្រី ត្រូវបានអនុវត្តដោយជោគជ័យ និងទទួលបានលទ្ធផលជាក់ស្តែងដល់សហគ្រាសធុនតូចនិងមធ្យម និងសិប្បករក្នុងមូលដ្ឋាន។
      ]\
      #v(1.5mm)
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        ម្យ៉ាងវិញទៀត ASIP ដើរតួជាស្ថាបត្យករផ្នែកឌីជីថលសម្រាប់ខេត្តកំពង់ធំ និងជាស្ពានតភ្ជាប់ជំនាញវិជ្ជាជីវៈរវាងរាជរដ្ឋាភិបាល មូលនិធិអភិវឌ្ឍន៍ជំនាញ (SDF) និងសហគ្រិនខ្មែរ (KE) ដើម្បីធានាថាថវិការដ្ឋត្រូវបានប្រើប្រាស់ដោយតម្លាភាពខ្ពស់ និងទទួលបានលទ្ធផលវិជ្ជមានច្បាស់លាស់។
      ]
    ],
    [
      #box(
        width: 82mm,
        height: 52mm,
        stroke: 0.5pt + c-sand,
        radius: 3pt,
        clip: true,
      )[
        #image("../assets/photos/03.jpg", width: 82mm, height: 52mm, fit: "cover")
      ]
      #v(0.8mm)
      #text(font: font-khmer-body, size: 7.2pt, fill: c-muted)[រូបភាព៖ ក្រុមការងារ ASIP ចុះគាំទ្រ និងផ្សារភ្ជាប់ជាមួយសហគ្រិនមូលដ្ឋាន]
    ]
  )
]

#pagebreak()

// ==========================================
// PAGE 9: MILESTONES & SATISFACTION METRIC
// ==========================================
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.៧ សកម្មភាពក្នុងរដូវកាលទី១ នៃគម្រោងមន្ទីរពិសោធន៍នវានុវត្ដន៍កំពង់ធំ]\
#v(1mm)
#text(font: font-khmer-body, size: 8.8pt, fill: c-muted)[7 KEY PROJECT MILESTONES & IMPLEMENTATION PHASES]
#v(2.5mm)

// Clean editorial 2-column milestones flow - NO RECTANGLE BOXES
#grid(
  columns: (1fr, 1fr),
  column-gutter: 8mm,
  row-gutter: 3mm,
  [
    #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[ដំណាក់កាលទី ១៖ ការបើកទទួលចុះឈ្មោះ]\
    #v(0.5mm)
    #set par(leading: 5.6pt, justify: false)
    #text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
      ទទួលពាក្យសហគ្រិនប្រមាណ ១១១ រូប ចាប់ពីថ្ងៃទី១ ខែកក្កដា រហូតដល់ថ្ងៃទី១៥ ខែសីហា ឆ្នាំ២០២៥ ដោយឆ្លងកាត់ការសម្ភាសន៍ និងចុះពិនិត្យទីតាំងផ្ទាល់ រហូតជ្រើសរើសបាន ២០ រូបចុងក្រោយ មកពីគ្រប់ ៨ ស្រុកនៃខេត្តកំពង់ធំ។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[ដំណាក់កាលទី ២៖ ការសម្ពោធគម្រោងផ្លូវការ]\
    #v(0.5mm)
    #set par(leading: 5.6pt, justify: false)
    #text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
      ក្រោមអធិបតីភាពដ៏ខ្ពង់ខ្ពស់របស់ ឯកឧត្តម វង្សី វិស្សុត ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ គម្រោងបានប្រកាសបេក្ខភាពផ្លូវការ ២០ រូប និងទស្សនកិច្ចផលិតផល នៅថ្ងៃទី១១ ខែតុលា ឆ្នាំ២០២៥។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[ដំណាក់កាលទី ៣៖ វគ្គបណ្ដុះបណ្ដាល និងការប្រឹក្សា]\
    #v(0.5mm)
    #set par(leading: 5.6pt, justify: false)
    #text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
      បណ្តុះបណ្តាលចំនួន ៣ លើកស្តីពី៖ ការរចនាគំនិតអាជីវកម្ម, ការកំណត់ដំណើរការអតិថិជន និងការច្នៃប្រឌិតផលិតផល ដោយមានការគាំទ្រពីគ្រូបង្វឹករៀងៗខ្លួន ដើម្បីពង្រឹងភាពច្នៃប្រឌិត។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[ដំណាក់កាលទី ៤៖ វគ្គពិសោធន៍នវានុវត្តន៍]\
    #v(0.5mm)
    #set par(leading: 5.6pt, justify: false)
    #text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
      សហគ្រិនទទួលបានការប្រឹក្សាផ្ទាល់ពីអ្នកជំនាញលើការកែច្នៃផលិតផល សេវាកម្ម ការវេចខ្ចប់ ការធ្វើតេស្ត និងទីផ្សារ ដើម្បីឆ្លើយតបនឹងតម្រូវការបច្ចុប្បន្ន និងបង្កើនបន្ទាត់ផលិតផលថ្មីៗ។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[ដំណាក់កាលទី ៥៖ វគ្គសិក្ខាសាលានវានុវត្តន៍ (InnoTour)]\
    #v(0.5mm)
    #set par(leading: 5.6pt, justify: false)
    #text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
      ដំណើរទស្សនកិច្ច ២ ថ្ងៃទៅកាន់ខេត្តសៀមរាប ស្វែងយល់ពីនវានុវត្តន៍កែច្នៃសិប្បកម្ម ម្ហូបអាហារ ប្រាសាទបាគង ផ្សារទំនើបអង្គរ និង Senteur d'Angkor។
    ]
  ],
  [
    #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[ដំណាក់កាលទី ៦៖ វគ្គផ្សព្វផ្សាយ និងខ្សែវីដេអូឯកសារ]\
    #v(0.5mm)
    #set par(leading: 5.6pt, justify: false)
    #text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
      ផលិតខ្សែវីដេអូឯកសារស្តីពីដំណើរនវានុវត្តន៍របស់សហគ្រាសទាំង ២០ ដើម្បីពង្រីកការផ្សព្វផ្សាយអាជីវកម្មឱ្យកាន់តែទូលំទូលាយនៅលើបណ្តាញផ្សព្វផ្សាយ ASIP និងដៃគូនានា។
    ]
  ],
)
#v(3mm)

// STAGE 07 HERO CARD (Final Pitching) WITH LARGE PHOTO
#rect(
  width: 100%,
  fill: c-paper,
  stroke: (left: 3.5pt + c-sand, rest: 0.5pt + c-line),
  radius: (right: 3pt),
  inset: (x: 5mm, y: 3.5mm),
)[
  #grid(
    columns: (1fr, 82mm),
    gutter: 6mm,
    align: horizon,
    [
      #grid(
        columns: (auto, 1fr),
        gutter: 2.5mm,
        align: horizon,
        [
          #rect(fill: c-sand, radius: 2pt, inset: (x: 2.5mm, y: 1mm))[
            #text(font: font-sans, size: 7.2pt, weight: "bold", fill: c-charcoal)[STEP 07 · FINALE]
          ]
        ],
        [
          #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[វគ្គផ្តាច់ព្រ័ត្រ និងការប្រគល់រង្វាន់ជ័យលាភី]
        ]
      )
      #v(1.2mm)
      #set par(leading: 6pt, justify: false)
      #text(font: font-khmer-body, size: 8.4pt, fill: c-charcoal)[
        កម្មវិធីបានធ្វើឡើងនាថ្ងៃទី ២១ ខែមីនា ឆ្នាំ២០២៦ ក្រោមអធិបតីភាព ឯកឧត្តម វង្សី វិស្សុត ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ។ សហគ្រាសទាំង ២០ បានធ្វើបទបង្ហាញ និងជ្រើសរើសបានបេក្ខជនឆ្នើម ៧ រូបឆ្លើយសំណួរគណៈកម្មការ រហូតស្វែងរកឃើញម្ចាស់ជ័យលាភី ៣ រូប ដែលម្នាក់ៗទទួលបានរង្វាន់ជាទឹកប្រាក់ ១៦ លានរៀល (សរុប ៤៨ លានរៀល)។
      ]
    ],
    [
      #box(
        width: 82mm,
        height: 44mm,
        stroke: 0.5pt + c-sand,
        radius: 3pt,
        clip: true,
      )[
        #image("../assets/photos/finnal-pitching-2.jpg", width: 82mm, height: 44mm, fit: "cover")
      ]
      #v(0.6mm)
      #text(font: font-khmer-body, size: 7pt, fill: c-muted)[រូបភាព៖ ពិធីបិទវគ្គផ្តាច់ព្រ័ត្រ និងប្រគល់រង្វាន់ជ័យលាភី]
    ]
  )
]
#v(3mm)

// SECTION 8: ENTREPRENEUR SATISFACTION HERO METRIC
#rect(
  width: 100%,
  fill: c-paper,
  stroke: (left: 3.5pt + c-teal, rest: 0.5pt + c-line),
  radius: (right: 3pt),
  inset: (x: 5mm, y: 3.5mm),
)[
  #grid(
    columns: (48mm, 1fr),
    gutter: 5mm,
    align: horizon,
    [
      #rect(
        width: 100%,
        fill: c-teal,
        radius: 3pt,
        inset: (x: 3.5mm, y: 3mm),
      )[
        #align(center)[
          #text(font: font-sans, size: 22pt, weight: "black", fill: c-sand)[3.6]
          #text(font: font-sans, size: 13pt, weight: "bold", fill: c-sand-light)[#("/ 4")] \
          #v(0.5mm)
          #text(font: font-khmer-body, size: 7.5pt, fill: c-sand-light)[កម្រិតពេញចិត្តសរុប]\
          #text(font: font-sans, size: 6.8pt, fill: c-white)[90% GROUP SATISFACTION]
        ]
      ]
    ],
    [
      #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[១.៨ មតិយោបល់ និងកម្រិតពេញចិត្តរបស់សហគ្រិន]\
      #v(1mm)
      #set par(leading: 6pt, justify: false)
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        ជាសរុប សហគ្រិនទាំង ២០ រូបបានបង្ហាញពីកម្រិតពេញចិត្តខ្ពស់ចំពោះកម្មវិធី ដោយមានពិន្ទុមធ្យម ៣.៦ ក្នុងចំណោម ៤។ ការពេញចិត្តលើសកម្មភាពក្រុមមានរហូតដល់ ៩០%។ សហគ្រិនបានបញ្ជាក់ថា វិធីសាស្ត្របង្រៀនដែលមានការចូលរួម ការពិភាក្សា ករណីសិក្សា និងការអនុវត្តជាក់ស្តែង ពិតជាបានជួយពួកគេឱ្យមើលឃើញចន្លោះខ្វះខាតក្នុងអាជីវកម្ម និងកែសម្រួលផលិតផលឱ្យសមស្របតាមតម្រូវការទីផ្សារជាក់ស្តែង។
      ]
    ]
  )
]
