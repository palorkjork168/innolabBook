#import "../styles.typ": *
#import "../components/catalogue.typ": *

// ==============================================================================
// ជំពូកទី៧ ៖ ថ្ងៃប្រកួតប្រជែងឡើងពេជ្រចុងក្រោយ និងថវិកាប្រតិបត្តិការ
// EDITORIAL CATALOGUE ARCHITECTURE (5 FACING SPREADS · PAGES 91–100)
// ==============================================================================

#label("ch-07")

// ==============================================================================
// SPREAD 1 · PAGE 91 (VERSO / LEFT): CHAPTER OPENER (DEEP TEAL BLOCK)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-teal,
  header: none,
  footer: none,
)[
  // Running Header Top Left
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-sand,
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · រដូវកាលទី១])

  // Archival Identification Tag
  #place(top + left, dx: 24mm, dy: 26mm, text(
    font: font-khmer-display,
    size: 6.5pt,
    fill: c-white.transparentize(30%),
  )[ឯកសារផ្លូវការ · សកម្មភាពទី ១០ និងថវិកាប្រតិបត្តិការ])

  // Architectural Geometric Frame behind photo
  #geom-frame(24mm, 36mm, 162mm, 146mm, stroke-color: c-sand, offset-x: -5mm, offset-y: -5mm)

  // Pitching Day Photograph
  #place(top + left, dx: 24mm, dy: 36mm, image("../assets/photos/finnal-pitching-2.jpg", width: 162mm, height: 146mm, fit: "cover"))

  // Enormous Sculptural Numeral 07 overlapping photo bottom edge
  #place(top + left, dx: 18mm, dy: 166mm, display-number("០៧", size: 100pt, fill: c-sand, weight: "regular"))

  // Chapter Identity & Title
  #place(top + left, dx: 24mm, dy: 218mm, stack(
    spacing: 5mm,
    text(font: font-khmer-display, size: 22pt, fill: c-paper)[ជំពូកទី ៧ ៖\ ថ្ងៃប្រកួតប្រជែង និងថវិកា],
    text(
      font: font-khmer-display,
      size: 9.5pt,
      weight: "bold",
      fill: c-sand-light,
    )[CHAPTER 5: Financial Ledgers & Resource Allocation],
  ))

  // Figure Caption for Chapter Opener Photo
  #place(top + left, dx: 86mm, dy: 194mm, editorial-caption(
    "ទិដ្ឋភាពទិវាប្រកួតប្រជែងឡើងពេជ្រចុងក្រោយ Final Pitching Day នៃគម្រោង InnoLab",
    meta-tag: "ថ្ងៃប្រកួតប្រជែងចុងក្រោយ",
    text-color: c-sand-light,
    width: 100mm,
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-teal.lighten(30%)))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    91,
    header-left: "ជំពូកទី៧ ៖ ថ្ងៃប្រកួតប្រជែង និងថវិកាប្រតិបត្តិការ",
    side: "left",
    folio-color: c-sand,
    color: c-sand-light,
  ))
]


// ==============================================================================
// SPREAD 1 · PAGE 92 (RECTO / RIGHT): EVENT CONTEXT & OBJECTIVES (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Right
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · សកម្មភាពទី ១០])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "សកម្មភាពទី ១០ ៖ ថ្ងៃប្រកួតប្រជែងឡើងពេជ្រចុងក្រោយ",
    preset: "lg",
    size: 16pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Narrative Stack
  #place(top + left, dx: 24mm, dy: 66mm, stack(
    spacing: 4mm,
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-white,
      stroke: 0.5pt + c-line,
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
        ថ្ងៃប្រកួតប្រជែងឡើងពេជ្រចុងក្រោយត្រូវបានរៀបចំឡើងនៅថ្ងៃទី ២១ ខែមីនា ឆ្នាំ ២០២៦ ចាប់ពីម៉ោង ៨:០០ ព្រឹក ដល់ម៉ោង ៥:០០ រសៀល នៅវិទ្យាស្ថានពហុបច្ចេកទេសខេត្តកំពង់ធំ ដោយទាក់ទាញអ្នកចូលរួមសរុបចំនួន ១៦៣ នាក់ និងជាការបិទបញ្ចប់កម្មវិធី InnoLab កំពង់ធំ ជំនាន់ទី ១។ ព្រឹត្តិការណ៍នេះត្រូវបានចូលរួមដោយតំណាងដ៏ខ្ពង់ខ្ពស់របស់ ឯកឧត្តម វង្សី វិស្សុត ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ និងជារដ្ឋមន្ត្រីទទួលបន្ទុកទីស្តីការគណៈរដ្ឋមន្ត្រី រួមជាមួយ ឯកឧត្ដម គី សុខគីម នាយកប្រតិបត្ដិ នៃមូលនិធិអភិវឌ្ឍន៍ជំនាញ, ឯកឧត្តម ហាន កុសល អភិបាលរងនៃគណៈអភិបាលខេត្តកំពង់ធំ និងឯកឧត្តមបណ្ឌិត ឈៀង វណ្ណារិទ្ធ ប្រធានក្រុមប្រឹក្សាភិបាលនៃឧទ្យាននវានុវត្តន៍សង្គមអង្គរ​(ASIP)។ គណៈកម្មការវាយតម្លៃរួមមាន លោកស្រី ប៉ែន បុប្ផា អគ្គនាយិកាប្រតិបត្តិនៃរិទ្ធិពល (Rithipul), លោកស្រី ឆេង សុគន្ធ សាស្ត្រាចារ្យផ្នែកគ្រប់គ្រងហានិភ័យនៅវិទ្យាស្ថានបច្ចេកវិទ្យាកម្ពុជា, លោក គង់ មាន ទីប្រឹក្សាឯករាជ្យ និងលោក តាន់ វិជ្ជា ទីប្រឹក្សាជាន់ខ្ពស់សម្រាប់ការអភិវឌ្ឍសេដ្ឋកិច្ចនៅ GIZ កម្ពុជា។
      ]
    ],
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-white,
      stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        *គោលបំណង៖* ដើម្បីឱ្យ សហគ្រាសធុនតូច និងមធ្យម គោលដៅទាំង ២០ បង្ហាញពីគំនិតច្នៃប្រឌិតរបស់ពួកគេនៅចំពោះមុខគណៈកម្មការវាយតម្លៃ និងជ្រើសរើសម្ចាស់ជ័យលាភីចំនួនបីរូបតាមរយៈការប្រកួតប្រជែងចំនួនពីរជុំ។ នៅក្នុងជុំទី ១ finalists ម្នាក់ៗមានពេលប្រាំនាទីដើម្បីធ្វើបទបង្ហាញ ដោយការវាយតម្លៃប្រើប្រាស់ទម្រង់ពិន្ទុរួមបញ្ចូលជាមួយការបោះឆ្នោតផ្ទាល់ពីទស្សនិកជននៅនឹងកន្លែង ដោយបែងចែកជា ពិន្ទុពីគណៈកម្មការ ៦០ ភាគរយ រួមផ្សំជាមួយនឹងការចូលរួមចំណែករបស់ សហគ្រាសធុនតូច និងមធ្យម ក្នុងអំឡុងពេលកម្មវិធី និងការបោះឆ្នោតពីទស្សនិកជន ៤០ ភាគរយ។ ទោះបីជាផែនការដំបូងត្រូវជ្រើសរើសយកតែ ៦ សហគ្រាសដើម្បីឈានទៅជុំបន្ទាប់ ប៉ុន្តែមានសហគ្រាសចំនួន ៧ ត្រូវបានអនុញ្ញាតឱ្យឆ្លងទៅមុខដោយសារតែមានពិន្ទុខ្ពស់ប្រកៀកគ្នា រួមមាន៖ លោក លឹម​ សភា លោក ឡុក គៀនស្រ៊ី  លោកស្រី ពិន​ ភិរម្យ​ លោក អាន លីហ៊ាន់ លោកស្រី អ៉ិន ឡៃហួត លោក អុល ចំណាប់ និងលោកស្រី ចែម ធីតា។ នៅក្នុងជុំទី ២ បេក្ខជនដែលជាប់ឈ្មោះខ្លីបានចូលរួមក្នុងវគ្គសំណួរ និងចម្លើយជាមួយគណៈកម្មការ ដោយវាយតម្លៃលើលក្ខវិនិច្ឆ័យមួយឈុតដាច់ដោយឡែក មុនពេលម្ចាស់ជ័យលាភីកំពូលទាំងបីត្រូវបានជ្រើសរើស។ ក្រៅពីនេះ ក៏មានការផ្តល់ជូននូវពានរង្វាន់ទទួលស្គាល់ពិសេសចំនួនពីរផងដែរ គឺ ពានរង្វាន់ «សកម្មជាងគេ» (Most Active) ដែលសម្រេចដោយការបោះឆ្នោតពីសិក្ខាកាម InnoLab ដូចគ្នា និងពានរង្វាន់ «មានការគាំទ្រច្រើនជាងគេ» (Most Popular) ផ្តល់ជូនបេក្ខជនដែលមានវីដេអូទទួលបានការចុច Likes និង Shares ច្រើនជាងគេនៅលើទំព័រហ្វេសប៊ុករបស់ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ​(ASIP)។
      ]
    ],
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    92,
    header-right: "សកម្មភាពទី ១០ ៖ ទិវាប្រកួតប្រជែងចុងក្រោយ",
    side: "right",
  ))
]


// ==============================================================================
// SPREAD 2 · PAGE 93 (VERSO / LEFT): PITCH PRESENTATION CONTENT (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Left
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ខ្លឹមសារបទបង្ហាញ])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "ខ្លឹមសារនៃការឡើងធ្វើបទបង្ហាញរបស់សហគ្រិន",
    preset: "lg",
    size: 16pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Narrative Stack
  #place(top + left, dx: 24mm, dy: 66mm, block(
    width: 162mm,
    inset: 4.5mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    radius: 2pt,
  )[
    #text(font: font-khmer-body, size: 8.8pt, fill: c-charcoal)[
      ខ្លឹមសារនៃការឡើងធ្វើបទបង្ហាញ៖ បទបង្ហាញឡើងពេជ្រខ្លួនឯងបានបង្ហាញពីលទ្ធផលការងារនវានុវត្តន៍ដែលបានអភិវឌ្ឍនៅទូទាំងក្រុមសិក្ខាកាមក្នុងអំឡុងពេលកម្មវិធី រាប់ចាប់តាំងពីធាតុចូលកសិកម្ម ដូចជា ពូជស្រូវ ជី និងគ្រឿងចក្រកសិកម្ម, ផលិតផលចំណីអាហារ រួមមាន អាហារសម្រន់ធ្វើពីគ្រាប់ស្វាយចន្ទី បបរភ្លាមៗ និងសាច់កែច្នៃ, សេវាកម្មទេសចរណ៍ ដូចជា កញ្ចប់ទស្សនកិច្ចបែបហ្គេម (Gamified Visitor Package) នៅសំបូរព្រៃគុក រហូតដល់ផលិតផលសិប្បកម្មដែលធ្វើពីសំបកគ្រាប់ស្វាយចន្ទី និងកំប្លោក ដែលឆ្លុះបញ្ចាំងពីជួរអាជីវកម្មចម្រុះដូចគ្នាទៅនឹងអ្វីដែលបានកត់ត្រាទុកនៅក្នុងវីដេអូឯកសារ InnoLab។
    ]
  ])

  // Insert Photo
  #place(top + left, dx: 24mm, dy: 112mm, image("../assets/photos/40.jpg", width: 162mm, height: 120mm, fit: "cover"))
  #place(top + left, dx: 24mm, dy: 236mm, editorial-caption(
    "សកម្មភាពសហគ្រិនឡើងធ្វើបទបង្ហាញការពារគម្រោងនវានុវត្តន៍នៅចំពោះមុខគណៈកម្មការ",
    meta-tag: "បទបង្ហាញចុងក្រោយ",
    width: 162mm,
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    93,
    header-left: "ខ្លឹមសារនៃការឡើងធ្វើបទបង្ហាញ",
    side: "left",
  ))
]


// ==============================================================================
// SPREAD 2 · PAGE 94 (RECTO / RIGHT): CHALLENGES & RESULTS (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Right
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · បញ្ហាប្រឈម និងលទ្ធផល])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "បញ្ហាប្រឈម និងលទ្ធផលនៃទិវាប្រកួតប្រជែងចុងក្រោយ",
    preset: "lg",
    size: 16pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Content Stack
  #place(top + left, dx: 24mm, dy: 66mm, stack(
    spacing: 4mm,
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-white,
      stroke: (left: 3pt + c-sand-dark, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        បញ្ហាប្រឈម៖ នៅថ្ងៃនោះរួមមាន ការកម្រិតលើពិធីការ (Protocol) ក្រោមពេលវេលាហាត់សមដ៏តឹងរ៉ឹង, បញ្ហាការរៀបចំផ្នែកបច្ចេកទេសដោយសារពេលវេលាតេស្តឧបករណ៍មិនបានគ្រប់គ្រាន់, ការពឹងផ្អែកខ្លាំងលើការសម្របសម្រួលភ្លាមៗក្នុងពេលជាក់ស្តែងក្នុងចំណោមក្រុមការងាររៀបចំ និងការខូចម៉ាស៊ីនត្រជាក់នៅទីតាំងព្រឹត្តិការណ៍ ដែលជះឥទ្ធិពលដល់ភាពងាយស្រួល និងការចូលរួម។
      ]
    ],
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-sand-light.lighten(40%),
      stroke: (left: 3pt + c-sand, rest: 0.5pt + c-sand),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        លទ្ធផល៖ ព្រឹត្តិការណ៍បានបញ្ចប់ទៅដោយជោគជ័យ ជាមួយនឹងម្ចាស់ជ័យលាភីបីរូបដែលត្រូវបានជ្រើសរើសសម្រាប់បទបង្ហាញដែលមានដំណោះស្រាយច្នៃប្រឌិតបំផុត និងមានសក្តានុពលខ្លាំងបំផុតក្នុងការយកទៅអនុវត្ត និងពង្រីកខ្នាតក្នុងពិភពពិត៖ លោក ឡុក គៀនស្រ៊ី អគ្គនាយកនៃក្រុមហ៊ុន ខេ អេស ស៊ីដ ឯ.ក. (KS SEED Co., Ltd.), លោកស្រី ភិន ភីរម្យ​  អគ្គនាយិកា នៃ សិប្បកម្មសុវណ្ណភូមិ និង លោក អុល ចំណាប់ ស្ថាបនិកសិប្បកម្មបច្ចេកវិទ្យាគ្រឿងយន្ត 007Ai។ លោក អាន លីហ៊ាន់ ឈ្នះរង្វាន់ សហគ្រិនសកម្ម និងលោក ឡូន ឆួង ឈ្នះរង្វាន់ សហគ្រិនមានប្រជាប្រិយភាព។ ម្ចាស់ជ័យលាភីចម្បងទាំងបីទទួលបានពានរង្វាន់ និងរង្វាន់ជាទឹកប្រាក់ ហើយបេក្ខជនចុងក្រោយទាំង ២០ រូបទទួលបានវិញ្ញាបនបត្របញ្ជាក់ការចូលរួម និងកាដូវត្ថុអនុស្សាវរីយ៍។ សេចក្តីប្រកាសព័ត៌មានចំនួនពីរដែលគ្របដណ្តប់លើព្រឹត្តិការណ៍នេះត្រូវបានចុះផ្សាយនៅក្នុងសារព័ត៌មាន Khmer Times។
      ]
    ],
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    94,
    header-right: "បញ្ហាប្រឈម និងលទ្ធផលជោគជ័យ",
    side: "right",
  ))
]


// ==============================================================================
// SPREAD 3 · PAGE 95 (VERSO / LEFT): PARTICIPANT FEEDBACK (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Left
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · មតិកែលម្អ])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "មតិកែលម្អរបស់អ្នកចូលរួម និងកម្រិតពេញចិត្តជារួម",
    preset: "lg",
    size: 16pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Content Stack
  #place(top + left, dx: 24mm, dy: 66mm, stack(
    spacing: 3.5mm,
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-white,
      stroke: 0.5pt + c-line,
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        មតិកែលម្អរបស់អ្នកចូលរួម៖ ទិន្នន័យត្រូវបានប្រមូលលើជញ្ជីងវាស់វែងពីរខុសគ្នានៅក្នុងកម្រងស្ទង់មតិតែមួយ៖
      ]
    ],
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-white,
      stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        សម្រាប់កត្តាជាក់លាក់៥៖ រួមមាន ការតុបតែងនិងទីតាំងព្រឹត្តិការណ៍, អាហារសម្រន់, អាហារថ្ងៃត្រង់, របៀបវារៈព្រឹត្តិការណ៍ និងឱកាសបង្កើតបណ្តាញទំនាក់ទំនង អ្នកចូលរួមបានវាយតម្លៃបទពិសោធន៍របស់ពួកគេលើជញ្ជីងដែលលេខ ១ មានន័យថា «ល្អណាស់» និងលេខ ៥ មានន័យថា «ខ្សោយ»។ លើជញ្ជីងនោះ ការតុបតែងនិងទីតាំងព្រឹត្តិការណ៍ត្រូវបានវាយតម្លៃថា ល្អ ឬល្អណាស់ ដោយច្រើនជាង ៧៦ ភាគរយនៃអ្នកឆ្លើយតប ដោយមាន ៧ ភាគរយវាយតម្លៃកម្រិតមធ្យម និង ១៥ ភាគរយវាយតម្លៃក្រោមមធ្យម។ អាហារសម្រន់ អាហារថ្ងៃត្រង់ និងរបៀបវារៈព្រឹត្តិការណ៍ នីមួយៗត្រូវបានវាយតម្លៃថាល្អ ឬល្អណាស់ដោយប្រហែល ៦៩ ភាគរយ ដោយមាន ២៣ ភាគរយមធ្យម និង ៧ ភាគរយក្រោមមធ្យម។ ឱកាសបង្កើតបណ្តាញទំនាក់ទំនងក៏ត្រូវបានវាយតម្លៃថាល្អ ឬល្អណាស់ដោយប្រហែល ៦៩ ភាគរយផងដែរ ដោយមាន ១៥ ភាគរយមធ្យម និង ១៥ ភាគរយក្រោមមធ្យម។
      ]
    ],
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-sand-light.lighten(40%),
      stroke: (left: 3pt + c-sand, rest: 0.5pt + c-sand),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        ការពេញចិត្តជារួម៖ ដាច់ដោយឡែកពីគ្នា អ្នកចូលរួមបានវាយតម្លៃការពេញចិត្តជារួមរបស់ពួកគេចំពោះព្រឹត្តិការណ៍លើជញ្ជីងផ្ទុយគ្នា ដែលលេខ ១ គឺទាបបំផុត និងលេខ ៥ គឺខ្ពស់បំផុត។ ផ្អែកលើការវាស់វែងនោះ មានត្រឹមតែប្រហែល ១៥ ភាគរយប៉ុណ្ណោះដែលបានវាយតម្លៃការពេញចិត្តរបស់ពួកគេនៅកម្រិត ៣ ឬទាបជាងនេះ ខណៈប្រហែល ៥ formulation ភាគរយបានវាយតម្លៃកម្រិត ៤ និងប្រហែល ៣១ ភាគរយបានវាយតម្លៃកម្រិត ៥ មានន័យថាប្រហាក់ប្រហែល ៨៥ ភាគរយបានផ្តល់ចំណាត់ថ្នាក់ព្រឹត្តិការណ៍ស្ថិតក្នុងចំណោមពិន្ទុខ្ពស់បំផុតទាំងពីរ។
      ]
    ],
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    95,
    header-left: "មតិកែលម្អរបស់អ្នកចូលរួម និងការពេញចិត្ត",
    side: "left",
  ))
]


// ==============================================================================
// SPREAD 3 · PAGE 96 (RECTO / RIGHT): OPERATIONAL BUDGET REALIZED (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Right
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ថវិកាប្រតិបត្តិការ])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "5.1 Operational Budget Execution Realized",
    preset: "lg",
    size: 16pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Intro
  #place(top + left, dx: 24mm, dy: 66mm, block(
    width: 162mm,
    inset: 4mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    radius: 2pt,
  )[
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      Every dollar deployed across the InnoLab Kampong Thom framework was tracked against strict performance metrics. The financial management model requires complete transparency across all operational pillars:
    ]
    #h(2mm) #text(font: font-khmer-display, size: 7pt, fill: c-charcoal.lighten(40%))[(PDF)]
  ])

  // Budget Allocation Chart Box
  #place(top + left, dx: 24mm, dy: 104mm, block(
    width: 162mm,
    inset: 5mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    radius: 2pt,
  )[
    /*
    ┌────────────────────────────────────────────────────────┐
    │ [████████████████] Academic Curriculum Delivery (35%)   │
    ├────────────────────────────────────────────────────────┤
    │ [████████████] Onsite Diagnostics & Auditing (25%)     │
    ├────────────────────────────────────────────────────────┤
    │ [██████████] Media Production & Documentaries (20%)    │
    ├────────────────────────────────────────────────────────┤
    │ [──────────] Public Ceremonies & Admin (20%)            │
    └────────────────────────────────────────────────────────┘
    */
    #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[Operational Budget Allocation Realized]
    #v(3mm)
    #stack(
      spacing: 2.5mm,
      block(fill: c-teal, inset: 3mm, radius: 2pt)[
        #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-white)[Academic Curriculum Delivery (35%)]
      ],
      block(fill: c-teal.lighten(15%), inset: 3mm, radius: 2pt)[
        #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-white)[Onsite Diagnostics & Auditing (25%)]
      ],
      block(fill: c-sand-dark, inset: 3mm, radius: 2pt)[
        #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-white)[Media Production & Documentaries (20%)]
      ],
      block(fill: c-sand, inset: 3mm, radius: 2pt)[
        #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-teal.darken(20%))[Public Ceremonies & Admin (20%)]
      ],
    )
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    96,
    header-right: "៥.១ ថវិកាប្រតិបត្តិការដែលបានអនុវត្ត",
    side: "right",
  ))
]


// ==============================================================================
// SPREAD 4 · PAGE 97 (VERSO / LEFT): BUDGET ALLOCATION BREAKDOWN (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Left
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · បំណែងចែកថវិកា])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "ការវិភាគបំណែងចែកថវិកាតាមមុខសញ្ញាសំខាន់ៗទាំងបួន",
    preset: "lg",
    size: 15pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // 4 Allocation Cards
  #place(top + left, dx: 24mm, dy: 66mm, stack(
    spacing: 3.5mm,
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-white,
      stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.2pt, fill: c-charcoal)[
        - Academic Curriculum & Field Delivery (35%): Funding expert trainers, venue spaces, field exercises, translation work, and educational tracking tools. PDF
      ]
    ],
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-white,
      stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.2pt, fill: c-charcoal)[
        - Onsite Diagnostics & Field Auditing (25%): Covering logistical costs for technical teams to travel to distant rural facilities for inspections and engineering audits. PDF
      ]
    ],
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-white,
      stroke: (left: 3pt + c-sand-dark, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.2pt, fill: c-charcoal)[
        - Media Production & Ecosystem Documentaries (20%): Funding specialized film crews, equipment, and editing teams during the 10-day field production sprint. PDF
      ]
    ],
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-white,
      stroke: (left: 3pt + c-sand, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.2pt, fill: c-charcoal)[
        - Public Ceremonies & Inter-Departmental Coordination (20%): Funding high-level launch events, printing formal reports, and managing provincial communication networks. PDF
      ]
    ],
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    97,
    header-left: "បំណែងចែកថវិកាតាមមុខសញ្ញាសំខាន់ៗ",
    side: "left",
  ))
]


// ==============================================================================
// SPREAD 4 · PAGE 98 (RECTO / RIGHT): CAPITAL TARGETS & SCALE MATRIX (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Right
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · គោលដៅទុនវិនិយោគ])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "5.2 Capital Investment Targets for the Final Pitching Showcase",
    preset: "lg",
    size: 16pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Intro
  #place(top + left, dx: 24mm, dy: 66mm, block(
    width: 162mm,
    inset: 4mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    radius: 2pt,
  )[
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      The immediate next phase of the project centers on the upcoming Final Pitching Showcase. The 20 finalist SMEs will present their fully audited, risk-mitigated business expansion plans directly to institutional investors, venture capital funds, and commercial banking partners.
    ]
    #h(2mm) #text(font: font-khmer-display, size: 7pt, fill: c-charcoal.lighten(40%))[(PDF+ 1)]
  ])

  // Scale Matrix Card
  #place(top + left, dx: 24mm, dy: 104mm, block(
    width: 162mm,
    height: 80mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    inset: 4mm,
    radius: 2pt,
  )[
    #align(center)[
      #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[Enterprise Capital Scale Matrix · Target Capital Needed (USD)]
/*
$25,000 ─────────────────────────────────────────────────────────────┐
│ High-Scale
$15,000 ───────────────────────────────┐                             │ Processing
│ Mid-Tier                    │ Hubs
$5,000  ──────────┐ Micro-Grants       │ Automation                  │
│                    │                             │
──────────┴────────────────────┴─────────────────────────────┴
Level 1 Tier                 Level 2 Tier                 Level 3 Tier
Level 1 Tier (Micro-Grants / $2,500 – $5,000): Intended for micro-enterprises to purchase foundational tools, update basic labels, and secure standard hygiene certifications.
*/
      #v(3mm)
      #grid(
        columns: (1fr, 1fr, 1fr),
        gutter: 3.5mm,
        block(fill: c-sand-light.lighten(50%), inset: 3.5mm, stroke: 0.5pt + c-sand, radius: 2pt)[
          #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-teal)[Level 1 Tier]
          #v(1mm)
          #text(font: font-khmer-display, size: 13pt, weight: "bold", fill: c-teal)[$2,500 – $5,000]
          #v(1mm)
          #text(font: font-khmer-body, size: 7pt, fill: c-charcoal)[Micro-Grants]
        ],
        block(fill: c-sand-light.lighten(50%), inset: 3.5mm, stroke: 0.5pt + c-sand, radius: 2pt)[
          #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-teal)[Level 2 Tier]
          #v(1mm)
          #text(font: font-khmer-display, size: 13pt, weight: "bold", fill: c-teal)[$5,001 – $15,000]
          #v(1mm)
          #text(font: font-khmer-body, size: 7pt, fill: c-charcoal)[Mid-Tier Automation]
        ],
        block(fill: c-teal, inset: 3.5mm, radius: 2pt)[
          #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: c-sand)[Level 3 Tier]
          #v(1mm)
          #text(font: font-khmer-display, size: 13pt, weight: "bold", fill: c-sand)[$15,001 – $30,000+]
          #v(1mm)
          #text(font: font-khmer-body, size: 7pt, fill: c-white)[High-Scale Hubs]
        ],
      )
    ]
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    98,
    header-right: "៥.២ គោលដៅទុនវិនិយោគ និងម៉ាទ្រីសកម្រិតទុន",
    side: "right",
  ))
]


// ==============================================================================
// SPREAD 5 · PAGE 99 (VERSO / LEFT): THREE CAPITAL TIERS (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Left
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · កម្រិតទុនវិនិយោគទាំង ៣])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "ការវិភាគកម្រិតទុនវិនិយោគទាំងបី (Levels 1, 2, 3)",
    preset: "lg",
    size: 15pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // 3 Tiers Narrative
  #place(top + left, dx: 24mm, dy: 66mm, stack(
    spacing: 4mm,
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-white,
      stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        - Level 1 Tier (Micro-Grants / \$2,500 – \$5,000): Intended for micro-enterprises to purchase foundational tools, update basic labels, and secure standard hygiene certifications.
      ]
    ],
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-white,
      stroke: (left: 3pt + c-sand, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        - Level 2 Tier (Mid-Tier Automation / \$5,001 – \$15,000): Tailored for expanding businesses to acquire semi-automated packaging lines, solar drying domes, or small delivery trucks.
      ]
    ],
    block(
      width: 162mm,
      inset: 4.5mm,
      fill: c-white,
      stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
        - Level 3 Tier (High-Scale Processing Hubs / \$15,001 – \$30,000+): Directed at advanced cohort leaders to build complete processing facilities, buy industrial-grade machinery, and implement full enterprise resource planning (ERP) tracking software.
      ]
    ],
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    99,
    header-left: "ការវិភាគកម្រិតទុនវិនិយោគទាំងបី",
    side: "left",
  ))
]


// ==============================================================================
// SPREAD 5 · PAGE 100 (RECTO / RIGHT): CHAPTER CLOSING & SYNTHESIS (WARM PAPER)
// ==============================================================================
#page(
  paper: "a4",
  margin: 0pt,
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Running Header Top Right
  #place(top + left, dx: 24mm, dy: 18mm, text(
    font: font-khmer-display,
    size: 7.5pt,
    weight: "bold",
    fill: c-charcoal.lighten(30%),
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · សំយោគជំពូកទី ៧])

  // Full Page Photographic Hero Frame
  #geom-frame(24mm, 28mm, 162mm, 122mm, stroke-color: c-sand, offset-x: 3mm, offset-y: 3mm)
  #place(top + left, dx: 24mm, dy: 28mm, image("../assets/photos/DSC_8464.jpg", width: 162mm, height: 122mm, fit: "cover"))

  // Photo Caption Cleanly Below Photo
  #place(top + left, dx: 24mm, dy: 154mm, editorial-caption(
    "ពិធីប្រគល់ពានរង្វាន់ជ័យលាភី និងការអបអរសាទរសមិទ្ធផលនវានុវត្តន៍នៃគម្រោង InnoLab",
    meta-tag: "សមិទ្ធផលជោគជ័យ",
    width: 162mm,
  ))

  // Bottom Synthesis Block
  #place(top + left, dx: 24mm, dy: 174mm, block(
    width: 162mm,
    inset: 4.5mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    radius: 2pt,
  )[
    #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-teal)[សំយោគទិវាប្រកួតប្រជែង និងប្រសិទ្ធភាពថវិកា]
    #v(1.5mm)
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      ទិវាប្រកួតប្រជែងឡើងពេជ្រចុងក្រោយបានបង្ហាញយ៉ាងច្បាស់ពីការរីកចម្រើនយ៉ាងធំធេងនៃសមត្ថភាពរបស់សហគ្រិនខេត្តកំពង់ធំ។ តាមរយៈការគ្រប់គ្រងថវិកាប្រកបដោយតម្លាភាព និងការបែងចែកទុនវិនិយោគចំគោលដៅ គម្រោងបានត្រួសត្រាយផ្លូវសម្រាប់សហគ្រាសក្នុងការឈានទៅរកការធ្វើស្វ័យប្រវត្តិកម្ម និងការតភ្ជាប់ទីផ្សារទ្រង់ទ្រាយធំ។
    ]
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    100,
    header-right: "ជំពូកទី៧ ៖ សំយោគទិវាប្រកួតប្រជែងចុងក្រោយ",
    side: "right",
  ))
]
