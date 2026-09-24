#import "../styles.typ": *

#set text(font: fonts.main)

#let test-chapter-title(
  number,
  title,
  english: none,
  intro: none,
  photo: auto,
  caption: auto,
  focus: auto,
) = {
  // ------------------------------------------------------------
  // PAGE 1: LEFT OPENER (Deep Teal #114554)
  // ------------------------------------------------------------
  page(
    paper: "a4",
    margin: 0mm,
    fill: colors.primary,
    header: none,
    footer: none,
  )[
    // TOC dynamic anchor
    #place(top + left)[#metadata(number) #label("ch-" + str(number))]

    // Subtle background decorative tint
    #place(top + right, dx: 25mm, dy: -30mm)[
      #circle(
        radius: 80mm,
        fill: colors.primary.lighten(8%).transparentize(85%),
      )
    ]

    // Dotted trajectory line at bottom
    #place(bottom + left, dx: 0mm, dy: -16mm)[
      #block(width: 100%, height: 6mm)[
        #line(
          length: 100%,
          stroke: (
            paint: colors.sand.transparentize(70%),
            thickness: 0.8pt,
            dash: "densely-dashed",
          ),
        )
        // Milestone circle on the line at right margin
        #place(top + right, dx: -26mm, dy: -2.2mm)[
          #circle(
            radius: 2.5mm,
            stroke: 1.5pt + colors.sand,
            fill: colors.primary,
          )
        ]
      ]
    ]

    // Main Content Group
    #place(top + left, dx: 26mm, dy: 38mm)[
      #block(width: 158mm)[
        // Top label badge
        #text(
          font: fonts.display,
          size: 10pt,
          weight: 700,
          fill: colors.sand,
          tracking: 3pt,
        )[
          CHAPTER #number · INNOLAB KAMPONG THOM
        ]

        #v(18mm)

        // Huge Chapter Numeral
        #text(
          font: fonts.display,
          size: 130pt,
          weight: 800,
          fill: colors.white,
        )[
          #number
        ]

        #v(4mm)

        // Refined Sand Accent Bar
        #line(
          length: 40mm,
          stroke: (
            paint: colors.sand,
            thickness: 2.5pt,
          ),
        )

        #v(10mm)

        // Khmer Title (white, bold)
        #text(
          font: fonts.main,
          size: 30pt,
          weight: 700,
          fill: colors.white,
          spacing: 130%,
        )[
          #title
        ]

        // English Subtitle
        #if english != none [
          #v(5mm)
          #text(
            font: fonts.display,
            size: 14pt,
            weight: 600,
            fill: colors.sage,
            tracking: 2pt,
          )[
            #upper(english)
          ]
        ]
      ]
    ]

    // Bottom Institutional Label
    #place(bottom + left, dx: 26mm, dy: -24mm)[
      #grid(
        columns: (auto, auto),
        gutter: 3mm,
        align: horizon,
        text(
          font: fonts.display,
          size: 8.5pt,
          weight: 600,
          fill: colors.sand,
          tracking: 2pt,
        )[
          SEASON 1 / 2025–2026
        ],
        text(
          font: fonts.main,
          size: 8.5pt,
          fill: colors.sage.transparentize(30%),
        )[
          · របាយការណ៍បូកសរុបលទ្ធផលគម្រោង
        ]
      )
    ]
  ]

  // ------------------------------------------------------------
  // PAGE 2: RIGHT INTRO PAGE (Light Paper #F7F7F3)
  // ------------------------------------------------------------
  page(
    paper: "a4",
    margin: (top: 24mm, bottom: 22mm, left: 24mm, right: 22mm),
    fill: colors.paper,
    header: none,
    footer: none,
  )[
    // Top Section Bar
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      text(
        font: fonts.display,
        size: 8.5pt,
        weight: 700,
        fill: colors.sand,
        tracking: 2pt,
      )[
        CHAPTER #number OVERVIEW
      ],
      text(
        font: fonts.main,
        size: 8.5pt,
        weight: 600,
        fill: colors.gray,
      )[
        ទិដ្ឋភាពទូទៅនៃជំពូក
      ]
    )
    #v(2.5mm)
    #line(length: 100%, stroke: 0.75pt + colors.line)

    #v(7mm)

    // Intro Heading
    #text(
      font: fonts.main,
      size: 17pt,
      weight: 700,
      fill: colors.primary,
    )[
      សេចក្តីផ្តើម និងខ្លឹមសារសង្ខេប
    ]

    #v(4mm)

    // Chapter Intro Paragraph
    #if intro != none {
      block(
        width: 100%,
        stroke: (left: 3pt + colors.sand),
        inset: (left: 5mm, y: 1.5mm),
      )[
        #text(
          font: fonts.main,
          size: 10.5pt,
          fill: colors.text,
          weight: 400,
          spacing: 140%,
        )[
          #intro
        ]
      ]
    }

    #v(7mm)

    // Image / Visual Area
    #let default-src = if number in ("02", "04", "06", "07") {
      "../assets/photos/DSC_8464.jpg"
    } else {
      "../assets/photos/DSC_8462.jpg"
    }
    #let actual-src = if photo == auto { default-src } else { photo }
    
    #let default-caption = if number == "01" {
      "រូបភាព៖ សកម្មភាពគម្រោង InnoLab Kampong Thom រដូវកាលទី១"
    } else if number == "02" {
      "រូបភាព៖ កិច្ចពិភាក្សា និងការកំណត់បញ្ហាប្រឈមរបស់សហគ្រាសក្នុងមូលដ្ឋាន"
    } else if number == "03" {
      "រូបភាព៖ ការចុះអនុវត្ត និងដំណើរការកម្មវិធី InnoLab ជាក់ស្តែង"
    } else if number == "04" {
      "រូបភាព៖ សកម្មភាពបណ្តុះបណ្តាល ការណែនាំ និងការកសាងសមត្ថភាពសហគ្រាស"
    } else if number == "05" {
      "រូបភាព៖ លទ្ធផលជាក់ស្តែងនៃការកែលម្អផលិតផល និងស្តង់ដារសហគ្រាស"
    } else if number == "06" {
      "រូបភាព៖ សហគ្រាសធុនតូច និងមធ្យមទាំង ២០ ក្នុងខេត្តកំពង់ធំ"
    } else if number == "07" {
      "រូបភាព៖ ទិវា Final Pitching Day និងការប្រកាសជ័យលាភីសហគ្រាស"
    } else {
      "រូបភាព៖ ទិសដៅបន្ត និងការកសាងប្រព័ន្ធអេកូឡូស៊ីនវានុវត្តន៍"
    }
    #let actual-caption = if caption == auto { default-caption } else { caption }

    #block(
      width: 100%,
      height: 68mm,
      radius: 3pt,
      clip: true,
      stroke: 0.6pt + colors.line,
    )[
      #image(actual-src, width: 100%, height: 100%, fit: "cover")
    ]
    
    #v(2mm)
    
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      text(
        font: fonts.main,
        size: 7.5pt,
        fill: colors.gray,
      )[
        #actual-caption
      ],
      text(
        font: fonts.display,
        size: 7.5pt,
        fill: colors.gray,
        weight: 600,
        tracking: 1pt,
      )[
        INNOLAB ARCHIVE · 2025
      ]
    )

    #v(6mm)

    // Structured summary / Key focus card
    #let default-focus = if number == "01" {
      "ការស្វែងយល់ពីបរិបទគម្រោង ចក្ខុវិស័យ និងគោលបំណងយុទ្ធសាស្ត្រនៃការបង្កើត InnoLab"
    } else if number == "02" {
      "ការវិភាគលើបញ្ហាប្រឈមជាប្រព័ន្ធ ឱកាសទីផ្សារ និងតម្រូវការគាំទ្រសហគ្រាសក្នុងមូលដ្ឋាន"
    } else if number == "03" {
      "ដំណើរការអនុវត្តជាជំហានៗ ចាប់ពីការជ្រើសរើស ការបណ្តុះបណ្តាល រហូតដល់ការតាមដាន"
    } else if number == "04" {
      "វិធីសាស្ត្របណ្តុះបណ្តាល ការណែនាំផ្ទាល់ និងការកសាងសមត្ថភាពនវានុវត្តន៍ជាក់ស្តែង"
    } else if number == "05" {
      "ទិន្នន័យវាយតម្លៃលទ្ធផល ការប្រៀបធៀបមុន-ក្រោយ និងការផ្លាស់ប្តូរសមត្ថភាពសហគ្រាស"
    } else if number == "06" {
      "ទិន្នន័យស៊ីជម្រៅនៃករណីសិក្សាសហគ្រាសទាំង ២០ ក្នុងវិស័យកសិកម្ម កែច្នៃ និងសិប្បកម្ម"
    } else if number == "07" {
      "លទ្ធផល Final Pitch ជ័យលាភី ការវាយតម្លៃរបស់គណៈកម្មការ និងមេរៀនបទពិសោធន៍"
    } else {
      "ផែនការបន្តសម្រាប់រដូវកាលទី២ និងអនុសាសន៍គោលនយោបាយសម្រាប់គាំទ្រសហគ្រាស"
    }
    #let actual-focus = if focus == auto { default-focus } else { focus }

    #block(
      width: 100%,
      fill: colors.white,
      radius: 3pt,
      inset: (x: 5mm, y: 4.5mm),
      stroke: 0.6pt + colors.line,
    )[
      #grid(
        columns: (auto, 1fr),
        gutter: 4mm,
        align: horizon,
        block(
          fill: colors.sage,
          radius: 2pt,
          inset: (x: 2.5mm, y: 1.5mm),
          text(
            font: fonts.display,
            size: 8pt,
            weight: 700,
            fill: colors.primary,
            tracking: 1.5pt,
          )[
            KEY FOCUS
          ]
        ),
        text(
          font: fonts.main,
          size: 8.5pt,
          fill: colors.text,
        )[
          #actual-focus
        ]
      )
    ]
  ]
}

#test-chapter-title(
  "01",
  "ទិដ្ឋភាពទូទៅ និងអំពីគម្រោង",
  english: "PROJECT OVERVIEW",
  intro: [
    ជំពូកនេះបង្ហាញ បរិបទខេត្តកំពង់ធំ សារៈសំខាន់នៃនវានុវត្តន៍ អត្តសញ្ញាណ និងចក្ខុវិស័យ របស់ InnoLab Kampong Thom ព្រមទាំងរចនាសម្ព័ន្ធការអនុវត្ត និងរូបភាពសង្ខេប នៃរដូវកាលទី១។
  ],
)

// Body starts on next page
#section-title("១.១ អំពីខេត្តកំពង់ធំ និងសនិទាន")
ខេត្តកំពង់ធំ ត្រូវបានឯកសារគម្រោងពិពណ៌នាថា ជាតំបន់មានសារៈសំខាន់ សម្រាប់សន្តិសុខស្បៀងក្នុងស្រុក ផលិតកម្មសិប្បកម្ម និងការតភ្ជាប់ភូមិសាស្ត្រ របស់ប្រទេសកម្ពុជា។
