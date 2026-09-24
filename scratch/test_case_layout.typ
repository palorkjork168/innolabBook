#import "../styles.typ": *
#import "../components/photos.typ": photos

#set page(
  paper: "a4",
  margin: (top: 23mm, bottom: 20mm, left: 22mm, right: 18mm),
  fill: colors.white,
)
#set text(font: fonts.main, size: 9.5pt, fill: colors.text, lang: "km")
#set par(leading: 6.5pt, justify: false)

// Test Case Study Layout with Portrait Photo beside Business Background
#let test-case-study(
  number,
  name,
  business,
  photo-id: none,
  source-note: none,
  background: [],
  innovation: [],
) = {
  // Case Header
  grid(
    columns: (22mm, 1fr),
    gutter: 6mm,
    align: horizon,
    [
      #text(font: fonts.display, size: 40pt, weight: 800, fill: colors.primary)[#number]
    ],
    [
      #text(font: fonts.display, size: 8pt, weight: 700, fill: colors.sand, tracking: 1.5pt)[
        SME CASE STUDY · INNOLAB KAMPONG THOM
      ]
      #v(1.5mm)
      #text(font: fonts.main, size: 20pt, weight: 700, fill: colors.primary)[
        #name
      ]
      #v(1.5mm)
      #text(font: fonts.main, size: 10pt, weight: 600, fill: colors.gray)[
        #business
      ]
    ],
  )

  v(5mm)
  line(length: 100%, stroke: 0.6pt + colors.line)
  v(5mm)

  // Photo beside Business Background
  let photo-obj = if photo-id != none { photos.at(photo-id, default: none) } else { none }
  let photo-src = if photo-obj != none { photo-obj.at("src") } else { none }
  let photo-tag = if photo-obj != none { photo-obj.at("tag", default: none) } else { none }

  grid(
    columns: (64mm, 1fr),
    gutter: 7mm,
    align: top,
    [
      #if photo-src != none [
        #block(
          width: 100%,
          height: 94mm, // 64mm : 94mm is approx 2:3 portrait ratio!
          radius: 3pt,
          clip: true,
          stroke: 0.6pt + colors.line,
        )[
          #image(photo-src, width: 100%, height: 100%, fit: "cover")
          #if photo-tag != none [
            #place(top + left, dx: 3mm, dy: 3mm)[
              #block(
                fill: colors.primary.transparentize(15%),
                radius: 2pt,
                inset: (x: 5pt, y: 2.5pt),
                stroke: 0.5pt + colors.sand,
              )[
                #text(font: fonts.display, size: 7pt, weight: 700, fill: colors.sand, tracking: 0.8pt)[
                  #upper(photo-tag)
                ]
              ]
            ]
          ]
        ]
      ]
    ],
    [
      #text(font: fonts.display, size: 8pt, weight: 700, fill: colors.gray, tracking: 1.5pt)[
        BUSINESS BACKGROUND
      ]
      #v(2.5mm)
      #background
    ],
  )

  v(6mm)
  line(length: 28mm, stroke: 1.5pt + colors.sand)
  v(3.5mm)

  text(font: fonts.display, size: 8.5pt, weight: 700, fill: colors.primary, tracking: 1.5pt)[
    INNOVATION JOURNEY
  ]
  v(2.5mm)

  innovation

  if source-note != none [
    #v(5mm)
    #block(
      width: 100%,
      fill: colors.paper,
      radius: 2pt,
      stroke: (left: 3pt + colors.sand, rest: 0.6pt + colors.line),
      inset: (x: 5mm, y: 3.5mm),
    )[
      #text(font: fonts.main, size: 8.5pt, weight: 700, fill: colors.primary)[
        កំណត់សម្គាល់ប្រភព
      ]
      #v(1.5mm)
      #text(font: fonts.main, size: 8pt, fill: colors.gray)[
        #source-note
      ]
    ]
  ]
}

#test-case-study(
  "05",
  "លោក សៅ ប៊ុនអ៊ូ",
  "អាហារដ្ឋាន តាអូដំរីចៅស៊ឹងសែន",
  photo-id: "23",
  background: [
    លោក សៅ ប៊ុនអ៊ូ ជាអតីតយុទ្ធជន និងមាន បទពិសោធន៍ ជាច្រើនទសវត្សរ៍ ក្នុងការដឹកនាំ អាហារដ្ឋាន តាអូដំរីចៅស៊ឹងសែន។ អាហារដ្ឋាន មានមុខម្ហូប ប្រចាំហាង ដែលឯកសារប្រភព ហៅថា «ស៊ុបក្រចកជើងគោ»។
    
    ពីបទពិសោធន៍ ក្នុងការបម្រើ អតិថិជន លោកបាន មើលឃើញ ឱកាស ក្នុងការកែច្នៃ មុខម្ហូបនេះ ទៅជាផលិតផល ដែលអាច យកទៅបរិភោគ នៅក្រៅអាហារដ្ឋាន។
  ],
  innovation: [
    គំនិតនវានុវត្តន៍ គឺការកែច្នៃ ស៊ុបក្រចកជើងគោ ទៅជាអាហារ ដែលចម្អិនរួច និងអាច កម្តៅឡើងវិញ មុនបរិភោគ។
    
    តាមរយៈ InnoLab លោកបានបន្ត កែលម្អ ការវេចខ្ចប់ និងការរៀបចំ ផលិតផល សម្រាប់ទីផ្សារ។
    
    ការវេចខ្ចប់ ត្រូវបានគិត ដើម្បីពន្យារ អាយុកាល រក្សាទុក និងសម្រួល ការដឹកជញ្ជូន ទៅទីតាំងឆ្ងាយ ដោយរក្សា រសជាតិដើម។
    
    គំនិតនេះ បន្ថែម មុខម្ហូប ដែលត្រូវការ ការចម្អិន ច្រើនដំណាក់កាល ទៅជា អាហារងាយស្រួល ដែលឈានទៅកាន់ទីផ្សារទំនើប។
  ],
)

#pagebreak()

#test-case-study(
  "06",
  "លោក អុល ចំណាប់",
  "បច្ចេកវិទ្យាគ្រឿងយន្ត 007 AI",
  photo-id: "24",
  background: [
    លោក អុល ចំណាប់ បានបញ្ចប់ ការសិក្សា ផ្នែកមេកានិច និងអគ្គិសនី។ លោកក៏មាន បទពិសោធន៍ សិក្សា និងធ្វើការ ជាមួយ ប្រព័ន្ធស្វ័យប្រវត្តិ ក្នុងអំឡុងពេល ធ្វើការនៅប្រទេសកូរ៉េ។ ក្រោយត្រឡប់ មកកម្ពុជា លោកបានបង្កើត បច្ចេកវិទ្យា គ្រឿងយន្ត 007 AI នៅក្រុងស្ទឹងសែន ខេត្តកំពង់ធំ។
    
    គោលបំណង គឺផលិត គ្រឿងចក្រ ដែលសមស្រប នឹងការងារ របស់កសិករ ក្នុងស្រុក និងកាត់បន្ថយ ពលកម្មដោយដៃ។ ត្រាក់ទ័រ គំរូដំបូង ត្រូវបានបង្កើត នៅឆ្នាំ២០១៤។ បន្ទាប់មក ផលិតកម្ម បានពង្រីក ទៅជាត្រាក់ទ័រ ប្រមាណ ១០ ម៉ូដែល ដែលត្រូវបាន សាកល្បង នៅវាលស្រែ ជាក់ស្តែង។
  ],
  innovation: [
    ក្នុង InnoLab លោក អុល ចំណាប់ បានបន្ត អភិវឌ្ឍ រចនាសម្ព័ន្ធ ត្រាក់ទ័រជំនាន់ថ្មី ដោយប្រើ ទិន្នន័យ ពីវាលស្រែ និងមតិកែលម្អ របស់កសិករ។
    
    ការកែលម្អ ផ្តោតលើ ប្រសិទ្ធភាពម៉ាស៊ីន ការបែងចែកទម្ងន់ និងការកែប្រែ ផ្នែករាស់ និងផ្លាស់។
    
    គោលបំណង គឺកាត់បន្ថយ ថាមពល និងប្រេងឥន្ធនៈ ដែលប្រើ ព្រមទាំងបង្កើន ផ្ទៃដី ដែលអាច រាស់បាន ក្នុងមួយម៉ោង។
  ],
)
