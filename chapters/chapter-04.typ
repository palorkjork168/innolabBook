#import "../styles.typ": *
#import "../components/catalogue.typ": *
#import "../components/report-elements.typ": *

// ==============================================================================
// ជំពូកទី ៤៖ ការរកឃើញសំខាន់ៗ និងការវាយតម្លៃផលប៉ះពាល់
// ==============================================================================

#chapter-opener(
  num: "០៤",
  title: "ការរកឃើញសំខាន់ៗ និងការវាយតម្លៃផលប៉ះពាល់",
  subtitle: "ជំពូកទី ៤៖ ការរកឃើញសំខាន់ៗ និងការវាយតម្លៃផលប៉ះពាល់ (Data Analysis & Impact)",
  label-id: "ch-04",
)

#rect(width: 100%, fill: c-paper, stroke: (left: 2.5pt + c-teal, rest: 0.5pt + c-line), radius: (right: 3pt), inset: 4.5mm)[
  #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[សេចក្តីផ្តើម និងទិដ្ឋភាពទូទៅនៃទិន្នន័យ]  #v(1mm)
  #set par(leading: 6pt, justify: true)
  #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
    ជំពូកនេះធ្វើការវិភាគយ៉ាងស៊ីជម្រៅលើទិន្នន័យទាំងเชิงបរិមាណ និងគុណភាព ដែលប្រមូលបានពីការស្ទង់មតិ និងការវាយតម្លៃលើសហគ្រាសធុនតូច និងមធ្យម (SMEs) សរុបដែលបានចូលរួមក្នុងគម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ រដូវកាលទី ១។ ការវិភាគនេះត្រូវបានរៀបចំឡើងដើម្បីสะទោសពីការវិវត្តនៃរចនាសម្ព័ន្ធអាជីវកម្ម កម្រិតនៃការរីកចម្រើន នវានុវត្តន៍ភាព ព្រមទាំងបញ្ហាប្រឈម និងតម្រូវការចាំបាច់សម្រាប់ជំហានបន្ទាប់។
  ]
]
#v(3mm)

#equal-box-grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 3mm,
  stat-card("២២ រូបភាព", "តារាង និងក្រាហ្វវិភាគ"),
  stat-card("១០០%", "នវានុវត្តន៍ផលិតផល"),
  stat-card("៨០%", "ការគ្រប់គ្រងកម្រិតមធ្យម"),
  stat-card("៨៥%", "ការពេញចិត្តលើគម្រោង"),
)
#v(4mm)

#v(3mm)
#text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-teal)[១. លក្ខណៈទូទៅ និងទិដ្ឋភាពប្រជាសាស្ត្ររបស់សហគ្រាសធុនតូច និងមធ្យម (SMEs) រដូវកាលទី ១]
#v(1.5mm)
#set par(leading: 6pt, justify: true)
#text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
  គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ រដូវកាលទី ១ បានប្រមូលផ្តុំសហគ្រាសចូលរួមសរុបចំនួន ២០ សហគ្រាស ដែលតំណាងឱ្យវិស័យសេដ្ឋកិច្ចសំខាន់ៗចំនួនបួននៅក្នុងខេត្តកំពង់ធំ។ ការយល់ដឹងពីលក្ខណៈទូទៅនេះ គឺជាមូលដ្ឋានគ្រឹះក្នុងការកំណត់ទិសដៅអភិវឌ្ឍន៍កម្មវិធីឱ្យចំគោលដៅ៖
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - ការចាត់ថ្នាក់តាមវិស័យអាជីវកម្ម (យោងតាមរូបភាពទី១):
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image8.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - វិស័យ កសិកម្ម និងកសិ-ឧស្សាហកម្ម (Agro Industry) គ្របដណ្តប់សមាមាត្រធំជាងគេបង្អស់គឺ ៤០% នៃចំនួនសហគ្រាសសរុប។
]
#v(1mm)

#editorial-block(tag: "ពន្យល់", tag-color: c-teal)[
  ភាគរយខ្ពស់បំផុតនេះឆ្លុះបញ្ចាំងយ៉ាងច្បាស់អំពីសក្តានុពលសេដ្ឋកិច្ចធម្មជាតិរបស់ខេត្តកំពង់ធំ ដែលជាតំបន់កសិកម្មដ៏សំខាន់មួយ។ សហគ្រាសភាគច្រើននៅក្នុងតំបន់នេះពឹងផ្អែកលើការដាំដុះ និងការប្រមូលផល ប៉ុន្តែពួកវាខ្វះខាតនូវបច្ចេកវិទ្យាកែច្នៃ។ ដូច្នេះហើយ បានជាសហគ្រិនក្នុងវិស័យនេះមានតម្រូវការខ្លាំងជាងគេក្នុងការចូលរួមគម្រោង ដើម្បីស្វែងរកវិធីសាស្ត្រកែច្នៃផលិតផលកសិផលឱ្យមានតម្លៃបន្ថែមខ្ពស់។
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - វិស័យ ផលិតកម្ម (Manufacturing) ឈរនៅលំដាប់ទីពីរ ដោយមានសមាមាត្រ ២៦.៧% ដែលឆ្លុះបញ្ចាំងពីការចាប់ផ្តើមរីកចម្រើននៃឧស្សាហកម្មកែច្នៃខ្នាតតូច និងមធ្យម។
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - វិស័យ សិប្បកម្ម (Handicraft) មានចំនួន ២០% ដែលមានតួនាទីយ៉ាងសំខាន់ក្នុងការថែរក្សាប្រពៃណី និងផលិតផលស្នាដៃក្នុងស្រុក។
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - វិស័យ ទេសចរណ៍ (Tourism) មានសមាមាត្រទាបជាងគេគឺ ១៣.៣% ប៉ុន្តែជាវិស័យគាំទ្រដ៏សំខាន់ក្នុងការជំរុញសេដ្ឋកិច្ចមូលដ្ឋាន និងផ្សព្វផ្សាយផលិតផលក្នុងស្រុកទៅកាន់ភ្ញៀវទេសចរ។
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - រយៈពេលប្រតិបត្តិការអាជីវកម្ម (យោងតាមរូបភាពទី២):
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image16.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ទិន្នន័យបានបង្ហាញថា សហគ្រាសដែលចូលរួមភាគច្រើនជាអាជីវកម្មដែលមានបទពិសោធន៍ និងដំណើរការយូរល្មមក្នុងទីផ្សារ។ ក្នុងនោះ សហគ្រាសដែលមានរយៈពេលប្រតិបត្តិការ ៦-១០ ឆ្នាំ មានចំនួនច្រើនជាងគេគឺ ៣៣.៣%。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - សហគ្រាសដែលមានអាយុកាលអាជីវកម្មថ្មី ១-៣ ឆ្នាំ និងក្រុមអាជីវកម្មចាស់វស្សាដែលមានអាយុកាល លើសពី ១១ ឆ្នាំឡើងទៅ (11+) មានសមាមាត្រស្មើគ្នាគឺ ២៦.៧% រៀងៗខ្លួន។
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - រីឯសហគ្រាសដែលមានរយៈពេលប្រតិបត្តិការពី ៤-៦ ឆ្នាំ គឺមានចំនួន ១៣.៣%。 ការចម្រុះគ្នារវាងអាជីវកម្មថ្មី និងអាជីវកម្មបទពិសោធន៍ខ្ពស់នេះ បានបង្កើតជាបរិយាកាសអំណោយផលសម្រាប់ការផ្លាស់ប្តរបទពិសោធន៍ ការចែករំលែកមេរៀនអាជីវកម្ម និងការកសាងបណ្តាញទំនាក់ទំនងរវាងគ្នាទៅវិញទៅមក។
]
#v(1mm)

#editorial-block(tag: "ពន្យល់", tag-color: c-teal)[
  ភាគរយនេះបង្ហាញថា អាជីវកម្មដែលចូលរួមភាគច្រើនមិនមែនជាអាជីវកម្មទើបបង្កើតថ្មីសុទ្ធសាធនោះទេ ប៉ុន្តែជាអាជីវកម្មដែលបានឆ្លងកាត់ដំណាក់កាលរស់រានមានជីវិតដំបូង (Survival Stage) រួចហើយ។ ពួកគេមានបទពិសោធន៍ទីផ្សារខ្លះៗ ប៉ុន្តែជួបប្រទះនឹងភាពទ្រឹង (Stagnation) ទើបពួកគេត្រូវការគម្រោងនវានុវត្តន៍នេះដើម្បីជួយរុញច្រានអាជីវកម្មរបស់ខ្លួនឱ្យឈានដល់កម្រិតថ្មីមួយទៀត។
]
#v(1.5mm)

#v(3mm)
#pagebreak()
#text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-teal)[២. ការវិភាគគំរូអាជីវកម្ម ការពង្រីកបណ្តាញ និងការប្រែប្រួលទំហំទីផ្សារ]
#v(1.5mm)
#set par(leading: 6pt, justify: true)
#text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
  ការចូលរួមក្នុងគម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ បានបង្កើតជាកាតាលីករដ៏មានឥទ្ធិពលក្នុងការផ្លាស់ប្តូររចនាសម្ព័ន្ធប្រតិបត្តិការ ការពង្រីកបណ្តាញទំនាក់ទំនងធុរកិច្ច និងការលើកកម្ពស់ទំហំទីផ្សាររបស់សហគ្រាស៖
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - ការរីកចម្រើននៃបណ្តាញភាពជាដៃគូយុទ្ធសាស្ត្រ (យោងតាមរូបភាពទី៣ និងទី៤):
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image20.png", width: 88%, fit: "contain")
  ]
]
#v(1mm)
#set par(leading: 6pt, justify: true)
#text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
  មុនពេលចូលរួមគម្រោង (រូបភាពទី៣): សហគ្រាសរហូតដល់ ៣៥.៧% គឺមានដៃគូអាជីវកម្មសំខាន់ត្រឹមតែ ១-៣ ដៃគូប៉ុណ្ណោះ ដែលបង្ហាញពីភាពឯកោ ឬកម្រិតនៃការសហការក្នុងកម្រិតកំណត់。
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ក្រោយពេលចូលរួមគម្រោង (រូបភាពទី៤): ទោះបីជាសហគ្រាសដែលមានដៃគូ ១-៣ នៅតែមានចំនួន ៣០.៨% ក៏ដោយ ប៉ុន្តែសមាមាត្រនៃសហគ្រាសដែលមានដៃគូចំនួន ៧-១០ ដៃគូ បានកើនឡើងយ៉ាងគំហុកដល់ ២៣.១% ហើយក្រុមដែលមានដៃគូ លើសពី ១០ ដៃគូ ក៏មានចំនួន ១៥.៤% ផងដែរ。 ការវិវត្តនេះគឺជាសក្ខីភាពបញ្ជាក់យ៉ាងច្បាស់ថា គម្រោងបានជួយពង្រីកបណ្តាញទំនាក់ទំនងធុរកិច្ច (Networking) និងកិច្ចសហការយុទ្ធសាស្ត្ររបស់សហគ្រាសបានយ៉ាងទូលំទូលាយ。
]
#v(1mm)

#editorial-block(tag: "ពន្យល់", tag-color: c-teal)[
  មុនពេលចូលរួម អាជីវកម្មភាគច្រើនមានបណ្តាញចង្អៀត ព្រោះពួកគេធ្វើអាជីវកម្មបែបឯកោ。 តែតាមរយៈកម្មវិធីបណ្តុះបណ្តាល និងវេទិកាតភ្ជាប់បណ្តាញរបស់គម្រោង វាបានបើកឱកាសឱ្យម្ចាស់អាជីវកម្មបានជួបជុំគ្នា ស្គាល់អ្នកផ្គត់ផ្គង់ថ្មីៗ និងដៃគូសហការ ដែលធ្វើឱ្យភាគរយនៃសហគ្រាសដែលមានដៃគូច្រើនមានការកើនឡើងយ៉ាងច្បាស់លាស់。
]

#v(3mm)
#pagebreak()

#block(
  width: 100%,
  stroke: 0.5pt + c-line,
  radius: 3.5pt,
  fill: c-paper,
  clip: true,
  breakable: false,
)[
  #block(
    fill: c-teal,
    width: 100%,
    inset: (x: 4mm, y: 2.8mm),
  )[
    #grid(
      columns: (1fr, auto),
      align: horizon,
      [
        #text(font: font-sans, size: 6.8pt, weight: "bold", fill: c-sand, tracking: 0.12em)[INNOLAB KAMPONG THOM · OPERATIONAL UPGRADES]\
        #v(0.4mm)
        #text(font: font-khmer-display, size: 9.2pt, weight: "bold", fill: c-white)[រូបភាពទី ៥៖ ការផ្លាស់ប្តូរ និងការកែលម្អផលិតផល សេវាកម្ម និងសកម្មភាពអាជីវកម្ម]\
        #v(0.2mm)
        #text(font: font-sans, size: 6.8pt, fill: c-paper.darken(10%))[Reported Changes and Practical Operational Improvements]
      ],
      [
        #rect(fill: c-sand-dark, radius: 2pt, inset: (x: 2.5mm, y: 1.5mm))[
          #text(font: font-sans, size: 7pt, weight: "bold", fill: c-white)[១៤ សហគ្រាស]
        ]
      ]
    )
  ]
  #v(2.5mm)
  #pad(x: 3mm, bottom: 3mm)[
    #grid(
      columns: (1fr, 1fr),
      gutter: 2.5mm,
      [
        #rect(fill: c-white, stroke: 0.4pt + c-line, radius: 2.5pt, inset: 2.5mm, width: 100%)[
          #grid(
            columns: (auto, 1fr),
            gutter: 2mm,
            align: horizon,
            circle(radius: 2.2mm, fill: c-teal)[#align(center + horizon)[#text(font: font-sans, size: 6pt, weight: "bold", fill: c-white)[1]]],
            text(font: font-khmer-display, size: 7.8pt, weight: "bold", fill: c-teal)[ពីការងារដោយដៃ ទៅម៉ាស៊ីន]
          )
          #v(1mm)
          #set par(leading: 5pt, justify: true)
          #text(font: font-khmer-body, size: 7.2pt, fill: c-charcoal)[
            - ផ្លាស់ប្តូរពីការងារដោយដៃ ទៅម៉ាស៊ីន (ពី hand to machine) ដើម្បីបង្កើនផលិតភាព\
            - វិនិយោគលើម៉ាស៊ីនថ្មី និងបច្ចេកវិទ្យាកែច្នៃ (Invest in new machine)
          ]
        ]
      ],
      [
        #rect(fill: c-white, stroke: 0.4pt + c-line, radius: 2.5pt, inset: 2.5mm, width: 100%)[
          #grid(
            columns: (auto, 1fr),
            gutter: 2mm,
            align: horizon,
            circle(radius: 2.2mm, fill: c-teal)[#align(center + horizon)[#text(font: font-sans, size: 6pt, weight: "bold", fill: c-white)[2]]],
            text(font: font-khmer-display, size: 7.8pt, weight: "bold", fill: c-teal)[ស្តង់ដារដំណើរការផលិត និងបង្កើត SOP]
          )
          #v(1mm)
          #set par(leading: 5pt, justify: true)
          #text(font: font-khmer-body, size: 7.2pt, fill: c-charcoal)[
            - រៀបចំដំណើរការផលិតឱ្យមានស្តង់ដារ (Standardize production process)\
            - ដាក់ឱ្យអនុវត្តនូវនីតិវិធីប្រតិបត្តិស្តង់ដារ (SOP development)
          ]
        ]
      ],
      [
        #rect(fill: c-white, stroke: 0.4pt + c-line, radius: 2.5pt, inset: 2.5mm, width: 100%)[
          #grid(
            columns: (auto, 1fr),
            gutter: 2mm,
            align: horizon,
            circle(radius: 2.2mm, fill: c-teal)[#align(center + horizon)[#text(font: font-sans, size: 6pt, weight: "bold", fill: c-white)[3]]],
            text(font: font-khmer-display, size: 7.8pt, weight: "bold", fill: c-teal)[រៀបចំប្លង់ទីតាំងផលិត និងលំហូរផលិត]
          )
          #v(1mm)
          #set par(leading: 5pt, justify: true)
          #text(font: font-khmer-body, size: 7.2pt, fill: c-charcoal)[
            - រៀបចំប្លង់ទីតាំងផលិតកម្មឡើងវិញ (Rearrange production place)\
            - កែលម្អលំហូរផលិតឱ្យមានស្តង់ដារ (More standardized production flow)
          ]
        ]
      ],
      [
        #rect(fill: c-white, stroke: 0.4pt + c-line, radius: 2.5pt, inset: 2.5mm, width: 100%)[
          #grid(
            columns: (auto, 1fr),
            gutter: 2mm,
            align: horizon,
            circle(radius: 2.2mm, fill: c-teal)[#align(center + horizon)[#text(font: font-sans, size: 6pt, weight: "bold", fill: c-white)[4]]],
            text(font: font-khmer-display, size: 7.8pt, weight: "bold", fill: c-teal)[បំបែកតំបន់ផលិតអាហារ និងផលិតទឹក]
          )
          #v(1mm)
          #set par(leading: 5pt, justify: true)
          #text(font: font-khmer-body, size: 7.2pt, fill: c-charcoal)[
            - ផ្លាស់ប្តូរទីតាំង ឬបំបែកតំបន់ផលិតអាហារកែច្នៃ ពីកន្លែងផលិតទឹក\
            - ការពារហានិភ័យចម្លង និងធានាសុវត្ថិភាពអនាម័យចំណីអាហារ
          ]
        ]
      ],
      [
        #rect(fill: c-white, stroke: 0.4pt + c-line, radius: 2.5pt, inset: 2.5mm, width: 100%)[
          #grid(
            columns: (auto, 1fr),
            gutter: 2mm,
            align: horizon,
            circle(radius: 2.2mm, fill: c-teal)[#align(center + horizon)[#text(font: font-sans, size: 6pt, weight: "bold", fill: c-white)[5]]],
            text(font: font-khmer-display, size: 7.8pt, weight: "bold", fill: c-teal)[រៀបចំក្រុមការងារ និងបន្ថែមបុគ្គលិក]
          )
          #v(1mm)
          #set par(leading: 5pt, justify: true)
          #text(font: font-khmer-body, size: 7.2pt, fill: c-charcoal)[
            - រៀបចំក្រុមការងារឡើងវិញតាមជំនាញ (Restructure team)\
            - បន្ថែមបុគ្គលិក និងពង្រឹងសមត្ថភាពប្រតិបត្តិការ (Add more staff)
          ]
        ]
      ],
      [
        #rect(fill: c-white, stroke: 0.4pt + c-line, radius: 2.5pt, inset: 2.5mm, width: 100%)[
          #grid(
            columns: (auto, 1fr),
            gutter: 2mm,
            align: horizon,
            circle(radius: 2.2mm, fill: c-teal)[#align(center + horizon)[#text(font: font-sans, size: 6pt, weight: "bold", fill: c-white)[6]]],
            text(font: font-khmer-display, size: 7.8pt, weight: "bold", fill: c-teal)[កែលម្អទីផ្សារឌីជីថល និងស្តុក]
          )
          #v(1mm)
          #set par(leading: 5pt, justify: true)
          #text(font: font-khmer-body, size: 7.2pt, fill: c-charcoal)[
            - ធ្វើទីផ្សារឌីជីថល និងផ្សព្វផ្សាយផលិតផល (Digital marketing)\
            - គ្រប់គ្រងស្តុកដោយប្រព័ន្ធបច្ចេកវិទ្យាឌីជីថល (Digitalize stock control)
          ]
        ]
      ],
    )
    #v(1.5mm)
    #rect(fill: c-sand.lighten(45%), stroke: 0.4pt + c-sand, radius: 2pt, inset: 2mm, width: 100%)[
      #set par(leading: 4.8pt, justify: true)
      #text(font: font-khmer-body, size: 6.8pt, fill: c-charcoal)[
        *ចំណាំ៖* សេចក្តីសង្ខេបនេះផ្អែកលើចម្លើយជាក់ស្តែងរបស់សហគ្រាសចំនួន ១៤ ដែលបានចូលរួមឆ្លើយតបការស្ទង់មតិផលប៉ះពាល់ (Summary based on 14 SME responses)。
      ]
    ]
  ]
]
#v(1.5mm)
#set par(leading: 6pt, justify: true)
#text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
  ការផ្លាស់ប្តូរ និងកែលម្អសកម្មភាពអាជីវកម្មជាក់ស្តែង (យោងតាមរូបភាពទី៥): តាមរយៈការឆ្លើយតប និងមតិកែលម្អរបស់សហគ្រាស ពួកគាត់បានធ្វើការផ្លាស់ប្តូរសំខាន់ៗជាច្រើនដូចជា៖
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការកែលម្អការវេចខ្ចប់ផលិតផលឱ្យមានភាពប្រណីត ទាក់ទាញ និងស្របតាមស្តង់ដារអនាម័យនិងទីផ្សារ。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការផ្លាស់ប្តូរដំណើរការផលិតពីការប្រើប្រាស់ដៃបែបបុរាណ មកជាការប្រើប្រាស់ម៉ាស៊ីន (ពី hand to machine) ដើម្បីបង្កើនផលិតភាព。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការរៀបចំប្លង់ទីតាំងផលិតកម្មឡើងវិញ (ឧទាហរណ៍ ការបែងចែកដាច់ពីគ្នារវាងកន្លែងផលិតទឹក និងកន្លែងផលិតផ្សេងៗ) និងការដាក់ឱ្យអនុវត្តនូវនីតិវិធីប្រតិបត្តិស្តង់ដារ (SOP)。
]

#v(3mm)
#pagebreak()

#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - ការប្រៀបធៀបទំហំទីផ្សាររបស់សហគ្រាស (យោងតាមរូបភាពទី៦ និងទី៧):
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image6.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - មុនពេលចូលរួម (រូបភាពទី៦) សហគ្រាសខ្នាតមីក្រូ (Micro-sized) មានចំនួនរហូតដល់ ៤៦.៧%, ខ្នាតតូច (Small-sized) ៤០% និងខ្នាតមធ្យម (Medium-sized) មានត្រឹមតែកម្រិត ១៣.៣% ប៉ុណ្ណោះ。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ក្រោយពេលបញ្ចប់គម្រោង (រូបភាពទី៧) សមាមាត្រសហគ្រាសខ្នាតមីក្រូបានធ្លាក់ចុះមកត្រឹម ៤០% ខណៈដែលសហគ្រាសខ្នាតមធ្យមបានកើនឡើងយ៉ាងសំខាន់ដល់ ២០% រីឯខ្នាតតូចរក្សាស្ថិរភាពនៅ ៤០%。 ការផ្លាស់ប្តូរនេះបង្ហាញយ៉ាងច្បាស់ថា សហគ្រាសខ្នាតមីក្រូមួយចំនួនបានពង្រីកសមត្ថភាព ទីផ្សារ និងប្រតិបត្តិការរបស់ខ្លួនរហូតអាចឈានឡើងដល់កម្រិតសហគ្រាសខ្នាតមធ្យម ដែលสะទោសពីឥទ្ធិពលវិជ្ជមានដ៏ខ្លាំងក្លារបស់គម្រោង。
]
#v(1mm)

#editorial-block(tag: "ពន្យល់", tag-color: c-teal)[
  ការផ្លាស់ប្តូរភាគរយនេះ គឺជាភស្តុតាងដ៏មានឥទ្ធិពលបំផុតដែលបង្ហាញថា គម្រោងនេះមិនត្រឹមតែផ្តល់ទ្រឹស្តីទេ ប៉ុន្តែបង្កើតជា "ផលជះសេដ្ឋកិច្ចពិតប្រាកដ" (Economic Impact)。 ការដែលភាគរយខ្នាតមីក្រូធ្លាក់ចុះ ហើយខ្នាតមធ្យមកើនឡើង គឺដោយសារតែសហគ្រាសមួយចំនួនបានពង្រីកទំហំប្រតិបត្តិការ បង្កើនផលិតភាព និងពង្រីកទីផ្សារចេញពីក្នុងស្រុកទៅកាន់កម្រិតអន្តរខេត្ត ឬទូទាំងប្រទេស ដែលធ្វើឱ្យចំណាត់ថ្នាក់អាជីវកម្មរបស់ពួកគេត្រូវបានលើកកម្ពស់。
]
#v(1.5mm)

#v(3mm)
#pagebreak()
#text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-teal)[៣. ការផ្សព្វផ្សាយទីផ្សារ ធនធានមនុស្ស និងការគ្រប់គ្រងអាជីវកម្ម]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - ការមើលឃើញ និងការផ្សព្វផ្សាយក្នុងទីផ្សារ (Market Visibility) (យោងតាមរូបភាពទី៨ និងទី៩):
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image17.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - មុនពេលចូលរួមគម្រោង (រូបភាពទី៨) សហគ្រាស ៥០% បានវាយតម្លៃការផ្សព្វផ្សាយ និងការទទួលស្គាល់របស់ខ្លួនថាក្នុងកម្រិតទាប (កម្រិត ២) និង ៥០% ទៀតនៅកម្រិតខ្ពស់ (កម្រិត ៣)。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ក្រោយពេលបញ្ចប់គម្រោង (រូបភាពទី៩) ការយល់ឃើញបានផ្លាស់ប្តូរជាវិជ្ជមានយ៉ាងខ្លាំង ដោយ ៦០% នៃសហគ្រាសបានវាយតម្លៃថាការទទួលស្គាល់អាជីវកម្មរបស់ខ្លួននៅលើបណ្តាញសង្គមមានកម្រិតខ្ពស់ (កម្រិត ៣) និង ៤០% វាយតម្លៃថាស្ថិតក្នុងកម្រិតខ្ពស់បំផុត (កម្រិត ៤)。 លទ្ធផលនេះបង្ហាញថា គម្រោងបានជួយបង្កើនប្រសិទ្ធភាពនៃការកសាងម៉ាកយីហោ (Branding) និងការពង្រីកលទ្ធភាពចូលទៅកាន់ទីផ្សារ。
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image4.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - ការអភិវឌ្ឍសមត្ថភាពធនធានមនុស្ស (យោងតាមរូបភាពទី១០): ភាគរយភាគច្រើនគឺ ៦០% បានវាយតម្លៃថាគម្រោងមានប្រសិទ្ធភាពក្នុងកម្រិតមធ្យម (កម្រិត ៣) ក្នុងការជួយអភិវឌ្ឍជំនាញធនធានមនុស្ស ខណៈ ២០% ថាមានប្រសិទ្ធភាពខ្ពស់ (កម្រិត ៤) និង ២០% ថាមានប្រសិទ្ធភាពទាប (កម្រិត ២)。 ទិន្នន័យនេះបង្ហាញថា ទោះបីជាមានការជួយជ្រោមជ្រែងក៏ដោយ ក៏នៅមានចន្លោះប្រហោង និងតម្រូវការក្នុងការបន្តបណ្តុះបណ្តាលជំនាញបច្ចេកទេស និងការគ្រប់គ្រងបុគ្គលិកស៊ីជម្រៅបន្ថែមទៀត。
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image10.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - កម្រិតនៃការគ្រប់គ្រងអាជីវកម្ម (Business Management) (យោងតាមរូបភាពទី១១ និងទី១២):
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - មុនពេលចូលរួម (រូបភាពទី១១) សហគ្រាសភាគច្រើនមានការគ្រប់គ្រងអាជីវកម្មនៅកម្រិតមូលដ្ឋាន (Lower-level management) រហូតដល់ ៥៣.៣% និងកម្រិតមធ្យម (Middle-level management) មាន ៤៦.៧% ដោយគ្មានសហគ្រាសណាម្នាក់ស្ថិតក្នុងកម្រិតជាន់ខ្ពស់នោះទេ។
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ក្រោយពេលបញ្ចប់ (រូបភាពទី១២) ស្ថានភាពបានផ្លាស់ប្តូរគួរឱ្យកត់សម្គាល់ ដោយសហគ្រាសរហូតដល់ ៨០% បានអភិវឌ្ឍខ្លួនដល់កម្រិតគ្រប់គ្រងមធ្យម, ៦.៧% បានឈានដល់កម្រិតជាន់ខ្ពស់ (Top-level management) និងនៅសល់តែ ១៣.៣% ប៉ុណ្ណោះដែលនៅកម្រិតមូលដ្ឋាន。 ការកើនឡើងនេះបញ្ជាក់ពីភាពចាស់ទុំក្នុងការរៀបចំផែនការ ការគ្រប់គ្រងប្រតិបត្តិការ និងការសម្រេចចិត្តជាយុទ្ធសាស្ត្រ。
]
#v(1mm)

#editorial-block(tag: "ពន្យល់", tag-color: c-teal)[
  មុនពេលចូលរួម អាជីវកម្មជាងពាក់កណ្តាល (៥៣.៣%) គឺគ្រប់គ្រងតាមបែបគ្រួសារ ឬបែបមូលដ្ឋាន (Lower-level) ដោយខ្វះខាតការរៀបចំផែនការច្បាស់លាស់。 ក្រោយពេលទទួលបានការប្រឹក្សា និងបណ្តុះបណ្តាលពីអ្នកជំនាញក្នុងគម្រោង ម្ចាស់អាជីវកម្មបានផ្លាស់ប្តូរផ្នត់គំនិត និងប្រព័ន្ធគ្រប់គ្រង ធ្វើឱ្យ ៨០% អាចកាន់កាប់ការគ្រប់គ្រងកម្រិតមធ្យមបាន ដែលធ្វើឱ្យដំណើរការអាជីវកម្មមានស្តង់ដារ និងមាននិរន្តរភាពជាងមុន。
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - ការប្រើប្រាស់បណ្តាញសង្គម និងបច្ចេកវិទ្យាទីផ្សារ (យោងតាមរូបភាពទី១៣ និងទី១៤): ទោះបីជាការគ្រប់គ្រងមានការរីកចម្រើនក៏ដោយ ការប្រើប្រាស់បណ្តាញសង្គមមុន និងក្រោយមិនមានការប្រែប្រួលគន្លងធំដុំនោះទេ ដែលបង្ហាញថាអាជីវកម្មភាគច្រើនរក្សាការប្រើប្រាស់វេទិកាដដែល ប៉ុន្តែផ្តោតលើគុណភាពនៃការបង្ហោះ៖
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - Facebook នៅតែជាវេទិកាឈានមុខគេប្រើប្រាស់ដោយ ៨៥.៧% (មុន) និង ៨០% (ក្រោយ)。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - Telegram ឈរនៅលំដាប់ទីពីរ ៥៧.១% (មុន) និង ៥៣.៣% (ក្រោយ)。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - TikTok មានអត្រា ៥០% (មុន) និង ៤៦.៧% (ក្រោយ)。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - Instagram មានអត្រា ២៨.៦% (មុន) និង ៣៣.៣% (ក្រោយ)。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - Website មានអត្រា ២១.៤% (មុន) និង ២៦.៧% (ក្រោយ)。
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image22.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)

#v(3mm)
#pagebreak()
#text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-teal)[៤. នវានុវត្តន៍ភាព (Innovativeness) និងការកើនឡើងសមត្ថភាពប្រកួតប្រជែង]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - វិស័យដែលសហគ្រាសបានអនុវត្តនវានុវត្តន៍ (យោងតាមរូបភាពទី១៥):
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image11.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការអភិវឌ្ឍផលិតផល (Product development): ឈរនៅលំដាប់ថ្នាក់លេខ ១ ដោយមានសហគ្រាសរហូតដល់ ១០០% បានអនុវត្ត。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការកែលម្អដំណើរការផលិត (Process improvement): មានចំនួន ៦៦.៧%。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការអនុវត្តបច្ចេកវិទ្យាថ្មី (Technology adoption): មានចំនួន ៥៣.៣%。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការកែលម្អបទពិសោធន៍អតិថិជន (Customer experience): មានចំនួន ៤៦.៧%。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការបណ្តុះបណ្តាលកម្លាំងពលកម្ម (Workforce training): មានចំនួន ២៦.៧%。
]
#v(1mm)

#editorial-block(tag: "ពន្យល់", tag-color: c-teal)[
  ហេតុអ្វីបានជាការអភិវឌ្ឍផលិតផលឡើងដល់ ១០០%? ព្រោះថានៅពេលដែលសហគ្រាសចូលរួមក្នុងកម្មវិធីអភិវឌ្ឍអាជីវកម្ម ចំណុចដំបូងដែលគេត្រូវកែលម្អឱ្យបានលឿនបំផុតគឺ "ផលិតផលរបស់ខ្លួន" ឱ្យមើលទៅស្អាត មានអនាម័យ និងត្រូវចិត្តអតិថិជន。 ចំណែកឯការកែលម្អដំណើរការផលិតមាន ៦៦.៧% គឺទាមទារទុន និងពេលវេលាច្រើនជាង ទើបអត្រាទាបជាងបន្តិច ប៉ុន្តែនៅតែជាភាគរយខ្ពស់ដែលបង្ហាញពីការប្តេជ្ញាចិត្តខ្ពស់。
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - កម្រិតនៃការកែលម្អគុណភាពផលិតផល និងភាពប្រកួតប្រជែង (យោងតាមរូបភាពទី១៦ និងទី១៧):
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image15.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - គុណភាពផលិតផល និងសេវាកម្មត្រូវបានកែលម្អក្នុងកម្រិតមធ្យមចំនួន ៦០% និងកម្រិតខ្ពស់ចំនួន ២០% ដែលបង្ហាញពីការលើកកម្ពស់ស្តង់ដារផលិតផលយ៉ាងពិតប្រាកដ。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - សមត្ថភាពប្រកួតប្រជែងក្នុងឧស្សាហកម្មត្រូវបានលើកកម្ពស់ក្នុងកម្រិតមធ្យមចំនួន ៧៣.៣% ដែលជួយឱ្យសហគ្រាសមានភាពរឹងមាំជាងមុនក្នុងការទប់ទល់នឹងការប្រកួតប្រជែងក្នុងទីផ្សារ。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - ការបម្លែងចំណេះដឹងមកជាការអនុវត្តជាក់ស្តែង (យោងតាមរូបភាពទី១៨): សហគ្រាស ៦០% បានយកនវានុវត្តន៍មកអនុវត្តចូលក្នុងអាជីវកម្មរបស់ខ្លួនក្នុងកម្រិតច្រើន, ១៣.៣% អនុវត្តពេញលេញ និង ២៦.៧% អនុវត្តបានមួយផ្នែក。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - ការយល់ដឹងអំពីនវានុវត្តន៍ (យោងតាមរូបភាពទី១៩ និងទី២០):
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image9.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - មុនចូលរួម (រូបភាពទី១៩) សហគ្រាស ៦០% វាយតម្លៃការយល់ដឹងរបស់ខ្លួនថានៅកម្រិតទាប。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ក្រោយចូលរួម (រូបភាពទី២០) ការយល់ដឹងបានកើនឡើងដល់កម្រិតល្អប្រសើរខ្លាំង (កម្រិត ៤) រហូតដល់ ៧៣.៣% និងកម្រិតល្អ (កម្រិត ៣) ចំនួន ២០% ដែលបង្ហាញពីការផ្លាស់ប្តូរផ្នត់គំនិត និងការយល់ដឹងស៊ីជម្រៅលើសារៈសំខាន់នៃនវានុវត្តន៍。
]
#v(1mm)

#editorial-block(tag: "ពន្យល់", tag-color: c-teal)[
  ភាគរយនេះបញ្ជាក់ពីភាពជោគជ័យនៃការបណ្តុះបណ្តាលការយល់ដឹង (Awareness Creation)。 ដំបូងឡើយ អាជីវកម្មយល់ថា "នវានុវត្តន៍" គឺជារឿងពិបាក ឬជាបច្ចេកវិទ្យាខ្ពស់ដែលពួកគេមិនអាចប៉ះពាល់បាន。 ប៉ុន្តែបន្ទាប់ពីបញ្ចប់គម្រោង ភាគរយដ៏ច្រើនកុះករ (៧៣.៣%) បានយល់ច្បាស់ថា នវានុវត្តន៍គឺជារឿងជិតខ្លួន ដូចជាការកែលម្អការវេចខ្ចប់ ការកែលម្អដំណើរការផលិត និងការប្រើប្រាស់ម៉ាស៊ីន ដែលពួកគេអាចយកមកអនុវត្តបានពិតប្រាកដ。
]
#v(1.5mm)

#v(3mm)
#pagebreak()
#text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-teal)[៥. បញ្ហាប្រឈម និងតម្រូវការគាំទ្រសម្រាប់អនាគត]
#v(1.5mm)
#set par(leading: 6pt, justify: true)
#text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
  ទោះបីជាគម្រោងទទួលបានជោគជ័យ និងបង្កើតផលវិជ្ជមានច្រើនក៏ដោយ ប៉ុន្តែសហគ្រាសនៅតែជួបប្រទះនូវឧបសគ្គសំខាន់ៗដែលទាមទារឱ្យមានការអន្តរាគមន៍បន្ត៖
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - បញ្ហាប្រឈមចម្បងក្នុងការរក្សានិរន្តរភាពនវានុវត្តន៍ (យោងតាមរូបភាពទី២១):
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image3.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - កង្វះធនធានហិរញ្ញវត្ថុ (Financial constraints): ទទួលបានការបារម្ភខ្ពស់បំផុតស្មើនឹង ៦០% ដែលជាឧបសគ្គធំក្នុងការវិនិយោគលើម៉ាស៊ីន និងបច្ចេកវិទ្យាថ្មីៗ。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - កង្វះធនធានមនុស្សមានជំនាញ (Lack of skilled workforce): មានចំនួន ៦០% ដូចគ្នា ដែលរារាំងដល់ការពង្រីកសមត្ថភាពអាជីវកម្ម。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការប្រកួតប្រជែងក្នុងទីផ្សារ (Market competition): មានចំនួន ៤៦.៧%。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ឧបសគ្គបច្ចេកវិទ្យា និងបញ្ហាច្បាប់/បទប្បញ្ញត្តិ (Technological & Regulatory issues): មានចំនួន ២៦.៧% រៀងៗខ្លួន。
]
#v(1mm)

#editorial-block(tag: "ពន្យល់", tag-color: c-teal)[
  ភាគរយខ្ពស់ទាំងពីរនេះគឺជា "ចំណុចគន្លឹះរារាំង (Bottlenecks)" ដ៏ធំបំផុតរបស់ SMEs នៅកម្ពុជា。 ទោះបីជាសហគ្រាសចង់បង្កើតថ្មី ចង់ទិញម៉ាស៊ីនទំនើប ឬពង្រីកទីផ្សារយ៉ាងណាក៏ដោយ ក៏ពួកគេគ្មានទុនគ្រប់គ្រាន់ (៦០%) និងខ្វះបុគ្គលិកដែលមានជំនាញបច្ចេកទេសច្បាស់លាស់ដើម្បីដំណើរការម៉ាស៊ីនទាំងនោះ (៦០%) ដែរ。 នេះជាមូលហេតុដែលធ្វើឱ្យតម្រូវការជំនួយផ្នែកហិរញ្ញវត្ថុ និងបណ្តុះបណ្តាលបន្ថែមនៅតែមានអត្រាខ្ពស់ខ្លាំងនៅក្នុងគម្រោងដំណាក់កាលបន្ទាប់。
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  - តម្រូវការជំនួយ និងការគាំទ្រនាពេលអនាគត (យោងតាមរូបភាពទី២២):
]
#v(1mm)

#align(center)[
  #box(stroke: 0.5pt + c-line, radius: 3pt, inset: 2mm, fill: c-paper)[
    #image("../assets/figures/image7.png", width: 88%, fit: "contain")
  ]
]
#v(1.5mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - វគ្គបណ្តុះបណ្តាល និងសិក្ខាសាលាបន្ថែម (Further training and workshops): ត្រូវការខ្ពស់ជាងគេគឺ ៨០% នៃសហគ្រាសសរុប。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ឱកាសបង្កើតបណ្តាញទំនាក់ទំនង (Networking opportunities): មានចំនួន ៦៦.៧% ដើម្បីស្វែងរកដៃគូអាជីវកម្មថ្មីៗ。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការគាំទ្រផ្នែកហិរញ្ញវត្ថុ (Financial assistance): មានចំនួន ៥៣.៣%。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការចូលដល់បច្ចេកវិទ្យាថ្មីៗ (Access to new technologies): មានចំនួន ៣៣.៣%。
]
#v(1mm)
#set par(leading: 5.8pt, justify: true)
#text(font: font-khmer-body, size: 8.3pt, fill: c-charcoal)[
  ·         - ការគាំទ្រផ្នែកគោលនយោបាយ (Policy advocacy): មានចំនួន ២៦.៧%。
]
#v(1mm)

#v(3mm)
#pagebreak()
#text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-teal)[៤.៦ ការសំយោគលទ្ធផល និងសេចក្តីសន្និដ្ឋាន]
#v(1.5mm)
#set par(leading: 6pt, justify: true)
#text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
  គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ រដូវកាលទី១ ទទួលបានជោគជ័យយ៉ាងត្រចះត្រចង់ ក្នុងការបណ្តុះផ្នត់គំនិតនវានុវត្តន៍ និងការកសាងសមត្ថភាពសហគ្រាសធុនតូច និងមធ្យម (SMEs) នៅថ្នាក់មូលដ្ឋាន។ ទិន្នន័យបានបង្ហាញឱ្យឃើញពីការផ្លាស់ប្តូរជាវិជ្ជមានលើគ្រប់វិមាត្រ៖ ការពង្រីកបណ្តាញដៃគូ, ការធ្វើទំនើបកម្មខ្សែច្រវាក់ផលិតកម្ម, និងការកសាងកម្រិតគ្រប់គ្រងដែលមានរចនាសម្ព័ន្ធ។ ទោះជាយ៉ាងណា ដើម្បីធានានិរន្តរភាព និងការលូតលាស់នៃសហគ្រាសទាំងនេះ ការគាំទ្រជាបន្តផ្នែកហិរញ្ញវត្ថុ ជំនាញបច្ចេកវិទ្យា និងការភ្ជាប់ទីផ្សារ គឺជាកត្តាចាំបាច់ដែលមិនអាចខ្វះបានសម្រាប់គម្រោងដំណាក់កាលបន្ទាប់។
]
#v(1.5mm)
