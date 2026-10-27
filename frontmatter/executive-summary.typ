#import "../styles.typ": *
#import "../components/catalogue.typ": *
#import "../components/report-elements.typ": *

#page(
  paper: "a4",
  margin: (top: 20mm, bottom: 20mm, left: 22mm, right: 22mm),
  fill: c-paper,
  header: none,
  footer: none,
)[
  #rect(fill: c-teal, inset: (x: 4mm, y: 2mm), radius: 2pt)[
    #text(font: font-khmer-display, size: 8pt, weight: "bold", fill: c-sand)[សង្ខេបរបាយការណ៍គម្រោង]
  ]
  #v(1.5mm)
  #text(font: font-khmer-display, size: 18pt, weight: "bold", fill: c-teal)[សេចក្តីសង្ខេបប្រតិបត្តិ (Executive Summary)]
  #v(1mm)
  #line(length: 100%, stroke: 0.75pt + c-sand)
  #v(2.5mm)

  #block(
    fill: c-white,
    radius: 3pt,
    inset: (x: 5mm, y: 4mm),
    stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line),
    width: 100%,
  )[
    #set par(leading: 6.8pt, justify: true)
    #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
      *គម្រោង មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ (InnoLab Kampong Thom Cohort 1)* គឺជាគំនិតផ្តួចផ្តើមគំរូថ្នាក់ក្រោមជាតិដំបូងបង្អស់ ដែលអនុវត្តដោយ *ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)* ក្នុងគោលដៅប្រែក្លាយសក្តានុពលសេដ្ឋកិច្ចក្នុងស្រុកទៅជាកម្លាំងប្រកួតប្រជែងជាក់ស្តែង ស្របតាមយុទ្ធសាស្ត្របញ្ចកោណ ដំណាក់កាលទី១ របស់រាជរដ្ឋាភិបាលកម្ពុជា។
    ]
    #v(2mm)
    #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
      គម្រោងត្រូវបានរៀបចំឡើងជាដំណើរការប្រទាក់ក្រឡាគ្នាចំនួន ៧ ដំណាក់កាល ដោយបានទាក់ទាញសហគ្រិនក្នុងខេត្តដាក់ពាក្យសរុប *១១១ នាក់*។ ក្រោយដំណើរការចុះជួប ផ្ទៀងផ្ទាត់ និងសម្ភាសន៍ដោយផ្ទាល់នៅមូលដ្ឋាន គណៈកម្មការបានជ្រើសរើសសហគ្រាសឆ្នើមចំនួន *២០ សហគ្រាស* មកពីគ្រប់ ៨ ស្រុក-ក្រុង ក្នុងខេត្តកំពង់ធំ តំណាងឱ្យ ៤ វិស័យស្នូល៖ កសិកម្ម និងកសិ-ឧស្សាហកម្ម (៤០%), ផលិតកម្មចំណីអាហារ (២៦.៧%), សិប្បកម្ម (២០%), និងទេសចរណ៍-បដិសណ្ឋារកិច្ច (១៣.៣%)។
    ]
  ]

  #v(2.5mm)

  #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[សមិទ្ធផលគន្លឹះរួមមាន៖]
  #v(1.5mm)

  #let exec-card(title, body) = block(
    fill: c-white,
    radius: 3pt,
    inset: (x: 4mm, y: 2.8mm),
    stroke: 0.5pt + c-line,
    width: 100%,
  )[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[#title]\
    #v(0.6mm)
    #set par(leading: 5.8pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[#body]
  ]

  #grid(
    columns: (1fr, 1fr),
    gutter: 2.8mm,
    exec-card("១. ការស្ថាបនាសមត្ថភាពស៊ីជម្រៅ", [សហគ្រិនទាំង ២០ ទទួលបានការបណ្តុះបណ្តាល ៣ វគ្គធំៗ (Design Thinking, Customer Journey, Project Management), ទស្សនកិច្ចដកពិសោធន៍ InnoTour រយៈពេល ២ ថ្ងៃនៅសៀមរាប, និងការប្រឹក្សាបង្វឹក ១-ទល់-១ យ៉ាងហ្មត់ចត់។]),
    exec-card("២. ការផ្លាស់ប្តូរផ្នត់គំនិត និងជំនាញ", [ការយល់ដឹងលើ Design Thinking បានកើនពីពិន្ទុមធ្យម ២.៣៧ ដល់ ៣.៨៤/៤; ការយល់ដឹងពីដំណើរអតិថិជនកើនពី ២.៦៥ ដល់ ៣.៧៥/៤; និងការគ្រប់គ្រងគម្រោងកើនពី ២.៥៣ ដល់ ៣.៨៨/៤។]),
    exec-card("៣. នវានុវត្តន៍ជាក់ស្តែង ១០០%", [សហគ្រាសទាំងអស់ (១០០%) បានបង្កើតផលិតផលថ្មី ឬកែលម្អផលិតផលចាស់, ៦៦.៧% កែលម្អដំណើរការផលិត, និង ៥៣.៣% ទទួលយកបច្ចេកវិទ្យាថ្មី។]),
    exec-card("៤. ការពង្រីកទីផ្សារ និងទំហំអាជីវកម្ម", [សហគ្រាសកម្រិតខ្នាតមធ្យមបានកើនពី ១៣.៣% ទៅ ២០%, ដៃគូយុទ្ធសាស្ត្រពី ៧–១០ ដៃគូកើនដល់ ២៣.១%, និងការផ្សព្វផ្សាយលើបណ្តាញសង្គមកម្រិតខ្ពស់បំផុតឡើងដល់ ៤០%។]),
  )

  #v(2.5mm)

  #block(
    fill: c-white,
    radius: 3pt,
    inset: (x: 4.5mm, y: 2.8mm),
    stroke: (left: 3pt + c-sand, rest: 0.5pt + c-line),
    width: 100%,
  )[
    #text(font: font-khmer-display, size: 8.2pt, weight: "bold", fill: c-teal)[៥. ទិវាប្រកួតប្រជែងចុងក្រោយ (Final Pitch Day)]\
    #v(0.6mm)
    #set par(leading: 5.8pt, justify: true)
    #text(font: font-khmer-body, size: 7.8pt, fill: c-charcoal)[
      បានប្រព្រឹត្តទៅនាថ្ងៃទី ២១ ខែមីនា ឆ្នាំ២០២៦ ដោយមានអ្នកចូលរួម ១៦៣ នាក់ និងបានស្វែងរកឃើញជ័យលាភីកំពូលទាំង ៣ ទទួលបានប្រាក់រង្វាន់ពូជសរុប ៤៨,០០០,០០០ រៀល (១៦ លានរៀលក្នុងមួយសហគ្រាស) ព្រមទាំងពានរង្វាន់ពិសេស ២ ទៀត។
    ]
  ]

  #place(top + left, dx: 0mm, dy: 248mm)[
    #line(length: 100%, stroke: 0.5pt + c-line)
  ]
  #place(top + left, dx: 0mm, dy: 253mm)[
    #catalogue-folio(
      "iv",
      header-right: "INNOLAB KAMPONG THOM · EXECUTIVE SUMMARY",
      side: "right",
      width: 100%,
    )
  ]
]
