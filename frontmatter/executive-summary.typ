#import "../styles.typ": *
#import "../components/catalogue.typ": *
#import "../components/report-elements.typ": *

#metadata("executive-summary") <fm-exec>

#page(
  paper: "a4",
  margin: (top: 22mm, bottom: 22mm, left: 22mm, right: 22mm),
  fill: c-paper,
  header: none,
  footer: none,
)[
  #v(2mm)
  #align(center)[
    #text(font: font-khmer-display, size: 20pt, weight: "bold", fill: c-teal)[សេចក្តីសង្ខេបប្រតិបត្តិ]
  ]
  #v(3mm)
  #line(length: 100%, stroke: 1.2pt + c-sand)
  #v(5mm)

  // Introductory Text - Pure typography directly on c-paper, Zero white boxes!
  #block(width: 100%)[
    #set par(leading: 7.5pt, justify: true)
    #text(font: font-khmer-body, size: 9.2pt, fill: c-charcoal)[
      *គម្រោង មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ រដូវកាលទី១ (InnoLab Kampong Thom)* គឺជាគំនិតផ្តួចផ្តើមគំរូថ្នាក់ក្រោមជាតិដំបូងបង្អស់ ដែលអនុវត្តដោយ *ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)* ក្នុងគោលដៅប្រែក្លាយសក្តានុពលសេដ្ឋកិច្ចក្នុងស្រុកទៅជាកម្លាំងប្រកួតប្រជែងជាក់ស្តែង ស្របតាមយុទ្ធសាស្ត្របញ្ចកោណ ដំណាក់កាលទី១ របស់រាជរដ្ឋាភិបាលកម្ពុជា។
    ]
    #v(3mm)
    #text(font: font-khmer-body, size: 9pt, fill: c-charcoal)[
      គម្រោងត្រូវបានរៀបចំឡើងជាដំណើរការប្រទាក់ក្រឡាគ្នាចំនួន ៧ ដំណាក់កាល ដោយបានទាក់ទាញសហគ្រិនក្នុងខេត្តដាក់ពាក្យសរុប ១១១ នាក់ ពីក្នុងខេត្តកំពង់ធំ។ ក្រោយដំណើរការចុះជួប ផ្ទៀងផ្ទាត់ និងសម្ភាសន៍ដោយផ្ទាល់នៅមូលដ្ឋាន គណៈកម្មការបានជ្រើសរើសសហគ្រាសឆ្នើមចំនួន ២០ សហគ្រាស មកពីគ្រប់ ៨ ស្រុក-ក្រុង ក្នុងខេត្តកំពង់ធំ តំណាងឱ្យ ៤ វិស័យស្នូល៖ កសិកម្ម និងកសិ-ឧស្សាហកម្ម (៤០%), ផលិតកម្មចំណីអាហារ (២៦.៧%), សិប្បកម្ម (២០%), និងទេសចរណ៍-បដិសណ្ឋារកិច្ច (១៣.៣%)។
    ]
  ]

  #v(5mm)
  #line(length: 100%, stroke: 0.8pt + c-sand)
  #v(4mm)

  #text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-teal)[សមិទ្ធផលគន្លឹះរួមមាន៖]
  #v(3mm)

  // Helper for key achievement item (Zero white box, clean hairline dividers)
  #let achievement-row(num, title, body) = block(
    width: 100%,
    inset: (y: 2.2mm),
    stroke: (bottom: 0.4pt + c-line),
  )[
    #grid(
      columns: (auto, 1fr),
      gutter: 3.5mm,
      align: top,
      [
        #rect(fill: c-teal, radius: 2pt, inset: (x: 2.2mm, y: 1mm))[
          #text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-sand)[#num]
        ]
      ],
      [
        #text(font: font-khmer-display, size: 9pt, weight: "bold", fill: c-teal)[#title]\
        #v(1mm)
        #set par(leading: 6.5pt, justify: true)
        #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[#body]
      ]
    )
  ]

  #achievement-row("០១", "ការស្ថាបនាសមត្ថភាពស៊ីជម្រៅ", [សហគ្រិនទាំង ២០ ទទួលបានការបណ្តុះបណ្តាល ៣ វគ្គធំៗ (Design Thinking, Customer Journey, Project Management), ដំណើរទស្សនកិច្ច InnoTour រយៈពេល ២ ថ្ងៃនៅសៀមរាប, និងការប្រឹក្សាបង្វឹកដោយផ្ទាល់ ឬអនឡាញ ១-ទល់-១ យ៉ាងហ្មត់ចត់។])

  #achievement-row("០២", "ការផ្លាស់ប្តូរផ្នត់គំនិត និងជំនាញ", [ការយល់ដឹងលើនវានុវត្តន៍ បានកើនពីពិន្ទុមធ្យម ២.៣៧ ដល់ ៣.៨៤/៤; ការយល់ដឹងពីដំណើរអតិថិជនកើនពី ២.៦៥ ដល់ ៣.៧៥/៤; និងការគ្រប់គ្រងគម្រោងកើនពី ២.៥៣ ដល់ ៣.៨៨/៤។])

  #achievement-row("០៣", "នវានុវត្តន៍ជាក់ស្តែង", [សហគ្រាសទាំង ២០ រូប (១០០%) បានបង្កើតផលិតផលថ្មី ឬកែលម្អផលិតផលចាស់, ៦៦.៧% កែលម្អដំណើរការផលិត, និង ៥៣.៣% ទទួលយកបច្ចេកវិទ្យាថ្មី។])

  #achievement-row("០៤", "ការពង្រីកទីផ្សារ និងទំហំអាជីវកម្ម", [សហគ្រាសកម្រិតខ្នាតមធ្យមបានកើនពី ១៣.៣% ទៅ ២០%, ដៃគូយុទ្ធសាស្ត្រពី ៧–១០ ដៃគូកើនដល់ ២៣.១%, និងការផ្សព្វផ្សាយលើបណ្តាញសង្គមកម្រិតខ្ពស់បំផុតឡើងដល់ ៤០%។])

  #achievement-row("០៥", "កម្មវិធីប្រកួតប្រជែងផ្តាច់ព្រ័ត្រ", [បានប្រព្រឹត្តទៅនាថ្ងៃទី ២១ ខែមីនា ឆ្នាំ២០២៦ ដោយមានអ្នកចូលរួម ១៦៣ នាក់ និងបានស្វែងរកឃើញជ័យលាភីកំពូលទាំង ៣ ទទួលបានប្រាក់រង្វាន់ពូជសរុប ៤៨,០០០,០០០ រៀល (១៦ លានរៀលក្នុងមួយសហគ្រាស) ព្រមទាំងពានរង្វាន់ពិសេស ២ ទៀត។])

  #place(top + left, dx: 0mm, dy: 246mm)[
    #line(length: 100%, stroke: 0.5pt + c-line)
  ]
  #place(top + left, dx: 0mm, dy: 250mm)[
    #catalogue-folio(
      "v",
      header-right: "INNOLAB KAMPONG THOM · EXECUTIVE SUMMARY",
      side: "right",
      width: 100%,
    )
  ]
]
