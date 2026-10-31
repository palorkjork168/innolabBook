#import "../styles.typ": *
#import "../components/catalogue.typ": *

// ==============================================================================
// TABLE OF CONTENTS · 2-PAGE SPREAD (មាតិកា ២ ទំព័រ ជាភាសាខ្មែរ ១០០%)
// ==============================================================================

#let bg-color = c-teal
#let text-primary = c-white
#let text-accent = c-sand
#let text-muted = c-white.transparentize(35%)
#let line-color = c-white.transparentize(80%)
#let line-accent = c-sand

#let format-kh-page(p) = {
  if type(p) == int {
    if p < 10 {
      "០" + to-khmer-num(p)
    } else {
      to-khmer-num(p)
    }
  } else if type(p) == str {
    to-khmer-num(p)
  } else {
    str(p)
  }
}

// Helper for Chapter Header Row
#let toc-chapter-header(badge, title, fallback-page: "", label-id: none) = {
  let page-val = context {
    if label-id != none {
      let targets = query(label(label-id))
      if targets.len() > 0 {
        let p = counter(page).at(targets.first().location()).first()
        format-kh-page(p)
      } else {
        fallback-page
      }
    } else {
      fallback-page
    }
  }

  let row = block(
    width: 100%,
    inset: (top: 2.2mm, bottom: 1.5mm),
    stroke: (bottom: 0.8pt + line-accent),
  )[
    #grid(
      columns: (if badge != none { auto } else { 0pt }, 1fr, auto),
      gutter: if badge != none { 3mm } else { 0mm },
      align: horizon,
      if badge != none [
        // Increased size for ជំពូក button only as requested
        #rect(fill: c-sand, radius: 2.5pt, inset: (x: 3mm, y: 1.3mm))[
          #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[#badge]
        ]
      ] else [ #none ],
      [
        #text(font: font-khmer-display, size: 8.8pt, weight: "bold", fill: text-accent)[#title]
      ],
      [
        #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: text-accent)[#page-val]
      ]
    )
  ]

  context {
    if label-id != none {
      let targets = query(label(label-id))
      if targets.len() > 0 {
        link(targets.first().location())[#row]
      } else {
        row
      }
    } else {
      row
    }
  }
}

// Helper for Subsection Row (unchanged size)
#let toc-sub-item(title, fallback-page: "", label-id: none, is-frontmatter: false) = {
  let page-val = context {
    if is-frontmatter {
      fallback-page
    } else if label-id != none {
      let targets = query(label(label-id))
      if targets.len() > 0 {
        let p = counter(page).at(targets.first().location()).first()
        format-kh-page(p)
      } else {
        fallback-page
      }
    } else {
      fallback-page
    }
  }

  let row = block(
    width: 100%,
    inset: (y: 1.25mm),
    stroke: (bottom: 0.35pt + line-color),
  )[
    #grid(
      columns: (1fr, auto),
      gutter: 3mm,
      align: horizon,
      [
        #text(font: font-khmer-display, size: 8pt, fill: text-primary)[#title]
      ],
      [
        #text(font: font-khmer-display, size: 8.5pt, weight: "bold", fill: text-accent.lighten(15%))[#page-val]
      ]
    )
  ]

  context {
    if label-id != none {
      let targets = query(label(label-id))
      if targets.len() > 0 {
        link(targets.first().location())[#row]
      } else {
        row
      }
    } else {
      row
    }
  }
}

// ==============================================================================
// PAGE 1: LEFT PAGE OF SPREAD (FRONT MATTER, CHAPTER 1, CHAPTER 2)
// ==============================================================================
#set page(
  paper: "a4",
  margin: (top: 20mm, bottom: 18mm, left: 22mm, right: 20mm),
  fill: bg-color,
  header: none,
  footer: none,
)

// Header Meta
#grid(
  columns: (1fr, auto),
  text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: text-accent)[ទំព័រ ii · រចនាសម្ព័ន្ធមាតិកា],
  text(font: font-khmer-display, size: 7.5pt, fill: text-muted)[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ],
)

#v(5mm)

// Title Block in Pure Khmer
#grid(
  columns: (auto, 1fr),
  gutter: 4mm,
  align: bottom,
  [
    #text(font: font-khmer-display, size: 36pt, weight: "bold", fill: text-accent)[មាតិកា]
  ],

)

#v(1.5mm)
#line(length: 100%, stroke: 1.2pt + line-accent)
#v(2mm)

// FRONT MATTER
#toc-sub-item("សេចក្តីបញ្ជាក់អំពីវិសាលភាពរបាយការណ៍", fallback-page: "i", label-id: "fm-ack", is-frontmatter: true)
#toc-sub-item("សេចក្តីថ្លែងអំណរគុណ និងសារស្ថាប័ន", fallback-page: "iv", label-id: "fm-ack", is-frontmatter: true)
#toc-sub-item("សេចក្តីសង្ខេបប្រតិបត្តិ", fallback-page: "v", label-id: "fm-exec", is-frontmatter: true)

#v(1.5mm)

// CHAPTER 1 (Duplicate ជំពូកទី ១ removed from title)
#toc-chapter-header("ជំពូក ០១", "ទិដ្ឋភាពទូទៅ និងក្របខ័ណ្ឌយុទ្ធសាស្ត្រគម្រោង", fallback-page: "០១", label-id: "ch-01")
#toc-sub-item("១.១ បរិបទភូមិសាស្ត្រ និងសេដ្ឋកិច្ចខេត្តកំពង់ធំ", fallback-page: "០១")
#toc-sub-item("១.២ គុណតម្លៃ និងសារៈសំខាន់យុទ្ធសាស្ត្រទាំង ៥ នៃនវានុវត្តន៍", fallback-page: "០២")
#toc-sub-item("១.៣ គម្រោងមន្ទីពិសោធន៍នវានុវត្តន៍កំពង់ធំ និងការផ្សារភ្ជាប់យុទ្ធសាស្ត្របញ្ចកោណ", fallback-page: "០៣")
#toc-sub-item("១.៤ បញ្ហាប្រឈមជាប្រព័ន្ធក្នុងមូលដ្ឋាន", fallback-page: "០៤")
#toc-sub-item("១.៥ គោលបំណង និងនវានុវត្តន៍លើ ៤ វិមាត្រស្នូល", fallback-page: "០៥")
#toc-sub-item("១.៦ តួនាទីរបស់ឧទ្យាននវានុវត្តន៍សង្គមអង្គរ (ASIP)", fallback-page: "០៦")
#toc-sub-item("១.៧ ដំណាក់កាលស្នូលទាំង ៧ នៃការអនុវត្តគម្រោង", fallback-page: "០៧")

#v(1.5mm)

// CHAPTER 2 (Duplicate ជំពូកទី ២ removed from title)
#toc-chapter-header("ជំពូក ០២", "កំណត់ត្រាសកម្មភាពប្រតិបត្តិទាំង ១០ នៃគម្រោង", fallback-page: "០៨", label-id: "ch-02")
#toc-sub-item("ដំណាក់កាលទី ១៖ ដំណើរការវាយតម្លៃ និងជ្រើសរើសសហគ្រាស", fallback-page: "០៨")
#toc-sub-item("ដំណាក់កាលទី ២៖ យុទ្ធនាការចុះផ្សព្វផ្សាយផ្ទាល់", fallback-page: "០៩")
#toc-sub-item("ដំណាក់កាលទី ៣៖ វគ្គបណ្តុះបណ្តាលធំៗទាំង៣", fallback-page: "១០")
#toc-sub-item("ដំណាក់កាលទី ៤៖ ដំណើរទស្សនកិច្ច InnoTour", fallback-page: "១២")
#toc-sub-item("ដំណាក់កាលទី ៥៖ កម្មវិធីផលិតខ្សែវីដេអូឯកសារសហគ្រាស", fallback-page: "១៤")
#toc-sub-item("ដំណាក់កាលទី ៦៖ ការប្រឹក្សាយោបល់ និងការបង្វឹកផ្ទាល់", fallback-page: "១៦")
#toc-sub-item("ដំណាក់កាលទី ៧៖ ការប្រកួតប្រជែងផ្តាច់ព្រ័ត្រ ប្រកាសលទ្ធផល និងពិធីប្រគល់រង្វាន់", fallback-page: "១៨")

#v(4mm)
#grid(
  columns: (1fr, auto),
  align: horizon,
  [

  ],
  [
    #text(font: font-khmer-display, size: 7.5pt, fill: text-muted)[ii]
  ]
)

#pagebreak()

// ==============================================================================
// PAGE 2: RIGHT PAGE OF SPREAD (CHAPTER 3, CHAPTER 4, CHAPTER 5, APPENDIX)
// ==============================================================================
#set page(
  margin: (top: 20mm, bottom: 18mm, left: 20mm, right: 22mm),
)

// Header Meta
#grid(
  columns: (1fr, auto),
  text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: text-accent)[ទំព័រ iii · បញ្ជីមាតិកាលម្អិត],
  text(font: font-khmer-display, size: 7.5pt, fill: text-muted)[រដូវកាលទី១ · ២០២៥–២០២៦],
)

#v(5mm)

// Motto in Pure Khmer




#v(2mm)

// CHAPTER 3 (Duplicate ជំពូកទី ៣ removed from title)
#toc-chapter-header("ជំពូក ០៣", "ករណីសិក្សាសហគ្រាសឆ្នើមទាំង ២០", fallback-page: "២៣", label-id: "ch-03")
#toc-sub-item("ផ្នែកកសិកម្មទំនើប និងធាតុចូលកសិកម្ម (សហគ្រាស ៣.០១ – ៣.០៨)", fallback-page: "២៤")
#toc-sub-item("ផ្នែកកែច្នៃចំណីអាហារ និងភេសជ្ជៈ (សហគ្រាស ៣.០៩ – ៣.១២)", fallback-page: "៣០")
#toc-sub-item("ផ្នែកទេសចរណ៍ និងបដិសណ្ឋារកិច្ចសហគមន៍ (សហគ្រាស ៣.១៣ – ៣.១៦)", fallback-page: "៣៣")
#toc-sub-item("ផ្នែកសិប្បកម្មកែច្នៃ និងសេដ្ឋកិច្ចចក្រា (សហគ្រាស ៣.១៧ – ៣.២០)", fallback-page: "៣៥")

#v(1.5mm)

// CHAPTER 4 (Duplicate ជំពូកទី ៤ removed from title)
#toc-chapter-header("ជំពូក ០៤", "ការរកឃើញសំខាន់ៗ និងការវាយតម្លៃផលប៉ះពាល់", fallback-page: "៣៧", label-id: "ch-04")
#toc-sub-item("៤.១ ការវិភាគលក្ខណៈទូទៅនៃសហគ្រាស", fallback-page: "៣៧")
#toc-sub-item("៤.២ បរិវត្តកម្មគំរូអាជីវកម្ម និងដៃគូយុទ្ធសាស្ត្រ", fallback-page: "៣៨")
#toc-sub-item("៤.៣ ការអភិវឌ្ឍសមត្ថភាពគ្រប់គ្រង និងធនធានមនុស្ស", fallback-page: "៤១")
#toc-sub-item("៤.៤ ការស្ទង់មតិលើកម្រិតនវានុវត្តន៍ និងសមត្ថភាពប្រកួតប្រជែង", fallback-page: "៤៣")
#toc-sub-item("៤.៥ បញ្ហាប្រឈម និងតម្រូវការគាំទ្រជាបន្ត", fallback-page: "៤៦")
#toc-sub-item("៤.៦ ការសំយោគលទ្ធផល និងសេចក្តីសន្និដ្ឋាន", fallback-page: "៤៨")

#v(1.5mm)

// CHAPTER 5 (Duplicate ជំពូកទី ៥ removed from title)
#toc-chapter-header("ជំពូក ០៥", "ផែនការ និងយុទ្ធសាស្ត្របន្ទាប់ (Strategy 2026–2028)", fallback-page: "៥០", label-id: "ch-05")
#toc-sub-item("៥.១ ចក្ខុវិស័យឆ្ពោះទៅឆ្នាំ២០២៨ និងគោលដៅ ១០០ សហគ្រិន", fallback-page: "៥០")
#toc-sub-item("៥.២ សភាពការណ៍ និងវឌ្ឍនភាពនៃការរៀបចំរដូវកាលទី ២", fallback-page: "៥១")
#toc-sub-item("៥.៣ ការពង្រីកវិសាលភាព ២៥ រាជធានី-ខេត្ត និងកិច្ចសហការដៃគូ", fallback-page: "៥២")

#v(1.5mm)

// APPENDIX (Duplicate ឧបសម្ព័ន្ធ removed from title)
#toc-chapter-header("ឧបសម្ព័ន្ធ", "សូចនាករគន្លឹះ និងកំណត់ត្រារដ្ឋបាល", fallback-page: "៥៣", label-id: "appendix-start")

#v(4mm)
#grid(
  columns: (1fr, auto),
  align: horizon,
  text(font: font-khmer-display, size: 7pt, fill: text-muted)[របាយការណ៍សមិទ្ធផលផ្លូវការ · រដូវកាលទី១],
  text(font: font-khmer-display, size: 7.5pt, fill: text-muted)[iii],
)
