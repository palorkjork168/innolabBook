#import "../styles.typ": *

#set text(font: fonts.main)

#set page(
  paper: "a3",
  flipped: true,
  margin: 0mm,
  fill: colors.paper,
)

#let render-spread(
  num-str,
  title,
  english,
  intro,
  photo-src,
  caption-text,
  focus-text,
) = {
  grid(
    columns: (210mm, 210mm),
    rows: (297mm),
    
    // LEFT PAGE (Teal)
    block(
      width: 210mm,
      height: 297mm,
      fill: colors.primary,
    )[
      #place(top + right, dx: 25mm, dy: -30mm)[
        #circle(
          radius: 80mm,
          fill: colors.primary.lighten(8%).transparentize(85%),
        )
      ]

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
          #place(top + right, dx: -26mm, dy: -2.2mm)[
            #circle(
              radius: 2.5mm,
              stroke: 1.5pt + colors.sand,
              fill: colors.primary,
            )
          ]
        ]
      ]

      #place(top + left, dx: 26mm, dy: 34mm)[
        #block(width: 158mm)[
          #text(
            font: fonts.display,
            size: 9.5pt,
            weight: 700,
            fill: colors.sand,
            tracking: 2.8pt,
          )[
            CHAPTER #num-str · INNOLAB KAMPONG THOM
          ]

          #v(14mm)

          #text(
            font: fonts.display,
            size: 120pt,
            weight: 800,
            fill: colors.white,
          )[
            #num-str
          ]

          #v(3mm)

          #line(
            length: 38mm,
            stroke: (
              paint: colors.sand,
              thickness: 2.5pt,
            ),
          )

          #v(8mm)

          #text(
            font: fonts.main,
            size: 28pt,
            weight: 700,
            fill: colors.white,
            spacing: 130%,
          )[
            #title
          ]

          #if english != none [
            #v(4.5mm)
            #text(
              font: fonts.display,
              size: 13.5pt,
              weight: 600,
              fill: colors.sage,
              tracking: 1.8pt,
            )[
              #upper(english)
            ]
          ]
        ]
      ]

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
    ],

    // RIGHT PAGE (Light)
    block(
      width: 210mm,
      height: 297mm,
      fill: colors.paper,
      inset: (top: 24mm, bottom: 22mm, left: 24mm, right: 22mm),
    )[
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
          CHAPTER #num-str OVERVIEW
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

      #text(
        font: fonts.main,
        size: 17pt,
        weight: 700,
        fill: colors.primary,
      )[
        សេចក្តីផ្តើម និងខ្លឹមសារសង្ខេប
      ]

      #v(4mm)

      #block(
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

      #v(7mm)

      #block(
        width: 100%,
        height: 68mm,
        radius: 3pt,
        clip: true,
        stroke: 0.6pt + colors.line,
      )[
        #image(photo-src, width: 100%, height: 100%, fit: "cover")
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
          #caption-text
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
            #focus-text
          ]
        )
      ]
    ]
  )
}

#render-spread(
  "04",
  [ការបណ្តុះបណ្តាល ការប្រឹក្សា \ និងការចូលរួម],
  "TRAINING, MENTORING & ENGAGEMENT",
  [សមាសភាគសិក្សា របស់ InnoLab Kampong Thom ត្រូវបានរៀបចំឡើង ដើម្បីភ្ជាប់ទ្រឹស្តី ទៅការអនុវត្ត និងជួយឱ្យសហគ្រាស ស្វែងយល់អតិថិជន កំណត់បញ្ហា បង្កើតគំនិត សាកល្បងដំណោះស្រាយ និងរៀបចំការអនុវត្ត នវានុវត្តន៍ នៅក្នុងអាជីវកម្មរបស់ខ្លួន។],
  "../assets/photos/DSC_8464.jpg",
  "រូបភាព៖ សកម្មភាពបណ្តុះបណ្តាល ការណែនាំ និងការកសាងសមត្ថភាពសហគ្រាស",
  "វិធីសាស្ត្របណ្តុះបណ្តាល ការណែនាំផ្ទាល់ និងការកសាងសមត្ថភាពនវានុវត្តន៍ជាក់ស្តែង",
)
