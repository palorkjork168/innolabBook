#import "../styles.typ": *
#import "../components/catalogue.typ": *

// ==============================================================================
// CONCLUSION: EXECUTIVE SUMMARY (ENGLISH VERBATIM) & ASIP FORMAL SUBMISSION
// EDITORIAL CATALOGUE ARCHITECTURE (2 FACING SPREADS · PAGES 111–114)
// ==============================================================================

#label("ch-conclusion")

// ==============================================================================
// SPREAD 1 · PAGE 111 (VERSO / LEFT): ENGLISH EXECUTIVE SUMMARY (DEEP TEAL BLOCK)
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
  )[INNOLAB KAMPONG THOM · EXECUTIVE SUMMARY])

  // Section Heading
  #place(top + left, dx: 24mm, dy: 28mm, stack(
    spacing: 3mm,
    text(font: font-khmer-display, size: 18pt, weight: "bold", fill: c-paper)[Executive Summary],
    line(length: 162mm, stroke: 1.5pt + c-sand),
  ))

  // English Executive Summary Part 1
  #place(top + left, dx: 24mm, dy: 50mm, stack(
    spacing: 3.5mm,
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-teal.lighten(10%),
      stroke: 0.5pt + c-sand.transparentize(50%),
      radius: 2pt,
    )[
      #text(font: font-sans, size: 9pt, weight: "bold", fill: c-sand)[Introduction]
      #v(1mm)
      #text(font: font-sans, size: 8pt, fill: c-white)[
        InnoLab Kampong Thom is an innovation and business development program implemented by Angkor Social Innovation Park (ASIP) to strengthen the competitiveness, resilience, and growth of small and medium-sized enterprises (SMEs) in Kampong Thom Province. The initiative provides entrepreneurs with access to capacity-building training, mentorship, business advisory services, networking opportunities, and innovation tools that enable them to improve products, services, processes, and business models. By fostering collaboration among SMEs, government institutions, academia, development partners, and the private sector, InnoLab aims to build a vibrant local innovation ecosystem that promotes entrepreneurship, creates economic opportunities, and contributes to sustainable and inclusive regional development.
      ]
    ],
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-teal.darken(10%),
      stroke: 0.5pt + c-sand.transparentize(60%),
      radius: 2pt,
    )[
      #text(font: font-sans, size: 9pt, weight: "bold", fill: c-sand)[About SMEs]
      #v(1mm)
      #text(font: font-sans, size: 7.8pt, fill: c-sand-light)[
        - As shown in Figure 1, InnoLab Kampong Thom Cohort 1 comprises 20 SMEs representing four key sectors. The agriculture and agro-industry sector accounted for the largest share at 40%, followed by manufacturing (26.7%), handicrafts (20%), and tourism (13.3%). This diverse sectoral representation reflects the program's commitment to supporting enterprises with strong potential for innovation and local economic impact. \
        - Based on Figure 2, the participating SMEs were generally well-established businesses. The largest proportion (33.3%) had been operating for 6–10 years, while enterprises with 1–3 years and more than 11 years of operation each represented 26.7% of the cohort. This balanced mix of emerging and mature businesses created opportunities for both growth-stage innovation and business transformation.
      ]
    ],
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-teal.darken(10%),
      stroke: 0.5pt + c-sand.transparentize(60%),
      radius: 2pt,
    )[
      #text(font: font-sans, size: 9pt, weight: "bold", fill: c-sand)[Business Model Analysis]
      #v(1mm)
      #text(font: font-sans, size: 7.8pt, fill: c-sand-light)[
        - As illustrated in Figures 3 and 4, participation in InnoLab Kampong Thom contributed to the expansion of SMEs' business networks and strategic partnerships. Prior to joining the program (Figure 3), the majority of respondents (35.7%) reported having only 1–3 key partners, while 21.4% each had 7–10 partners and more than 10 partners. Following participation in InnoLab (Figure 4), although 30.8% of SMEs still reported 1–3 partners, the proportion of businesses with broader partnership networks increased, with 23.1% having 7–10 partners, and 15.4% each reporting 3–5, 5–7, and more than 10 partners which suggests that InnoLab facilitated valuable networking opportunities, enabling SMEs to establish new collaborations and strengthen their business ecosystems. \
        - According to Figure 5, participating SMEs reported notable improvements in their business operations after joining InnoLab. The majority highlighted enhancements in product packaging, making their products more attractive and market-ready. Many enterprises also transitioned from manual production methods to semi-automated processes, improving operational efficiency and productivity. In addition, SMEs reported implementing more standardized production and operational procedures, contributing to better product quality, consistency, and overall business management. \
        - A comparison between Figures 6 and 7 indicates positive business growth among participating SMEs following their involvement in InnoLab. Before joining the program (Figure 6), 46.7% of enterprises were classified as micro-sized, 40% as small-sized, and 13.3% as medium-sized. After participation (Figure 7), the proportion of micro-sized enterprises decreased to 40%, while the share of medium-sized enterprises increased from 13.3% to 20%, with small-sized enterprises remaining stable at 40%. This shift suggests that some micro enterprises successfully expanded their operations and progressed into the medium enterprise category, reflecting the program's contribution to business growth and scalability. \
        - A comparison of Figures 8 and 9 demonstrates a significant improvement in SMEs' market visibility following participation in InnoLab. Prior to the program (Figure 8), 50% of respondents rated their market visibility impact as 2 (Limited Impact), while the remaining 50% rated it as 3 (High Impact). After completing the program (Figure 9), 60% of SMEs rated their market visibility as 3 (High Impact) and 40% rated it as 4 (Very High Impact). Notably, no respondents reported limited impact after participating in the program, indicating that InnoLab effectively enhanced SMEs' exposure, branding, and access to broader markets. \
        - As shown in Figure 10, participating SMEs generally perceived InnoLab as having a positive impact on workforce skills and development. Using a four-point effectiveness scale, 60% of respondents rated the program's contribution as 3 (Moderately Effective), while 20% rated it as 4 (Highly Effective) and the remaining 20% rated it as 2 (Low Effectiveness). Overall, the findings indicate that InnoLab successfully strengthened workforce capabilities through training, mentoring, and business development support, while also highlighting opportunities to further enhance the program's impact on enterprise skill development. \
        - A comparison between Figures 11 and 12 indicates a notable improvement in the business management practices of participating SMEs following their involvement in InnoLab. Before joining the project (Figure 11), 53.3% of respondents assessed their businesses as operating at a lower management level, while 46.7% considered themselves to be at a middle management level. After completing the program (Figure 12), 80% reported reaching the middle management level, 13.3% remained at the lower management level, and 6.7% progressed to the top management level. This shift suggests that InnoLab contributed to strengthening managerial capabilities, strategic planning, and organizational practices, enabling SMEs to adopt more structured and professional business management approaches. \
        - A comparison of Figures 13 and 14 indicates that there were no significant changes in the digital marketing practices of participating SMEs, particularly regarding the use of social media platforms. Most businesses continued to rely on the same digital channels before and after participating in InnoLab, suggesting that while the program effectively strengthened internal business capabilities, its impact on expanding or diversifying digital marketing strategies was relatively limited. This highlights an opportunity for future cohorts to place greater emphasis on digital marketing, online branding, and digital customer engagement.
      ]
    ],
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-teal.lighten(30%)))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    111,
    header-left: "EXECUTIVE SUMMARY · PART I",
    side: "left",
    folio-color: c-sand,
    color: c-sand-light,
  ))
]


// ==============================================================================
// SPREAD 1 · PAGE 112 (RECTO / RIGHT): EXECUTIVE SUMMARY PART 2 (WARM PAPER)
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
  )[INNOLAB KAMPONG THOM · EXECUTIVE SUMMARY (CONT)])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "Innovation, Challenges & Recommendations",
    preset: "lg",
    size: 16pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Stack
  #place(top + left, dx: 24mm, dy: 66mm, stack(
    spacing: 3.5mm,
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-white,
      stroke: 0.5pt + c-line,
      radius: 2pt,
    )[
      #text(font: font-sans, size: 9pt, weight: "bold", fill: c-teal)[Innovation]
      #v(1mm)
      #text(font: font-sans, size: 7.8pt, fill: c-charcoal)[
        - As shown in Figure 15, InnoLab successfully encouraged SMEs to adopt multiple forms of innovation. All participating SMEs (100%) reported undertaking product development, making it the most common area of innovation. This was followed by process improvement (66.7%), technology adoption (53.3%), and customer experience enhancement (46.7%). These findings indicate that the program promoted innovation beyond product development by encouraging enterprises to improve operational efficiency, embrace technology, and enhance customer value. \
        - According to Figure 16, SMEs generally experienced improvements in the quality of their products and services following the project. Using a four-point rating scale, 60% of respondents rated the improvement as 3 (Moderately Improved), while 20% rated it as 4 (Significantly Improved). The remaining 20% selected 2, indicating relatively limited improvement. Overall, the findings suggest that InnoLab contributed positively to enhancing product and service quality across participating enterprises. \
        - As illustrated in Figure 17, the majority of SMEs perceived that InnoLab strengthened their business competitiveness. 73.3% of respondents rated the program's impact as 3 (Moderately Improved Competitiveness), indicating that the project helped enterprises become more competitive through improved products, business practices, and innovation capabilities. While the results demonstrate positive outcomes, they also suggest opportunities to further increase the program's impact on enterprise competitiveness. \
        - Figure 18 shows that most SMEs successfully incorporated innovations introduced through the program into their business operations. 60% of respondents reported that innovations were largely integrated, while 13.3% stated they had fully integrated them into their businesses. Meanwhile, 26.7% indicated that innovations had been partially integrated. These findings demonstrate that the majority of participating SMEs were able to translate knowledge gained through InnoLab into practical business improvements. \
        - A comparison between Figures 19 and 20 demonstrates a substantial increase in SMEs' understanding of innovation after participating in InnoLab. Prior to the program (Figure 19), 60% of respondents rated their understanding as 2 (Limited), 20% rated it as 3 (Good), and 20% selected 1 (Very Bad). Following the project (Figure 20), 73.3% rated their understanding as 4 (Very Good), while 20% selected 3 (Good) and only 6.7% remained at 2 (Limited). The complete elimination of the lowest rating demonstrates that InnoLab significantly improved participants' knowledge and appreciation of innovation concepts and their application in business.
      ]
    ],
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-white,
      stroke: (left: 3pt + c-sand-dark, rest: 0.5pt + c-line),
      radius: 2pt,
    )[
      #text(font: font-sans, size: 9pt, weight: "bold", fill: c-teal)[Challenges]
      #v(1mm)
      #text(font: font-sans, size: 7.8pt, fill: c-charcoal)[
        As shown in Figure 21, participating SMEs continue to face several challenges in sustaining innovation after completing the program. The two most commonly identified barriers were financial constraints and the lack of skilled workforce, each cited by 60% of respondents. Market competition was identified by 46.7%, while technological barriers were reported by 26.7%. These findings indicate that although SMEs have strengthened their innovation capacity, access to financial resources, skilled talent, and technological support remains essential for sustaining long-term innovation.
      ]
    ],
    block(
      width: 162mm,
      inset: 4mm,
      fill: c-sand-light.lighten(40%),
      stroke: (left: 3pt + c-sand, rest: 0.5pt + c-sand),
      radius: 2pt,
    )[
      #text(font: font-sans, size: 9pt, weight: "bold", fill: c-teal)[Recommendations]
      #v(1mm)
      #text(font: font-sans, size: 7.8pt, fill: c-charcoal)[
        According to Figure 22, SMEs identified several forms of support needed to continue innovating in the future. The most frequently requested intervention was additional training and workshops, selected by 80% of respondents, highlighting the continued demand for capacity-building opportunities. This was followed by networking opportunities (66.7%), emphasizing the importance of partnerships and business connections, and financial assistance (53.3%), reflecting the ongoing need for investment to implement innovative ideas. These findings suggest that future InnoLab programs should combine continuous capacity development, stronger ecosystem networking, and improved access to finance to maximize the long-term impact on SME innovation and growth.
      ]
    ],
  ))

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    112,
    header-right: "EXECUTIVE SUMMARY · PART II",
    side: "right",
  ))
]


// ==============================================================================
// SPREAD 2 · PAGE 113 (VERSO / LEFT): ASIP FORMAL SUBMISSION (WARM PAPER)
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
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · លិខិតបញ្ជាក់របាយការណ៍])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "លិខិតបញ្ជាក់ និងការទទួលខុសត្រូវលើរបាយការណ៍",
    preset: "lg",
    size: 16pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // ASIP Formal Submission Box
  #place(top + left, dx: 24mm, dy: 66mm, block(
    width: 162mm,
    inset: 6mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    radius: 3pt,
  )[
    #text(font: font-khmer-display, size: 10.5pt, weight: "bold", fill: c-teal)[Report Compiled and Submitted by:]
    #v(3mm)
    #text(font: font-khmer-display, size: 9.5pt, weight: "bold", fill: c-charcoal)[The Executive Director & Leadership Team of the Angkor Social Innovation Park (ASIP)]
    #h(2mm) #text(font: font-khmer-display, size: 7pt, fill: c-charcoal.lighten(40%))[(PDF)]
    #v(4mm)
    #line(length: 150mm, stroke: 0.5pt + c-line)
    #v(4mm)
    #text(font: font-khmer-body, size: 8.5pt, fill: c-charcoal)[
      ឯកសាររបាយការណ៍នេះ ត្រូវបានរៀបចំ និងផ្ទៀងផ្ទាត់យ៉ាងម៉ត់ចត់បំផុត ដោយក្រុមការងារជំនាញ និងថ្នាក់ដឹកនាំនៃក្រុមហ៊ុន អង្គរ សូសល អ៊ិននើវេសិន ផាក ឯ.ក (ASIP) សម្រាប់គោរពជូន ឯកឧត្តម វង្សី វិស្សុត ឧបនាយករដ្ឋមន្ត្រីប្រចាំការ រដ្ឋមន្ត្រីទទួលបន្ទុកទីស្តីការគណៈរដ្ឋមន្ត្រី និងប្រធានក្រុមការងាររាជរដ្ឋាភិបាលចុះជួយមូលដ្ឋានខេត្តកំពង់ធំ។
    ]
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    113,
    header-left: "លិខិតបញ្ជាក់របាយការណ៍ផ្លូវការ",
    side: "left",
  ))
]


// ==============================================================================
// SPREAD 2 · PAGE 114 (RECTO / RIGHT): CONTENT VERIFICATION & SEALS (WARM PAPER)
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
  )[មន្ទីរពិសោធន៍នវានុវត្តន៍កំពង់ធំ · ការផ្ទៀងផ្ទាត់ខ្លឹមសារ])

  // Title
  #place(top + left, dx: 24mm, dy: 28mm, khmer-display-title(
    "Phase 2 Collaborative Content Verification",
    preset: "lg",
    size: 15pt,
    color: c-teal,
    rule-length: 120mm,
    rule-stroke: 1pt + c-sand,
  ))

  // Verification Stack
  #place(top + left, dx: 24mm, dy: 66mm, block(
    width: 162mm,
    inset: 5mm,
    fill: c-white,
    stroke: 0.5pt + c-line,
    radius: 2pt,
  )[
    #text(font: font-sans, size: 8.5pt, fill: c-charcoal)[
      To ensure every page of this 100-page document meets precise operational standards before final printing, please provide the next set of primary source materials to integrate:
    ]
    #v(3mm)
    #stack(
      spacing: 2mm,
      text(font: font-sans, size: 8pt, fill: c-charcoal)[- Verbatim Training Text: Should we insert the complete, unedited training manuals used for the Design Thinking and Agile Project Management modules? PDF],
      text(font: font-sans, size: 8pt, fill: c-charcoal)[- Raw Financial Data: Do you want to include the itemized expense receipts and exact cash-flow projections for the upcoming investor pitch showcase? PDF],
      text(font: font-sans, size: 8pt, fill: c-charcoal)[- Detailed SME Profiles: Would you like to add the full profiles, employee counts, and raw material sourcing details for the remaining 15 cohort members? PDF],
    )
  ])

  // Bottom Datum Line & Folio
  #place(top + left, dx: 24mm, dy: 268mm, line(length: 162mm, stroke: 0.5pt + c-line))
  #place(top + left, dx: 24mm, dy: 274mm, catalogue-folio(
    114,
    header-right: "ការផ្ទៀងផ្ទាត់ខ្លឹមសារកម្រិតស្ថាប័ន",
    side: "right",
  ))
]
