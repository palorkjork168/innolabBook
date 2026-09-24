#import "../styles.typ": *
#import "../components/charts.typ": *
#import "../components/final-pitch.typ": *
#import "../components/case-study.typ": *


// ============================================================
// APPENDIX
// DATA NOTES, REFERENCES & TERMINOLOGY
// SOURCE-PRESERVING VERSION
// ============================================================


// ------------------------------------------------------------
// LOCAL COMPONENTS
// ------------------------------------------------------------

#let appendix-row(label, value, note: none, height: auto) = block(
  width: 100%,
  height: height,
  inset: (y: 3.5mm, x: 0mm),
  stroke: (bottom: 0.6pt + colors.line),
)[
  #grid(
    columns: (46mm, 1fr),
    gutter: 6mm,

    [
      #text(
        font: fonts.main,
        size: 9pt,
        weight: 700,
        fill: colors.text,
      )[
        #label
      ]
    ],

    [
      #text(
        font: fonts.main,
        size: 9pt,
        fill: colors.text,
      )[
        #value
      ]

      #if note != none {
        v(1.5mm)

        text(
          font: fonts.main,
          size: 7.5pt,
          fill: colors.gray,
        )[
          #note
        ]
      }
    ],
  )
]

#let appendix-label(body) = [
  #text(
    font: fonts.display,
    size: 8pt,
    weight: 600,
    fill: colors.primary,
  )[
    #body
  ]
]
// ============================================================

#pagebreak()

#text(
  font: fonts.display,
  size: 9pt,
  weight: 600,
  fill: colors.primary,
)[
  APPENDIX
]

#v(4mm)

#block[
  #set par(leading: 12pt, justify: false)
  #text(
    font: fonts.main,
    size: 30pt,
    weight: 700,
    fill: colors.primary,
  )[
    ឧបសម្ព័ន្ធ
  ]
]

#v(7mm)

ឧបសម្ព័ន្ធនេះ
ប្រមូលផ្តុំ
កំណត់សម្គាល់
សម្រាប់ការបកស្រាយ
ទិន្នន័យ
ភាពមិនស៊ីសង្វាក់
ក្នុងឯកសារប្រភព
ការសរសេរឈ្មោះ
ដែលត្រូវផ្ទៀងផ្ទាត់
ពាក្យបច្ចេកទេស
សំខាន់ៗ
និងសន្ទស្សន៍
រូបភាព
ដែលត្រូវបំពេញ
នៅក្នុងកំណែ
បោះពុម្ពចុងក្រោយ។

#v(8mm)

#callout(
  "គោលការណ៍ប្រើប្រាស់ឧបសម្ព័ន្ធ",
  [
    កំណត់សម្គាល់
    ក្នុងផ្នែកនេះ
    មិនត្រូវបានប្រើ
    ដើម្បី “កែ”
    ឯកសារប្រភព
    ដោយស្ងៀមស្ងាត់ទេ។

    នៅពេល
    ប្រភពមាន
    ចំនួន
    ឈ្មោះ
    ឬការដាក់ស្លាក
    ខុសគ្នា
    របាយការណ៍
    រក្សាភាពខុសគ្នា
    និងសម្គាល់
    ចំណុចដែល
    ត្រូវការផ្ទៀងផ្ទាត់។
  ],
)


// ============================================================
// A. DATA BASIS
// ============================================================

#section-title("ឧបសម្ព័ន្ធ A — មូលដ្ឋានទិន្នន័យ និងចំនួនអ្នកឆ្លើយ")

#appendix-row(
  "Cohort 1",
  "សហគ្រាសចុងក្រោយ ២០",
  note: [
    ឯកសារវាយតម្លៃ
    កំណត់ថា
    InnoLab Kampong Thom
    Cohort 1
    មាន SMEs
    ចំនួន ២០។
  ],
)

#appendix-row(
  "Sector data",
  "40% / 26.7% / 20% / 13.3%",
  note: [
    កសិកម្ម និងកសិ-ឧស្សាហកម្ម /
    ផលិតកម្ម /
    សិប្បកម្ម /
    ទេសចរណ៍។
  ],
)

#appendix-row(
  "Impact survey",
  "សូចនាករជាច្រើនប្រើភាគរយស្របនឹង n = 15",
  note: [
    មិនគួរ
    បកស្រាយថា
    SMEs ទាំង ២០
    បានឆ្លើយ
    គ្រប់សំណួរ។
  ],
)

#appendix-row(
  "Market visibility",
  "Before: n = 10 · After: n = 15",
  note: [
    ចំនួនអ្នកឆ្លើយ
    មុន និងក្រោយ
    មិនស្មើគ្នា
    ដូច្នេះ
    ការប្រៀបធៀប
    ត្រូវអាន
    ដោយប្រុងប្រយ័ត្ន។
  ],
)

#v(7mm)

ឯកសារវាយតម្លៃ
កំណត់
Cohort 1
ថាមាន
SMEs ចំនួន ២០។ :contentReference[oaicite:0]{index=0}

ទោះជាយ៉ាងណា
គំនូសតាង
និងសូចនាករ
មួយចំនួន
ប្រើចំនួន
អ្នកឆ្លើយ
ខុសគ្នា។

ជាពិសេស
ការវាស់
Market Visibility
មានចំនួន
អ្នកឆ្លើយ
មុន និងក្រោយ
មិនដូចគ្នា
ដែលធ្វើឱ្យ
ការប្រៀបធៀប
មិនគួរ
ត្រូវបានអាន
ជាការវាស់
លើក្រុមដូចគ្នា
ដោយស្វ័យប្រវត្តិ។ :contentReference[oaicite:1]{index=1}


// ============================================================
// B. RECRUITMENT DATA CONFLICT
// ============================================================

#pagebreak()

#section-title("ឧបសម្ព័ន្ធ B — ភាពមិនស៊ីសង្វាក់ក្នុងដំណាក់កាលជ្រើសរើស")

ដំណើរការ
ជ្រើសរើស
មានខ្សែទិន្នន័យ
សំខាន់
ដូចខាងក្រោម៖

#v(7mm)

#let group-step-height = 22mm

#grid(
  columns: (1fr, auto, 1fr, auto, 1fr, auto, 1fr),
  gutter: 3mm,
  align: horizon,

  flow-step(
    "111",
    [
      ពាក្យសុំ
    ],
    height: group-step-height,
  ),

  text(
    font: fonts.display,
    size: 18pt,
    fill: colors.sand,
  )[
    →
  ],

  flow-step(
    "50",
    [
      Shortlisted
    ],
    height: group-step-height,
  ),

  text(
    font: fonts.display,
    size: 18pt,
    fill: colors.sand,
  )[
    →
  ],

  flow-step(
    "25",
    [
      Onsite
    ],
    height: group-step-height,
  ),

  text(
    font: fonts.display,
    size: 18pt,
    fill: colors.sand,
  )[
    →
  ],

  flow-step(
    "20",
    [
      Final SMEs
    ],
    height: group-step-height,
  ),
)

#v(8mm)

#callout(
  "ចំណុចមិនស៊ីសង្វាក់ — 30 vs 50",
  [
    ផ្នែកគោលបំណង
    របស់ដំណាក់កាលសម្ភាស
    បញ្ជាក់ថា
    SMEs ចំនួន ៥០
    ដែលបានជាប់
    Shortlist
    នឹងត្រូវ
    វាយតម្លៃ
    តាមរយៈការសម្ភាស។

    ទោះជាយ៉ាងណា
    ផ្នែកលទ្ធផល
    មួយក្នុង
    ឯកសារដដែល
    រាយថា
    មាន SMEs
    ចំនួន ៣០
    ត្រូវបានសម្ភាស។

    បន្ទាប់មក
    SMEs ចំនួន ២៥
    ត្រូវបាន
    ជ្រើសរើស
    សម្រាប់
    Onsite Visit។

    ដូច្នេះ
    របាយការណ៍
    មិនកំណត់
    ៣០ ឬ ៥០
    ជាចំនួន
    “សម្ភាសពិតប្រាកដ”
    រហូតដល់
    មានការផ្ទៀងផ្ទាត់
    ពីឯកសារ
    ប្រតិបត្តិការ
    ដើម។
  ],
)


// ============================================================
// C. SURVEY INTERPRETATION NOTES
// ============================================================

#section-title("ឧបសម្ព័ន្ធ C — កំណត់សម្គាល់លើការបកស្រាយការវាយតម្លៃ")

#appendix-row(
  "Innovation understanding",
  "Before: 20% / 60% / 20% / 0% · After: 0% / 6.7% / 20% / 73.3%",
  note: [
    លទ្ធផល
    ត្រូវបានបង្ហាញ
    តាម ៤ កម្រិត
    នៃការយល់ដឹង។
  ],
)

#appendix-row(
  "Innovation integration",
  "26.7% partial · 60% largely · 13.3% fully",
)

#appendix-row(
  "Product/service quality",
  "20% / 60% / 20%",
  note: [
    Level 2
    ត្រូវបានបកស្រាយ
    ជា “ការកែលម្អមានកម្រិត”
    ដោយប្រុងប្រយ័ត្ន
    ព្រោះការដាក់ស្លាក
    ក្នុងប្រភព
    មិនច្បាស់លាស់
    ពេញលេញ។
  ],
)

#appendix-row(
  "Competitiveness",
  "13.3% / 73.3% / 13.3%",
)

#appendix-row(
  "Future support",
  "Training 80% · Networking 66.7% · Finance 53.3% · Technology 33.3% · Policy/advocacy 26.7%",
)

#v(7mm)

ក្រោយកម្មវិធី
73.3%
នៃអ្នកឆ្លើយ
បានវាយតម្លៃ
ការយល់ដឹង
អំពីនវានុវត្តន៍
នៅកម្រិត ៤
ខណៈ
20%
នៅកម្រិត ៣
និង 6.7%
នៅកម្រិត ២។ :contentReference[oaicite:2]{index=2}

ទិន្នន័យ
តម្រូវការគាំទ្រ
នាពេលអនាគត
រាយការណ៍
ការបណ្តុះបណ្តាល
80%
Networking
66.7%
និងជំនួយ
ហិរញ្ញវត្ថុ
53.3%
ជាជម្រើស
ដែលត្រូវបាន
លើកឡើងច្រើនជាងគេ។ :contentReference[oaicite:3]{index=3}


// ============================================================
// D. FINAL PITCH SURVEY NOTE
// ============================================================


#section-title("ឧបសម្ព័ន្ធ D — កំណត់សម្គាល់លើ Final Pitch Survey")

កម្រងស្ទង់មតិ
សម្រាប់
Final Pitching Day
ប្រើ
មាត្រដ្ឋានវាស់វែង
ពីរប្រភេទ
ដែលមានទិស
ផ្ទុយគ្នា
ក្នុងកម្រង
តែមួយ។

ដោយសារតែ
បញ្ហានេះ
ការបកស្រាយ
សូចនាករ
ពេញចិត្ត
ត្រូវធ្វើ
ដោយប្រុងប្រយ័ត្ន។

#v(7mm)

#appendix-row(
  "Venue & decoration",
  "ជាង 76% — ល្អ ឬល្អណាស់",
)

#appendix-row(
  "Refreshment / lunch / agenda",
  "ប្រហែល 69% — ល្អ ឬល្អណាស់",
)

#appendix-row(
  "Networking",
  "ប្រហែល 69% — ល្អ ឬល្អណាស់",
)

#appendix-row(
  "Overall satisfaction",
  "ប្រភពបកស្រាយថា ប្រហែល 85% ស្ថិតក្នុងក្រុមពេញចិត្តខ្ពស់បំផុតពីរ",
  note: [
    មិនបាន
    បង្ហាញ
    Breakdown
    លម្អិត
    ក្នុងរបាយការណ៍នេះ
    ព្រោះសមាសភាគ
    ប្រភព
    មានបញ្ហា
    មាត្រដ្ឋាន
    និងការបង្ហាញលេខ។
  ],
)


// ============================================================
// E. NAME SPELLING VERIFICATION
// ============================================================

#section-title("ឧបសម្ព័ន្ធ E — ឈ្មោះដែលត្រូវផ្ទៀងផ្ទាត់មុនបោះពុម្ព")

ករណីសិក្សា
និងឯកសារ
Final Pitch
មានអក្ខរាវិរុទ្ធ
ឈ្មោះមួយចំនួន
ខុសគ្នា។

របាយការណ៍
រក្សាទម្រង់
ដែលបង្ហាញ
នៅក្នុង
ចំណងជើង
ប្រភព
ជាចម្បង
និងសម្គាល់
ទម្រង់ផ្សេងៗ
ខាងក្រោម។

#v(7mm)

#appendix-row(
  "Case 09",
  "លោក ឡុក គ្រៀនស្រុី",
  note: [
    ប្រភពផ្សេងទៀត៖
    «ឡុក គៀនស្រុី»
    និង
    «ឡុក គៀនស្រ៊ី»។
  ],
)

#appendix-row(
  "Case 10",
  "លោក លឹម សភា",
  note: [
    អត្ថបទខ្លះ
    ប្រើ
    «លោក លីម សភា»។
  ],
)

#appendix-row(
  "Case 16",
  "លោកស្រី អុិន ឡៃហ៊ួត",
  note: [
    អត្ថបទខ្លះ
    ប្រើ
    «អុិន ឡៃហួត»។
  ],
)

#appendix-row(
  "Case 17",
  "លោកស្រី ពិន ភិរម្យ",
  note: [
    មានទម្រង់
    «ភិន ភិរម្យ»
    និង
    «ភិន ភីរម្យ»
    ក្នុងឯកសារ
    ផ្សេងៗ។
  ],
)

#appendix-row(
  "Case 20",
  "លោក សួង សោភ័ណ — សិប្បកម្មកែច្នៃត្រី សោភ័ណសុម៉េង",
  note: [
    អត្ថបទខ្លះ
    ប្រើ
    «លោក សុភ័ណ្ឌ»
    និង
    «សិប្បកម្មត្រីសុភ័ណ្ឌ សុខម៉េង»។
  ],
)

#v(7mm)

#callout(
  "សកម្មភាពមុនបោះពុម្ព",
  [
    ឈ្មោះ
    និងឈ្មោះអាជីវកម្ម
    ទាំងនេះ
    គួរត្រូវ
    ផ្ទៀងផ្ទាត់
    ជាមួយ
    បញ្ជីចុះឈ្មោះ
    វិញ្ញាបនបត្រ
    ឯកសារអាជីវកម្ម
    ឬការបញ្ជាក់
    ពីម្ចាស់សហគ្រាស
    មុនបង្កក
    Final PDF។
  ],
)


// ============================================================
// F. TERMINOLOGY
// ============================================================


#section-title("ឧបសម្ព័ន្ធ F — ពាក្យបច្ចេកទេស")

#appendix-row(
  "InnoLab Kampong Thom",
  "គម្រោងមន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ",
)

#appendix-row(
  "SME",
  "សហគ្រាសធុនតូច និងមធ្យម",
)

#appendix-row(
  "Design Thinking",
  "វិធីសាស្ត្រគិតដែលផ្តោតលើអ្នកប្រើប្រាស់ និងការសាកល្បងដំណោះស្រាយ",
)

#appendix-row(
  "Customer Journey",
  "ដំណើរបទពិសោធន៍របស់អតិថិជននៅតាមចំណុចទំនាក់ទំនងផ្សេងៗ",
)

#appendix-row(
  "Prototype",
  "គំរូសាកល្បងនៃផលិតផល សេវាកម្ម ឬដំណោះស្រាយ",
)

#appendix-row(
  "Circular Economy",
  "សេដ្ឋកិច្ចចក្រា — ការប្រើធនធានឡើងវិញ និងកាត់បន្ថយសំណល់",
)

#appendix-row(
  "Biochar",
  "ធ្យូងជីវសាស្ត្រ",
)

#appendix-row(
  "Hydroponics",
  "ការដាំដុះដោយប្រើទឹកជំនួសដី ឬអ៊ីដ្រូប៉ូនិច",
)

#appendix-row(
  "Mentoring / Coaching",
  "ការណែនាំ និងការប្រឹក្សាតាមតម្រូវការរបស់សហគ្រាស",
)

#appendix-row(
  "Final Pitching Day",
  "ថ្ងៃបង្ហាញគំនិត និងលទ្ធផលចុងក្រោយរបស់សហគ្រាសក្នុងកម្មវិធី",
)

#appendix-row(
  "InnoTour",
  "ដំណើរទស្សនកិច្ចសិក្សា និងការរៀនពីអាជីវកម្មជាក់ស្តែង",
)

#appendix-row(
  "Most Active",
  "ពានរង្វាន់សកម្មជាងគេ",
)

#appendix-row(
  "Most Popular",
  "ពានរង្វាន់មានការគាំទ្រច្រើនជាងគេ",
)


// ============================================================
// G. KEY DATES
// ============================================================

#section-title("ឧបសម្ព័ន្ធ G — កាលបរិច្ឆេទសំខាន់ៗ")

#appendix-row(
  "July 2025",
  "ចាប់ផ្តើមការអនុវត្តគម្រោងតាមឯកសារប្រភព",
)

#appendix-row(
  "25 July 2025",
  "Physical Outreach នៅវិទ្យាស្ថានពហុបច្ចេកទេស ខេត្តកំពង់ធំ",
)

#appendix-row(
  "15–17 August 2025",
  "ការពិនិត្យ និងវាយតម្លៃបឋម",
)

#appendix-row(
  "18 August 2025",
  "ប្រកាសលទ្ធផលវគ្គបឋម",
)

#appendix-row(
  "23 August 2025",
  "ការសម្ភាស",
)

#appendix-row(
  "2–6 September 2025",
  "Onsite Assessment",
)

#appendix-row(
  "11 October 2025",
  "ពិធីបើកផ្លូវការ និង Training 1",
)

#appendix-row(
  "26 October 2025",
  "Training 2 — Customer Journey",
)

#appendix-row(
  "9 November 2025",
  "Training 3 — Innovation Project Management",
)

#appendix-row(
  "13–14 December 2025",
  "InnoTour — Siem Reap",
)

#appendix-row(
  "29 January–7 February 2026",
  "ការផលិតវីដេអូឯកសារសម្រាប់ SMEs ទាំង ២០",
)

#appendix-row(
  "21 March 2026",
  "Final Pitching Day",
)

#v(6mm)

Final Pitching Day
ត្រូវបានរៀបចំ
នៅថ្ងៃទី
២១ ខែមីនា ឆ្នាំ២០២៦
ចាប់ពីម៉ោង
៨:០០ ព្រឹក
ដល់ ៥:០០ រសៀល
និងមាន
អ្នកចូលរួម
សរុប ១៦៣ នាក់។ :contentReference[oaicite:4]{index=4}


// ============================================================
// H. KEY NUMBERS
// ============================================================

#pagebreak()

#section-title("ឧបសម្ព័ន្ធ H — លេខសំខាន់ៗ")

#let group-stat-height = 28mm

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 5mm,

  stat(
    "111",
    "ពាក្យសុំ",
    height: group-stat-height,
  ),

  stat(
    "20",
    "Final SMEs",
    height: group-stat-height,
  ),

  stat(
    "3",
    "វគ្គបណ្តុះបណ្តាល",
    height: group-stat-height,
  ),

  stat(
    "20",
    "Documentary SMEs",
    height: group-stat-height,
  ),

  stat(
    "163",
    "Final Pitch attendees",
    height: group-stat-height,
  ),

  stat(
    "7",
    "Round 2 finalists",
    height: group-stat-height,
  ),

  stat(
    "3",
    "Main winners",
    height: group-stat-height,
  ),

  stat(
    "2",
    "Special awards",
    height: group-stat-height,
  ),

  stat(
    "16M៛",
    "រង្វាន់អតិបរមា / ម្ចាស់ជ័យលាភី",
    height: group-stat-height,
  ),

  stat(
    "48M៛",
    "រង្វាន់សរុប",
    height: group-stat-height,
  ),

  stat(
    "110",
    "Season 2 applications recorded",
    height: group-stat-height,
  ),

  stat(
    "30",
    "Season 2 planned finalists",
    height: group-stat-height,
  ),
)


// ============================================================
// I. IMPACT SNAPSHOT
// ============================================================

#section-title("ឧបសម្ព័ន្ធ I — សង្ខេបទិន្នន័យផលប៉ះពាល់")

#appendix-row(
  "Business size before",
  "Micro 46.7% · Small 40% · Medium 13.3%",
)

#appendix-row(
  "Business size after",
  "Micro 40% · Small 40% · Medium 20%",
)

#appendix-row(
  "Management before",
  "Lower/basic 53.3% · Middle 46.7%",
)

#appendix-row(
  "Management after",
  "Lower/basic 13.3% · Middle 80% · Top 6.7%",
)

#appendix-row(
  "Innovation — product development",
  "100%",
)

#appendix-row(
  "Innovation — process improvement",
  "66.7%",
)

#appendix-row(
  "Innovation — technology adoption",
  "53.3%",
)

#appendix-row(
  "Innovation — customer experience",
  "46.7%",
)

#appendix-row(
  "Innovation integration",
  "Partial 26.7% · Largely 60% · Fully 13.3%",
)

#appendix-row(
  "Continuing challenge — finance",
  "60%",
)

#appendix-row(
  "Continuing challenge — skilled workforce",
  "60%",
)

#appendix-row(
  "Continuing challenge — market competition",
  "46.7%",
)

#appendix-row(
  "Future support — training",
  "80%",
)

#appendix-row(
  "Future support — networking",
  "66.7%",
)

#appendix-row(
  "Future support — finance",
  "53.3%",
)


// ============================================================
// J. IMAGE INDEX
// ============================================================

#pagebreak()

#section-title("ឧបសម្ព័ន្ធ J — សន្ទស្សន៍រូបភាពដែលត្រូវបំពេញ")

ផ្នែកនេះ
ត្រូវបានរៀបចំ
ជាបញ្ជី
សម្រាប់ជួយ
ក្រុមការងារ
រៀបចំ
រូបភាព
មុនផលិត
Final PDF។

#v(7mm)

#appendix-row(
  "01–03",
  "Chapter 01 — Kampong Thom context, ASIP implementation, Season 1 group",
)

#appendix-row(
  "04–07",
  "Chapter 02 — supply chain, infrastructure, circular economy, SME challenge context",
)

#appendix-row(
  "08–11",
  "Chapter 03 — onsite visit, launch, documentary, implementation journey",
)

#appendix-row(
  "12–16",
  "Chapter 04 — trainings, Secret Mission, InnoTour, mentoring",
)

#appendix-row(
  "17–18",
  "Chapter 05 — sectors and reported business results",
)

#appendix-row(
  "19–38",
  "Chapter 06 — entrepreneur / business / product photo for each of the 20 SMEs",
)

#appendix-row(
  "39",
  "Chapter 06 closing collage — all 20 SMEs",
)

#appendix-row(
  "40–42",
  "Chapter 07 — Final Pitch venue, winners, closing group",
)

#appendix-row(
  "43–44",
  "Chapter 08 — Season 2 outreach and future direction",
)

#appendix-row(
  "45",
  "Conclusion — closing project image",
)

#v(7mm)

#callout(
  "រូបភាពត្រូវការផ្ទៀងផ្ទាត់",
  [
    មុនបោះពុម្ព
    គួរផ្ទៀងផ្ទាត់
    ឈ្មោះមនុស្ស
    ព្រឹត្តិការណ៍
    ទីតាំង
    កាលបរិច្ឆេទ
    និងសិទ្ធិ
    ប្រើប្រាស់រូបភាព
    សម្រាប់ Caption
    នីមួយៗ។
  ],
)


// ============================================================
// K. PRE-PUBLICATION CHECKLIST
// ============================================================
#pagebreak()
#section-title("ឧបសម្ព័ន្ធ K — បញ្ជីផ្ទៀងផ្ទាត់មុនបោះពុម្ព")

#challenge-card(
  "01",
  "ឈ្មោះសហគ្រិន និងអាជីវកម្ម",
  [
    ផ្ទៀងផ្ទាត់
    អក្ខរាវិរុទ្ធ
    Case 09, 10, 16, 17 និង 20
    ជាមួយឯកសារ
    ផ្លូវការ។
  ],
)

#v(5mm)

#challenge-card(
  "02",
  "Recruitment Count",
  [
    បញ្ជាក់
    ចំនួន
    Interviewed SMEs
    ថាជា 30
    ឬ 50
    ប្រសិនបើ
    មាន Source Record
    ផ្លូវការបន្ថែម។
  ],
)

#v(5mm)

#challenge-card(
  "03",
  "Final Pitch Survey",
  [
    ផ្ទៀងផ្ទាត់
    Raw Survey
    ប្រសិនបើ
    ចង់បង្ហាញ
    Breakdown
    Overall Satisfaction
    ឱ្យលម្អិតជាងនេះ។
  ],
)

#v(5mm)

#challenge-card(
  "04",
  "Official Logos",
  [
    ជំនួស
    Logo Placeholder
    ដោយឯកសារ
    Logo ផ្លូវការ
    របស់ ASIP,
    SDF,
    Khmer Enterprise
    និងស្ថាប័ន
    ពាក់ព័ន្ធ។
  ],
)

#v(5mm)

#challenge-card(
  "05",
  "Official Report Title",
  [
    ផ្ទៀងផ្ទាត់
    ចំណងជើង
    ផ្លូវការ
    ដែលត្រូវប្រើ
    លើ Cover
    Title Page
    និង Metadata។
  ],
)

#v(5mm)

#challenge-card(
  "06",
  "Photo Captions",
  [
    ផ្ទៀងផ្ទាត់
    មនុស្ស
    ទីតាំង
    កាលបរិច្ឆេទ
    និងសកម្មភាព
    មុនបង្កក
    Caption។
  ],
)


// ============================================================
// APPENDIX CLOSING
// ============================================================

#pagebreak()

#text(
  font: fonts.display,
  size: 9pt,
  weight: 600,
  fill: colors.primary,
)[
  DATA INTEGRITY
]

#v(4mm)

#block[
  #set par(leading: 11pt, justify: false)
  #text(
    font: fonts.main,
    size: 26pt,
    weight: 700,
    fill: colors.primary,
  )[
    រក្សាទិន្នន័យ
    ដូចដែលប្រភពគាំទ្រ
  ]
]

#v(7mm)

របាយការណ៍នេះ
បានរៀបចំ
ព័ត៌មាន
ពីឯកសារ
ប្រភពជាច្រើន
ទៅជារចនាសម្ព័ន្ធ
របាយការណ៍
តែមួយ។

នៅកន្លែង
ដែលឯកសារប្រភព
មានទិន្នន័យ
ឬអក្ខរាវិរុទ្ធ
ខុសគ្នា
ការបោះពុម្ព
មិនគួរ
លុបបំបាត់
ភាពខុសគ្នានោះ
ដោយគ្មាន
ការផ្ទៀងផ្ទាត់
ពីប្រភព
ផ្លូវការបន្ថែម។

#v(8mm)

#line(
  length: 32mm,
  stroke: (
    paint: colors.sand,
    thickness: 1pt,
  ),
)

#v(5mm)

#text(
  font: fonts.main,
  size: 9pt,
  fill: colors.gray,
)[
  InnoLab Kampong Thom · Season 1
]
