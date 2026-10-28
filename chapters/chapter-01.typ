#import "../styles.typ": *
#import "../components/catalogue.typ": *
#import "../components/report-elements.typ": *

// ==========================================
// PAGE 4: CHAPTER OPENER & STRATEGIC OVERVIEW
// ==========================================
#chapter-opener(
  num: "០១",
  latin-num: "០១",
  title: "ជំពូកទី ១៖ ទិដ្ឋភាពទូទៅ និងក្របខ័ណ្ឌយុទ្ធសាស្ត្រគម្រោង",
  subtitle: "ជំពូកទី ១៖ ទិដ្ឋភាពទូទៅ និងយុទ្ធសាស្ត្រគម្រោងមន្ទីរពិសោធន៍នវានុវត្ដន៍កំពង់ធំ",
  label-id: "ch-01",
)

// DEDICATION HERO PANEL
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
        #text(font: font-khmer-body, size: 8.2pt, weight: "bold", fill: c-teal)[គោរពជូន ឯកឧត្តម វង្សី វិស្សុត ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ]
      ]
    ]
  )
]
#v(3mm)

// 4 KEY METRICS
#equal-box-grid(
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

// SECTION 1: GEOGRAPHIC & ECONOMIC CONTEXT
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.១ បរិបទភូមិសាស្ត្រ និងសេដ្ឋកិច្ចខេត្តកំពង់ធំ]\
#v(1.5mm)

#grid(
  columns: (1fr, 80mm),
  gutter: 5mm,
  align: top,
  [
    #set par(leading: 6.2pt, justify: true)
    #text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
      ខេត្តកំពង់ធំ គឺជា បេះដូងភូមិសាស្ត្រ ដ៏មានសក្តានុពលខ្លាំងនៃព្រះរាជាណាចក្រកម្ពុជា ដែលតភ្ជាប់ រាជធានីភ្នំពេញទៅកាន់តំបន់បេតិកភណ្ឌប្រវត្តិសាស្ត្រសៀមរាប និងតំបន់ភាគឦសាន ដែលមានផ្ទៃដីធំជាងគេទី២ នៅក្នុងប្រទេស ដោយមានផ្ទៃដីសរុបប្រមាណ ១៣,៨១៤ គីឡូម៉ែត្រការ៉េ។ មានព្រំប្រទល់ជាប់ខេត្តព្រះវិហារ និងសៀមរាបនៅភាគខាងជើង, ស្ទឹងត្រែងនៅភាគឦសាន, ក្រចេះនៅភាគខាងកើត, កំពង់ចាម និងកំពង់ឆ្នាំងនៅភាគខាងត្បូង, និងបឹងទន្លេសាបនៅភាគខាងលិច។
    ]
    #v(1.5mm)
    #text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
      ខេត្តកំពង់ធំតំណាងឱ្យចំណុចយុទ្ធសាស្ត្រដ៏សំខាន់មួយសម្រាប់សន្តិសុខស្បៀងក្នុងស្រុក ផលិតកម្ម សិប្បកម្ម និងការតភ្ជាប់ភូមិសាស្ត្ររបស់ប្រទេសកម្ពុជា។ ខេត្តនេះដំណើរការជាការអនុវត្តផ្ទាល់នៃ យុទ្ធសាស្ត្របញ្ចកោណ ដំណាក់កាលទី១ របស់រាជរដ្ឋាភិបាលកម្ពុជា។
    ]
  ],
  [
    #box(
      width: 80mm,
      height: 52mm,
      stroke: 0.5pt + c-line,
      radius: 3pt,
      clip: true,
    )[
      #image("../assets/photos/01.jpg", width: 80mm, height: 52mm, fit: "cover")
    ]
    #v(0.8mm)
    #text(font: font-khmer-body, size: 7pt, fill: c-muted)[រូបភាព៖ បរិបទភូមិសាស្ត្រ និងសេដ្ឋកិច្ចខេត្តកំពង់ធំ]
  ]
)
#v(2.5mm)

#block(
  fill: c-paper,
  stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line),
  radius: (right: 3pt),
  inset: (x: 4.5mm, y: 3.5mm),
  width: 100%,
)[
  #text(font: font-khmer-display, size: 8.8pt, weight: "bold", fill: c-teal)[លក្ខណៈភូមិសាស្ត្ររបស់ខេត្តត្រូវបានបែងចែកដាច់ដោយឡែកពីគ្នាដោយ ផ្លូវជាតិលេខ ៦ ជាបន្ទាត់កាត់កណ្តាល៖]\
  #v(1mm)
  #set par(leading: 6pt, justify: true)
  #text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
    - *តំបន់ភាគខាងជើងផ្លូវជាតិលេខ ៦ (ប្រមាណ ៧០% នៃផ្ទៃដីខេត្ត)៖* គឺជាតំបន់ខ្ពង់រាប និងតំបន់ព្រៃឈើ ដែលសំបូរទៅដោយធនធានធម្មជាតិ និងដីមានជីជាតិសមស្របខ្លាំងណាស់សម្រាប់ការដាំដុះដំណាំឧស្សាហកម្ម និងសកម្មភាពកសិកម្មខ្នាតធំ។\
    - *តំបន់ភាគខាងលិចផ្លូវជាតិលេខ ៦ (ប្រមាណ ៣០% នៃផ្ទៃដីខេត្ត)៖* គឺជាតំបន់វាលរាបអូសបន្លាយដល់បឹងទន្លេសាប ដែលជាតំបន់ជីវមណ្ឌលធម្មជាតិដ៏មានតម្លៃ (រួមមានតំបន់បឹងឆ្មារ និងស្ទឹងសែន) បម្រើឱ្យការធ្វើស្រែចម្ការ និងជាឃ្លាំងវារីសាស្ត្រដ៏សន្ធឹកសន្ធាប់សម្រាប់ការនេសាទ។
  ]
]

#v(2.5mm)

#set par(leading: 6.2pt, justify: true)
#text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
  ខេត្តនេះមានឧត្តមភាពប្រៀបធៀបខ្ពស់ផ្នែកធនធានធម្មជាតិ ដីកសិកម្មមានជីជាតិ ព្រៃឈើ បឹងបួរ និងតំបន់ប្រវត្តិសាស្ត្រពិភពលោក (ជាពិសេស ប្រាសាទសំបូរព្រៃគុក)។ អាស្រ័យលើភូមិសាស្ត្រនេះ សេដ្ឋកិច្ចមូលដ្ឋានពឹងផ្អែកលើវិស័យកសិកម្មដោយខេត្តកំពង់ធំត្រូវបានចាត់ទុកជា *រតនាគារស្វាយចន្ទី* (ផលិតបានជាង ២២០,០០០តោនក្នុងមួយឆ្នាំ ឬប្រហែល ២៥% នៃទិន្នផលសរុបទូទាំងប្រទេស) រួមជាមួយដំណាំយុទ្ធសាស្ត្រផ្សេងទៀតដូចជា ដំឡូងមី ស្រូវ និងកៅស៊ូ។
]

#v(1.5mm)
#text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
  ទោះជាយ៉ាងណា ក្នុងរយៈពេលកន្លងមក តម្លៃសេដ្ឋកិច្ចភាគច្រើនត្រូវបានបាត់បង់ដោយសារការនាំចេញកសិផលស្រស់ ឬជាវត្ថុធាតុដើម (ជាពិសេសគ្រាប់ស្វាយចន្ទីឆៅ) ដោយខ្វះខាតរោងចក្រកែច្នៃស៊ីជម្រៅ និងខ្សែច្រវាក់តម្លៃបន្ថែម (Value Chain Gap)។
]

#v(1.5mm)
#text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
  ដើម្បីដោះស្រាយបញ្ហាប្រឈមនេះ គម្រោង មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ បានដើរតួជាកាតាលីករជាក់ស្តែងក្នុងការតម្រង់ទិសសេដ្ឋកិច្ចមូលដ្ឋាន ឱ្យស្របតាមចក្ខុវិស័យដ៏មុតស្រួចរបស់ *ឯកឧត្តម វង្សី វិស្សុត* ក្នុងការប្រែក្លាយខេត្តកំពង់ធំឱ្យទៅជា «មជ្ឈមណ្ឌលកសិឧស្សាហកម្មឈានមុខនៅក្នុងប្រទេសកម្ពុជាមុនឆ្នាំ២០២៩»។ តាមរយៈការជំរុញការបង្កើតឧទ្យានកសិឧស្សាហកម្ម ការទាក់ទាញទុនវិនិយោគលើរោងចក្រកែច្នៃខ្នាតធំ និងការបណ្តុះបណ្តាលសហគ្រិនខ្នាតតូចនិងមធ្យម (SMEs) តាមរយៈ មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ នឹងធានាថាធនធានធម្មជាតិ និងកសិផលក្នុងស្រុក ត្រូវបានកែច្នៃបង្កើតជាតម្លៃបន្ថែមខ្ពស់ និងជំរុញកំណើនសេដ្ឋកិច្ចខេត្តប្រកបដោយចីរភាព។
]

#pagebreak()

// ==========================================
// PAGE 5: 5 STRATEGIC VALUES
// ==========================================
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.២ គុណតម្លៃ និងសារៈសំខាន់យុទ្ធសាស្ត្រទាំង ៥ នៃនវានុវត្តន៍]\
#v(1mm)
#set par(leading: 6pt, justify: false)
#text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
  នវានុវត្តន៍មិនមែនគ្រាន់តែជាការធ្វើឱ្យប្រសើរឡើងនូវបច្ចេកទេសប៉ុណ្ណោះទេ ប៉ុន្តែវាគឺជាយន្តការមូលដ្ឋានដែលចាំបាច់ក្នុងការធ្វើឱ្យសេដ្ឋកិច្ចខេត្តកំពង់ធំផ្លាស់ប្តូរពីការចិញ្ចឹមជីវិត ទៅជាការចូលរួមក្នុងទីផ្សារដែលមានតម្លៃខ្ពស់៖
]
#v(2.5mm)

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
          ការប្រើប្រាស់ឧបករណ៍ឌីជីថល និងការគ្រប់គ្រងគម្រោងដែលមានរចនាសម្ព័ន្ធច្បាស់លាស់ អនុញ្ញាតឱ្យម្ចាស់អាជីវកម្មធ្វើការសម្រេចចិត្តផ្លាស់ប្តូរយុទ្ធសាស្ត្រ ដោយផ្អែកលើចិត្តសាស្ត្រអ្នកប្រើប្រាស់ និងមតិត្រឡប់ពីទីផ្សារជាក់ស្តែង ជាជាងការសន្មត់ ឬការស្មាន។
        ]
      ]
    )
  ],
)
#v(3.5mm)

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
        នវានុវត្តន៍ដើរតួជាស្ពានតភ្ជាប់ទៅនឹងការតម្រង់ទិសគោលនយោបាយជាតិ។ តាមរយៈការធ្វើទំនើបកម្មរចនាសម្ព័ន្ធរបស់ពួកគេ សហគ្រាសទាំងនោះក្លាយជាអង្គភាពដែលមានការរៀបចំត្រឹមត្រូវ និងគោរពច្បាប់ ដែលអាចគាំទ្រដល់គោលដៅជាតិដូចជាសន្តិសុខស្បៀង។
      ]
    ]
  )
]
#v(3.5mm)

// SECTION 1.3: INNOLAB & PENTAGON STRATEGY
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.៣ គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ និងការផ្សារភ្ជាប់យុទ្ធសាស្ត្របញ្ចកោណ]\
#v(1mm)
#text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
  មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (InnoLab Kampong Thom) គឺជាមជ្ឈមណ្ឌលកណ្ដាល ដែលបង្កើតឡើង ដើម្បីជំរុញសហគ្រាសធុនតូច និងមធ្យម ឱ្យមានការបង្កើតថ្មីប្រកបដោយនវានុវត្តន៍ភាពទៅលើផលិតផល ឬសេវាកម្ម និងផ្សារភ្ជាប់សហគ្រិនជាប្រព័ន្ធអេកូឡូស៊ីមួយ នៅខេត្ដកំពង់ធំ ដោយផ្តោតលើវិស័យធំៗចំនួន ៤ រួមមាន៖ ទេសចរណ៍ កម្មន្តសាល កសិកម្ម និងសិប្បកម្ម ក្រោមពាក្យស្លោក “ផ្សារភ្ជាប់សហគ្រាស និងនវានុវត្តន៍ភាព (Connect SMEs, Connect Innovations)”។ គម្រោងត្រូវបានរៀបចំឡើងដើម្បីបម្រើឱ្យសសរស្តម្ភសំខាន់ៗនៃយុទ្ធសាស្ត្របញ្ចកោណ រួមមាន៖
]
#v(2.5mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 3mm,
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 2.8mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[ការអភិវឌ្ឍធនធានមនុស្ស៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[បំពាក់បំប៉នជំនាញសតវត្សរ៍ទី២១ ដល់ម្ចាស់អាជីវកម្ម និងបុគ្គលិកមូលដ្ឋាន។]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 2.8mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[ការធ្វើពិពិធកម្មសេដ្ឋកិច្ច និងបង្កើនភាពប្រកួតប្រជែង៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[លើកកម្ពស់ផលិតផលក្នុងស្រុកឱ្យប្រកួតប្រជែងជាមួយទំនិញនាំចូល។]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 2.8mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[ការអភិវឌ្ឍវិស័យឯកជន និងការងារ៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[ពង្រឹងភាពរឹងមាំរបស់សហគ្រាសធុនតូច និងមធ្យម ដើម្បីបង្កើតការងារប្រកបដោយគុណភាព។]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 2.8mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[ការអភិវឌ្ឍប្រកបដោយចីរភាព និងបរិយាបន្ន៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[លើកទឹកចិត្តដល់ការប្រើប្រាស់បច្ចេកវិទ្យាបៃតង និងការការពារបរិស្ថាន។]
  ],
)
#v(1.5mm)
#rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 2.8mm)[
  #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[ការអភិវឌ្ឍសេដ្ឋកិច្ច និងសង្គមឌីជីថល៖]\
  #v(0.5mm)
  #set par(leading: 5.5pt, justify: true)
  #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[ជំរុញការប្រើប្រាស់ឧបករណ៍ឌីជីថលក្នុងការគ្រប់គ្រង និងទីផ្សារ។]
]

#v(2.5mm)

#text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[៣. មូលហេតុនៃការបង្កើតគម្រោងមន្ទីរពិសោធន៍កំពង់ធំ]\
#v(1mm)
#text(font: font-khmer-body, size: 8.2pt, fill: c-charcoal)[
  គម្រោងនេះដើរតួជាការអនុវត្តផ្ទាល់នៃយុទ្ធសាស្ត្របញ្ចកោណ ដំណាក់កាលទី១ របស់រាជរដ្ឋាភិបាលកម្ពុជា តាមរយៈ៖\
  - *ការកសាងសមត្ថភាពស្ថាប័ន៖* មានតម្រូវការច្បាស់លាស់ក្នុងការធ្វើទំនើបកម្មធនធានមនុស្ស និងការធ្វើសមាហរណកម្មបច្ចេកវិទ្យាទៅក្នុងសហគ្រាសធុនតូចនិងមធ្យម (SMEs) នៅតាមជនបទ ដើម្បីផ្លាស់ប្តូរពួកវាពីគំរូសេដ្ឋកិច្ចក្រៅប្រព័ន្ធដែលគ្រាន់តែចិញ្ចឹមជីវិត ទៅជាអាជីវកម្មដែលមានរចនាសម្ព័ន្ធត្រឹមត្រូវ មានតម្លៃបន្ថែម និងគោរពតាមស្តង់ដារផលិតផល ឬសេវាកម្ម។\
  - *ការធ្វើទំនើបកម្មសេដ្ឋកិច្ច៖ គម្រោងនេះមានគោលបំណងផ្សារភ្ជាប់គម្លាតរវាងគោលការណ៍ណែនាំថ្នាក់ជាតិ និងស្ថានភាពជាក់ស្តែងនៃសេដ្ឋកិច្ចខេត្ត។*\
  - *និរន្តរភាពតំបន់៖* គោលដៅស្នូលគឺការជំរុញការអនុវត្តសេដ្ឋកិច្ចចក្រា (Circular Economy) ដូចជាការកែច្នៃសំណល់កសិកម្ម (សំបកស្វាយចន្ទី និងសំណល់សរីរាង្គផ្សេងទៀត) ដើម្បីកាត់បន្ថយការអាស្រ័យលើការនាំចូលវត្ថុធាតុដើម និងធ្វើឱ្យប្រសើរឡើងនូវលទ្ធផលបរិស្ថាន។
]

#v(2.5mm)

#block(
  fill: c-paper,
  stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line),
  radius: (right: 3pt),
  inset: (x: 4.5mm, y: 3.5mm),
  width: 100%,
)[
  #text(font: font-khmer-display, size: 8.8pt, weight: "bold", fill: c-teal)[ការកសាងរចនាសម្ព័ន្ធសេដ្ឋកិច្ចដែលទ្រទ្រង់គ្នាទៅវិញទៅមករវាងថ្នាក់ខេត្ត និងថ្នាក់ជាតិ៖]\
  #v(1mm)
  #set par(leading: 6pt, justify: true)
  #text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
    ក្នុងបរិបទនៃគម្រោងនេះ ប្រព័ន្ធអេកូឡូស៊ីមិនមែនគ្រាន់តែជាការតភ្ជាប់ធម្មតាទេ ប៉ុន្តែជាការកសាងរចនាសម្ព័ន្ធសេដ្ឋកិច្ចដែលទ្រទ្រង់គ្នាទៅវិញទៅមករវាងថ្នាក់ខេត្ត និងថ្នាក់ជាតិ៖\
    - *ការតភ្ជាប់ពីថ្នាក់ខេត្តទៅថ្នាក់ជាតិ៖* គម្រោងនេះធ្វើសមាហរណកម្មសហគ្រាសធុនតូចនិងមធ្យម (SMEs) នៅថ្នាក់មូលដ្ឋាន ឱ្យចូលទៅក្នុងបណ្តាញពាណិជ្ជកម្ម និងស្តង់ដារប្រតិបត្តិការថ្នាក់ជាតិ។ តាមរយៈការតម្រង់ទិសខេត្តកំពង់ធំទៅកាន់ទីក្រុងភ្នំពេញ វាបានលុបបំបាត់ភាពឯកោផ្នែកសេដ្ឋកិច្ច និងធានាថាផលិតផលក្នុងតំបន់មានផ្លូវដឹកជញ្ជូន និងទីផ្សារធំៗនៅថ្នាក់ជាតិ។\
    - *ការរួមបញ្ចូលគ្នាដើម្បីនិរន្តរភាព៖* ប្រព័ន្ធនេះពឹងផ្អែកលើការរួមបញ្ចូលគ្នានៃធនធាន។ ឧទាហរណ៍ ការតភ្ជាប់សហគ្រាសក្នុងតំបន់ទៅនឹងគម្រោង «ធនាគារស្បៀងកម្ពុជា» (Foodbank Cambodia) អនុញ្ញាតឱ្យសហគ្រាសដើរតួនាទីជាអ្នកគ្រប់គ្រងភស្តុភារ និងឃ្លាំង ជួយកាត់បន្ថយសំណល់ស្បៀងអាហារដែលជាបញ្ហាសកលមកដោះស្រាយនៅថ្នាក់ខេត្ត ស្របតាមរបៀបវារៈសន្តិសុខស្បៀងថ្នាក់ជាតិ។\
    - *អភិបាលកិច្ច និងកិច្ចសហប្រតិបត្តិការអន្តរស្ថាប័ន៖* ប្រព័ន្ធអេកូឡូស៊ីនេះតម្រូវឱ្យមានកិច្ចសហការយ៉ាងជិតស្និទ្ធរវាងស្ថាប័នរដ្ឋ និងវិស័យឯកជន ដើម្បីបង្កើតបរិយាកាសគាំទ្រដ៏រឹងមាំមួយ។
  ]
]

#pagebreak()

// ==========================================
// PAGE 6: SYSTEMIC CHALLENGES
// ==========================================
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.៤ បញ្ហាប្រឈមជាប្រព័ន្ធក្នុងមូលដ្ឋាន (Systemic Challenges)]\
#v(0.8mm)
#text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-sand-dark)[៤. បញ្ហាប្រឈមជាប្រព័ន្ធក្នុងខេត្តកំពង់ធំ (Systemic Challenges)]\
#v(1mm)
#set par(leading: 6pt, justify: false)
#text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
  សហគ្រាសក្នុងខេត្តកំពង់ធំបានកំពុងជួបប្រទះបញ្ហាកកស្ទះជាច្រើន ដែលរារាំងដល់ភាពប្រកួតប្រជែងរបស់ពួកគេទាំងនៅលើទីផ្សារក្នុងស្រុក និងអន្តរជាតិ៖\
  - *តម្លៃផលិតផលកសិកម្មទាប៖* ផលិតផលដូចជាគ្រាប់ស្វាយចន្ទី ស្រូវ និងផលិតផលត្នោត ត្រូវបាននាំចេញយ៉ាងច្រើនសន្ធឹកសន្ធាប់ក្នុងស្ថានភាពមិនទាន់កែច្នៃ ដែលធ្វើឱ្យខេត្តបាត់បង់ឱកាសការងារផ្នែកផលិតកម្ម និងការរក្សាប្រាក់ចំណេញ។\
  - *បញ្ហាប្រឈមផ្នែកភស្តុភារ និងហេដ្ឋារចនាសម្ព័ន្ធ៖* សហគ្រាសធុនតូចនិងមធ្យមប្រឈមមុខនឹងការចំណាយខ្ពស់លើភស្តុភារ ការផ្គត់ផ្គង់វត្ថុធាតុដើមមិនទៀងទាត់ និងកង្វះខាតហេដ្ឋារចនាសម្ព័ន្ធឃ្លាំងស្វ័យប្រវត្តិ ឬខ្សែច្រវាក់ត្រជាក់ (Cold-chain)។ កាលពីអតីតកាល ខេត្តកំពង់ធំមានភាពឯកោដោយសារផ្លូវដឹកជញ្ជូនមិនមានប្រសិទ្ធភាព ដែលផ្តោតលើតំបន់ព្រំដែនភាគខាងកើត និងរឹតត្បិតលទ្ធភាពចូលទៅកាន់ទីផ្សារដែលមានបរិមាណលក់ដូរខ្ពស់ (តម្រូវឱ្យមានការកែសម្រួលយុទ្ធសាស្ត្រដើម្បីតភ្ជាប់ខេត្តដោយផ្ទាល់ទៅកាន់រាជធានីភ្នំពេញ)។\
  - *គម្លាតឌីជីថល៖* ម្ចាស់សហគ្រាសនៅតែមានកង្វះខាតយ៉ាងខ្លាំងនូវចំណេះដឹងផ្នែកឌីជីថល ដែលបានដាក់កំហិតដល់ការចូលរួមរបស់សហគ្រាសក្នុងពាណិជ្ជកម្មអេឡិចត្រូនិកទំនើប ការកត់ត្រាបញ្ជីស្នាមតាមប្រព័ន្ធឌីជីថល និងការគ្រប់គ្រងអាជីវកម្មផ្អែកលើទិន្នន័យ។
]
#v(2.5mm)

#text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[បញ្ហាប្រឈមនៃនវានុវត្តន៍ក្នុងប្រព័ន្ធអេកូឡូស៊ីសហគ្រាស៖]\
#v(1.5mm)

#let challenge-card(title, desc) = rect(
  width: 100%,
  fill: c-paper,
  stroke: (left: 2.5pt + rgb("#D9534F"), rest: 0.5pt + c-line),
  radius: (right: 3pt),
  inset: (x: 3.5mm, top: 2.5mm, bottom: 2mm),
)[
  #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: rgb("#B53B38"))[#title]\
  #v(0.6mm)
  #set par(leading: 5.2pt, justify: false)
  #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#desc]
]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 4mm,
  row-gutter: 3mm,
  challenge-card(
    "ផ្នត់គំនិតប្រពៃណីដែលចាក់គ្រឹះយ៉ាងជ្រៅ៖",
    "ម្ចាស់អាជីវកម្មជាច្រើនដំណើរការអាជីវកម្មដោយផ្អែកលើទម្លាប់តាមបែបវិចារណញាណដែលបានបន្តពីមួយជំនាន់ទៅមួយជំនាន់ ដែលបង្កើតឱ្យមានការប្រឆាំងនឹងការទទួលយកវិធីសាស្ត្រដោះស្រាយបញ្ហាដែលមានរចនាសម្ព័ន្ធដូចជា Design Thinking។"
  ),
  challenge-card(
    "កង្វះខាតធនធានសម្រាប់ការបង្កើតគំរូសាកល្បង (Prototyping)៖",
    "សហគ្រាសតូចៗខ្វះកញ្ចប់ថវិកាបម្រុងដែលចាំបាច់ដើម្បីធ្វើតេស្តសាកល្បងលើការផ្លាស់ប្តូរផលិតផលថ្មីៗ ដែលនាំឱ្យពួកគេមានការភ័យខ្លាចក្នុងការពិសោធន៍ និងការបរាជ័យ។"
  ),
  challenge-card(
    "កង្វះខាតហេដ្ឋារចនាសម្ព័ន្ធកែច្នៃ៖",
    "ការខ្វះខាតកន្លែងកែច្នៃដែលមានស្វ័យប្រវត្តិកម្ម និងការខ្វះប្រព័ន្ធរក្សាទុកត្រជាក់ (Cold-chain) ដែលមានស្ថិរភាព បានធ្វើឱ្យពិបាកខាងបច្ចេកទេសក្នុងការធ្វើឱ្យនវានុវត្តន៍ផ្នែកសុវត្ថិភាពចំណីអាហារ និងអនាម័យមានភាពទូលំទូលាយ។"
  ),
  challenge-card(
    "ភាពឯកោនៃខ្សែច្រវាក់ផ្គត់ផ្គង់៖",
    "ដោយសារខ្សែច្រវាក់ផ្គត់ផ្គង់មានភាពបែកខ្ញែក និងប្រព័ន្ធភស្តុភារផ្តោតទៅលើការធ្វើពាណិជ្ជកម្មតាមព្រំដែនជាងទីក្រុងធំៗ ធ្វើឱ្យអាជីវកម្មពិបាកក្នុងការស្វែងរកវត្ថុធាតុដើមដែលចាំបាច់ ដើម្បីធ្វើការសាកល្បងការអនុវត្តសេដ្ឋកិច្ចចក្រា (Circular Economy)។"
  ),
)

#v(3mm)

// SECTION 1.5: OBJECTIVES & 4 DIMENSIONS
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.៥ គោលបំណង និងនវានុវត្តន៍លើ ៤ វិមាត្រស្នូល]\
#v(0.8mm)
#text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-sand-dark)[៥. ដំណោះស្រាយ គោលបំណង និងសារសំខាន់]\
#v(1mm)
#set par(leading: 6pt, justify: false)
#text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
  មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ មានចក្ខុវិស័យក្លាយជាគំរូនៃប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍មួយ ដែលជាទីតាំងសម្រាប់សហគ្រិន អ្នកច្នៃប្រឌិត អ្នកស្រាវជ្រាវ និងមន្ត្រីចាប់ពីថ្នាក់មូលដ្ឋាន តាមរយៈការបញ្ចូលនវានុវត្តន៍ភាពទៅក្នុងប្រព័ន្ធទីផ្សារ និងប្រព័ន្ធអភិបាលកិច្ច សម្រាប់អនាគតកម្ពុជា។ គម្រោងនេះមានគោលបំណង៖\
  - បង្ហាញពីសក្តានុពលដែលមានក្នុងស្រុក ដើម្បីអនុញ្ញាតឱ្យសហគមន៍បានចូលរួមចំណែក ក្នុងការសម្រេចបាននូវវឌ្ឍនភាព ប្រកបដោយនវានុវត្តន៍ភាព ចីរភាព និងនិរន្តរភាព ក្រោមយុទ្ធសាស្ត្របញ្ចកោណ។\
  - ផ្តល់ឱកាសឱ្យសិក្ខាកាមទាំង ២០រូប ដែលជាបេក្ខជនប្រកួតប្រជែង អាចបញ្ចូលគំនិតនវានុវត្តន៍ក្នុងអាជីវកម្មរបស់ពួកគេ ដើម្បីឱ្យអាជីវកម្មកាន់តែមានភាពលេចធ្លោ។\
  - ស្វែងរកម្ចាស់ជ័យលាភីទាំង ៣រូប ដែលជាបេក្ខជនឆ្នើម និងមានភាពនវានុវត្តន៍ខ្ពស់ជាងគេ ហើយថែមទាំងទទួលរង្វាន់ជាទឹកប្រាក់សរុបរហូតទៅដល់ ៤៨,០០០,០០០ រៀល។
]

#v(2.5mm)

#text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[ដើម្បីដោះស្រាយបញ្ហាដែលសហគ្រិនបានជួបប្រទះ គម្រោងមន្ទីរពិសោធន៍កំពង់ធំបានរៀបចំនវានុវត្តន៍លើ ៤ វិមាត្រស្នូល៖]
#v(1.5mm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 6mm,
  row-gutter: 3mm,
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 3mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[នវានុវត្តន៍នៃខ្សែច្រវាក់ផលិតកម្ម (Processing Innovation)៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[ផ្លាស់ប្តូរការផលិតពីការប្រើដៃមកជាការប្រើម៉ាស៊ីនពាក់កណ្តាលស្វ័យប្រវត្តិ និងការគ្រប់គ្រងគុណភាពតាមស្តង់ដារ។]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 3mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[នវានុវត្តន៍លើសេដ្ឋកិច្ចចក្រា (Circular Economy Innovation)៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[បង្រៀនឱ្យមើលឃើញ "សំណល់" ថាជា "ធនធាន" ដូចជាការកែច្នៃសំណល់កសិកម្មទៅជាផលិតផលបន្ទាប់បន្សំ។]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 3mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[នវានុវត្តន៍លើផ្នែកឌីជីថល និងទីផ្សារ (Digital & Market Innovation)៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[ប្រើប្រាស់ទិន្នន័យដើម្បីធ្វើការសម្រេចចិត្ត ការកសាងម៉ាកយីហោ និងការលក់តាមប្រព័ន្ធអនឡាញ។]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 3mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[នវានុវត្តន៍លើវិធីសាស្ត្រគិត (Mindset Innovation)៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[ដោះស្រាយបញ្ហាប្រកបដោយរចនាសម្ព័ន្ធតាមវិធីសាស្ត្រ Design Thinking និងការរៀបចំផែនការអាជីវកម្មច្បាស់លាស់។]
  ],
)

#pagebreak()

// ==========================================
// PAGE 7: ASIP ROLE & 7 STAGES
// ==========================================
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.៦ តួនាទីរបស់ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)]\
#v(1mm)
#set par(leading: 6.2pt, justify: true)
#text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
  គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (InnoLab Kampong Thom) ត្រូវបានអនុវត្តន៍ដោយ ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)។ ក្នុងនាមជាដៃគូអនុវត្តដែលត្រូវបានតែងតាំង ASIP ដើរតួជាមជ្ឈមណ្ឌលគំនិត និងជាប្រតិបត្តិករដ៏ជំនាញ ដែលដើរតួនាទីជាស្ពានតភ្ជាប់រវាងអាណត្តិគោលនយោបាយថ្នាក់ជាតិ និងល្បឿននៃការអនុវត្តប្រកបដោយប្រសិទ្ធភាពនៅថ្នាក់ខេត្ត ដើម្បីធានាថា "យុទ្ធសាស្ត្របញ្ចកោណ" របស់សម្តេចធិបតីនាយករដ្ឋមន្ត្រី ត្រូវបានអនុវត្តដោយជោគជ័យ និងទទួលបានលទ្ធផលជាក់ស្តែងដល់សហគ្រាសធុនតូចនិងមធ្យម និងសិប្បករក្នុងមូលដ្ឋាន។
]
#v(1.5mm)
#text(font: font-khmer-body, size: 8.6pt, fill: c-charcoal)[
  ASIP បានធ្វើការផ្លាស់ប្តូរវិស័យដែលមិនសូវមានចលនា ឱ្យទៅជាក្រុមសហគ្រាសដែលមានភាពរស់រវើក និងមានការតភ្ជាប់បណ្តាញយ៉ាងរឹងមាំ។ ម្យ៉ាងវិញទៀត ASIP ដើរតួជាស្ថាបត្យករផ្នែកឌីជីថលសម្រាប់ខេត្តកំពង់ធំ តាមរយៈការតភ្ជាប់មនុស្ស ចំណេះដឹង និងបច្ចេកវិទ្យា។ តាមរយៈសមិទ្ធផលក្នុងរដូវកាលទី១ ASIP បានដឹកនាំ និងជ្រើសរើសបេក្ខជនជាសហគ្រិនទាំង ២០រូប ដោយជោគជ័យ ក្នុងការជំរុញ និងបង្កើតផលិតផលថ្មីៗជាច្រើនបន្តបន្ទាប់ទៀត។
]
#v(2.5mm)

#text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[សកម្មភាព និងតួនាទីស្នូលរបស់ ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ ក្នុងគម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ៖]
#v(1.5mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 3.5mm,
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 3mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[ជាប្រតិបត្តិករគម្រោង និងជាអ្នកដឹកនាំកម្មវិធីនវានុវត្តន៍៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[ASIP ទទួលខុសត្រូវលើការរៀបចំកម្មវិធីទាំងមូល ចាប់តាំងពីការរៀបចំគោលគំនិត ការជ្រើសរើសសហគ្រាស ការរៀបចំវគ្គបណ្តុះបណ្តាល រហូតដល់ការប្រឹក្សាយោបល់ជំនាញ។]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 3mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[ការសហការជាយុទ្ធសាស្ត្រជាមួយដៃគូអភិវឌ្ឍន៍ជាតិ៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[ASIP បានសហការយ៉ាងជិតស្និទ្ធជាមួយស្ថាប័នរដ្ឋ និងមូលនិធិសំខាន់ៗ ដូចជា មូលនិធិអភិវឌ្ឍជំនាញ (SDF), សហគ្រិនខ្មែរ (Khmer Enterprise - KE) និងរដ្ឋបាលខេត្តកំពង់ធំ ដើម្បីធានាបាននូវតម្លាភាព គុណភាពបច្ចេកទេស និងប្រសិទ្ធភាពខ្ពស់បំផុតក្នុងការប្រើប្រាស់ថវិកា និងធនធានសាធារណៈ។]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 3mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[ការកសាងប្រព័ន្ធអេកូឡូស៊ីធុរកិច្ច និងការតភ្ជាប់ទីផ្សារ៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[តាមរយៈការតភ្ជាប់មនុស្ស ចំណេះដឹង និងបច្ចេកវិទ្យា (Connecting people, knowledge, and innovation) ASIP ជួយសម្របសម្រួលឱ្យសហគ្រិនក្នុងខេត្តកំពង់ធំអាចទទួលបាននូវបណ្តាញទីផ្សារទូលំទូលាយ បច្ចេកវិទ្យាកែច្នៃកសិផលទំនើប និងឱកាសទាក់ទាញទុនវិនិយោគ។]
  ],
  rect(width: 100%, fill: c-paper, stroke: 0.5pt + c-line, radius: 2.5pt, inset: 3mm)[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[ការគាំទ្រផ្នែកច្បាប់ និងទំនាក់ទំនងរដ្ឋាភិបាល (Government Relations & Public Affairs)៖]\
    #v(0.5mm)
    #set par(leading: 5.5pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[ASIP ក៏ជួយសម្របសម្រួលដល់អាជីវកម្ម និងសហគ្រាសក្នុងមូលដ្ឋានឱ្យយល់ដឹងពីបទប្បញ្ញត្តិ និងការអនុលោមតាមច្បាប់ (Regulatory compliance) ក្នុងបរិបទនៃការផ្លាស់ប្តូរទិដ្ឋភាពសេដ្ឋកិច្ច និងពាណិជ្ជកម្មនៅកម្ពុជា។]
  ],
)

#v(3.5mm)

// SECTION 1.7: 7 CORE STAGES
#text(font: font-khmer-display, size: 12pt, weight: "bold", fill: c-teal)[១.៧ ដំណាក់កាលស្នូលទាំង ៧ នៃការអនុវត្តគម្រោង]\
#v(1mm)

#let stage-card(num-str, date-str, title-str, desc-str) = block(
  fill: c-white,
  radius: 2.5pt,
  stroke: 0.5pt + c-line,
  inset: (x: 4mm, y: 2.5mm),
  width: 100%,
)[
  #grid(
    columns: (auto, 1fr, auto),
    gutter: 2.5mm,
    align: horizon,
    rect(fill: c-teal, radius: 2pt, inset: (x: 2mm, y: 0.8mm))[
      #text(font: font-sans, size: 6.8pt, weight: "bold", fill: c-white)[#num-str]
    ],
    text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-teal)[#title-str],
    text(font: font-sans, size: 6.8pt, fill: c-muted)[#date-str],
  )
  #v(0.6mm)
  #set par(leading: 5.2pt, justify: true)
  #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#desc-str]
]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 4mm,
  row-gutter: 2.5mm,
  stage-card("STEP 1", "កក្កដា–សីហា ២០២៥", "ដំណាក់កាលទី ១ (កក្កដា–សីហា ២០២៥)៖ ការប្រកាសទទួលពាក្យចុះឈ្មោះ (ទទួលបានបេក្ខជន ១១១ នាក់)។", [ទទួលពាក្យសហគ្រិនប្រមាណ ១១១ រូប ដោយឆ្លងកាត់ការសម្ភាសន៍ និងចុះពិនិត្យទីតាំងផ្ទាល់ រហូតជ្រើសរើសបាន ២០ រូបចុងក្រោយ មកពីគ្រប់ ៨ ស្រុកនៃខេត្តកំពង់ធំ។]),
  stage-card("STEP 2", "កញ្ញា–តុលា ២០២៥", "ដំណាក់កាលទី ២ (កញ្ញា–តុលា ២០២៥)៖ ការចុះវាយតម្លៃ និងសម្ពោធគម្រោងផ្លូវការ ជ្រើសរើសបាន ២០ សហគ្រាស។", [ក្រោមអធិបតីភាពដ៏ខ្ពង់ខ្ពស់របស់ ឯកឧត្តម វង្សី វិស្សុត ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ គម្រោងបានប្រកាសបេក្ខភាពផ្លូវការ ២០ រូប និងទស្សនកិច្ចផលិតផល។]),
  stage-card("STEP 3", "តុលា–វិច្ឆិកា ២០២៥", "ដំណាក់កាលទី ៣ (តុលា–វិច្ឆិកា ២០២៥)៖ វគ្គបណ្តុះបណ្តាលសមត្ថភាពស្នូល ៣ វគ្គធំៗ។", [បណ្តុះបណ្តាលសមត្ថភាពស្នូល ៣ វគ្គធំៗ (Design Thinking, Customer Journey, Creative Project Management) ដោយមានការគាំទ្រពីគ្រូបង្វឹកជំនាញ។]),
  stage-card("STEP 4", "វិច្ឆិកា–ធ្នូ ២០២៥", "ដំណាក់កាលទី ៤ (វិច្ឆិកា–ធ្នូ ២០២៥)៖ វគ្គពិសោធន៍នវានុវត្តន៍ និងការបង្កើតផលិតផលគំរូ។", [សហគ្រិនទទួលបានការប្រឹក្សាផ្ទាល់ពីអ្នកជំនាញលើការកែច្នៃផលិតផល សេវាកម្ម ការវេចខ្ចប់ ការធ្វើតេស្ត និងការរៀបចំផែនការអាជីវកម្ម។]),
  stage-card("STEP 5", "ធ្នូ ២០២៥", "ដំណាក់កាលទី ៥ (ធ្នូ ២០២៥)៖ ដំណើរទស្សនកិច្ចសិក្សាដកពិសោធន៍ InnoTour នៅខេត្តសៀមរាប។", [ដំណើរទស្សនកិច្ចសិក្សាដកពិសោធន៍ InnoTour នៅខេត្តសៀមរាប រយៈពេល ២ ថ្ងៃ ស្វែងយល់ពីនវានុវត្តន៍កែច្នៃសិប្បកម្ម ម្ហូបអាហារ ប្រាសាទបាគង និង Senteurs d'Angkor។]),
  stage-card("STEP 6", "ធ្នូ ២០២៥ – មករា ២០២៦", "ដំណាក់កាលទី ៦ (ធ្នូ ២០២៥ – មករា ២០២៦)៖ ការផលិតវីដេអូឯកសារអាជីវកម្ម និងយុទ្ធនាការផ្សព្វផ្សាយឌីជីថល។", [ការផលិតវីដេអូឯកសារអាជីវកម្ម និងយុទ្ធនាការផ្សព្វផ្សាយឌីជីថល ដើម្បីពង្រីកការផ្សព្វផ្សាយផលិតផល និងម៉ាកយីហោសហគ្រាសទាំង ២០។]),
)

#v(2.5mm)

#stage-card("STEP 7", "មីនា ២០២៦", "ដំណាក់កាលទី ៧ (មីនា ២០២៦)៖ ទិវាប្រកួតប្រជែងឡើងពេជ្រចុងក្រោយ និងពិធីប្រគល់រង្វាន់ជ័យលាភី។", [បានប្រព្រឹត្តទៅនាថ្ងៃទី ២១ ខែមីនា ឆ្នាំ២០២៦ ក្រោមអធិបតីភាព ឯកឧត្តម វង្សី វិស្សុត ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ។ សហគ្រាសទាំង ២០ បានឡើងធ្វើបទបង្ហាញជ្រចុងក្រោយ (Final Pitch Day) និងស្វែងរកឃើញម្ចាស់ជ័យលាភី ៣ រូប ទទួលបានប្រាក់រង្វាន់សរុប ៤៨ លានរៀល (១៦ លានរៀលក្នុងមួយសហគ្រាស) ព្រមទាំងពានរង្វាន់ពិសេស ២ ទៀត។])
