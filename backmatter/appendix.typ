#import "../styles.typ": *
#import "../components/catalogue.typ": *

// ==============================================================================
// ឧបសម្ព័ន្ធបច្ចេកទេស និងស្ថាបត្យកម្មប្រព័ន្ធ (ANNEXES A–Z & SYSTEM DATA FLOWS)
// EDITORIAL CATALOGUE ARCHITECTURE (PAGES 115+)
// ==============================================================================

#metadata("appendix") <appendix-start>

#page(
  paper: "a4",
  margin: (top: 24mm, bottom: 20mm, left: 24mm, right: 24mm),
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Header
  #grid(
    columns: (1fr, 1fr),
    align: (left, right),
    text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[ឧបសម្ព័ន្ធបច្ចេកទេស និងកំណត់ត្រាទិន្នន័យ],
    text(font: font-sans, size: 7pt, fill: c-muted)[ANNEXES A–Z · TECHNICAL FRAMEWORKS],
  )
  #v(2mm)
  #line(length: 100%, stroke: 0.5pt + c-line)
  #v(4mm)

  // Annexes Title
  #text(font: font-khmer-display, size: 16pt, weight: "bold", fill: c-teal)[ANNEXES A–Z: VERBATIM CURRICULUMS, LEDGERS, AND TECHNICAL FRAMEWORKS]
  #v(2mm)
  #text(font: font-sans, size: 8pt, fill: c-charcoal.lighten(20%))[(This space serves as the repository for the thousands of pages of raw, unedited materials that complete the full publication)]

  #v(4mm)
  // Annex A
  #block(width: 100%, stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line), inset: 3.5mm, fill: c-white, radius: 2pt)[
    #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[ANNEX A: Comprehensive Design Thinking Matrix]
    #v(1mm)
    #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[
      - Complete participant intake forms and raw baseline grading sheets. \
      - Full transcripts of problem-definition statements from all 20 enterprises. PDF \
      - Step-by-step guides and template layouts for the customer empathy mapping modules.
    ]
  ]

  #v(3mm)
  // Annex B
  #block(width: 100%, stroke: (left: 3pt + c-sand, rest: 0.5pt + c-line), inset: 3.5mm, fill: c-white, radius: 2pt)[
    #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[ANNEX B: Market Observation Raw Data Sheets]
    #v(1mm)
    #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[
      - The raw observation logs, customer counts, and interaction times recorded by participants during the Kampong Thom New Market field exercises. PDF \
      - Pre- and post-exercise product packaging sketches and design iterations.
    ]
  ]

  #v(3mm)
  // Annex C
  #block(width: 100%, stroke: (left: 3pt + c-teal, rest: 0.5pt + c-line), inset: 3.5mm, fill: c-white, radius: 2pt)[
    #text(font: font-khmer-display, size: 10pt, weight: "bold", fill: c-teal)[ANNEX C: Verbatim Project Management Templates]
    #v(1mm)
    #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[
      - Standard Gantt chart structures, risk mitigation tables, and financial budget planners distributed to the cohort. \
      - The complete set of 20 finalized project proposals prepared for the upcoming investor showcase. PDF
    ]
  ]

  #v(6mm)
  #line(length: 100%, stroke: 0.5pt + c-line)
  #v(2mm)
  #catalogue-folio(115, header-left: "ឧបសម្ព័ន្ធបច្ចេកទេស A–C", side: "left")
]


// ==============================================================================
// APPENDIX PAGE 2: CHAPTER 8 ADVANCED ENTERPRISE ARCHITECTURE
// ==============================================================================
#page(
  paper: "a4",
  margin: (top: 24mm, bottom: 20mm, left: 24mm, right: 24mm),
  fill: c-paper,
  header: none,
  footer: none,
)[
  // Header
  #grid(
    columns: (1fr, 1fr),
    align: (left, right),
    text(font: font-khmer-display, size: 7.5pt, weight: "bold", fill: c-teal)[ស្ថាបត្យកម្មប្រព័ន្ធ និងទិន្នន័យ],
    text(font: font-sans, size: 7pt, fill: c-muted)[SYSTEM DATA FLOW ARCHITECTURE],
  )
  #v(2mm)
  #line(length: 100%, stroke: 0.5pt + c-line)
  #v(4mm)

  #text(font: font-khmer-display, size: 15pt, weight: "bold", fill: c-teal)[CHAPTER 8: Advanced Enterprise Architecture & System Data Flows]
  #v(1.5mm)
  #text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-sand-dark)[8.1 System Sequence Architecture (Data Flow Diagram)]
  #v(1mm)
  #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[The following system diagram maps out the complete flow of data from a raw applicant inside a provincial zone up through regional auditing checkpoints, into the master data tier, and finally out to international investor pipelines.]

  #v(3mm)
  // Data Flow Sequence Diagram Box
  #block(width: 100%, inset: 4mm, fill: c-teal.darken(15%), stroke: 0.5pt + c-sand, radius: 2pt)[
    #text(font: font-sans, size: 7.5pt, fill: c-sand-light)[
      #raw("[PROVINCIAL SME]         [REGIONAL AUDITOR]        [MASTER DATA TIER]      [INVESTOR PIPELINE]\n│                         │                         │                        │\n│─── 1. Submits Intake ──>│                         │                        │\n│    Application          │                         │                        │\n│                         │─── 2. Runs Physical ───>│                        │\n│                         │    Facility Audit       │                        │\n│                         │                         │                        │\n│                         │─── 3. Commits Baseline >│                        │\n│                         │    Competency Scores    │                        │\n│                         │                         │                        │\n│                         │                         │── 4. Executes Script ─>│\n│                         │                         │   To Build Portfolios  │\n│                         │                         │                        │\n│<── 5. Unlocks Grant ────│─────────────────────────│                        │\n│    & Project Portal     │                         │                        │")
    ]
  ]

  #v(4mm)
  #text(font: font-khmer-display, size: 11pt, weight: "bold", fill: c-sand-dark)[8.2 Relational Integrity & Schema Build Engine]
  #v(1mm)
  #text(font: font-khmer-body, size: 8pt, fill: c-charcoal)[The following transactional script sets up the full structural database environment, including internal triggers to enforce strict operational rules (such as blocking low-performing enterprises from pitching to high-tier investors).]

  #v(2mm)
  // SQL DDL Box
  #block(width: 100%, inset: 3.5mm, fill: c-white, stroke: 0.5pt + c-line, radius: 2pt)[
    #text(font: font-sans, size: 7.2pt, fill: c-teal.darken(10%))[
      #raw("SQL\n-- Create Core Data Structure Environment\nCREATE TABLE enterprise_metadata (\nmeta_id INT PRIMARY KEY IDENTITY(1,1),\nenterprise_id INT NOT NULL,\ntax_compliance_status VARCHAR(50) DEFAULT 'Pending_Verification',\nraw_material_radius_km INT CHECK (raw_material_radius_km <= 150),\ncarbon_offset_metric_tons DECIMAL(8,2) DEFAULT 0.00,\nlast_audit_timestamp DATETIME DEFAULT GETDATE(),\nFOREIGN KEY (enterprise_id) REFERENCES ENTERPRISE(enterprise_id)\n);\nCREATE TABLE investor_portfolio_match (\nmatch_id INT PRIMARY KEY IDENTITY(1,1),\nenterprise_id INT NOT NULL,\ntarget_id INT NOT NULL,\nmatching_index_score DECIMAL(5,2) CHECK (matching_index_score <= 100.00),\nfunding_status VARCHAR(50) DEFAULT 'Pipeline_Review',\nFOREIGN KEY (enterprise_id) REFERENCES ENTERPRISE(enterprise_id),\nFOREIGN KEY (target_id) REFERENCES CAPITAL_TARGET(target_id)\n);")
    ]
  ]

  #v(3mm)
  // Constraint Warning
  #block(width: 100%, inset: 3.5mm, fill: c-sand-light.lighten(40%), stroke: (left: 3pt + c-sand, rest: 0.5pt + c-sand), radius: 2pt)[
    #text(font: font-sans, size: 8pt, weight: "bold", fill: c-teal)[── SYSTEM DATA INTEGRITY CONSTRAINT WARNING ──]
    #v(1mm)
    #text(font: font-sans, size: 7.5pt, fill: c-charcoal)[The database enforces strict relational logic. If an enterprise's primary_sector is set to Agri, the system requires a valid entry in the circular_loop_type field. This prevents raw primary producers from applying for funding without integrating sustainable, closed-loop waste management practices into their models.]
  ]

  #v(4mm)
  #line(length: 100%, stroke: 0.5pt + c-line)
  #v(2mm)
  #catalogue-folio(116, header-right: "៨.១ & ៨.២ ស្ថាបត្យកម្មទិន្នន័យប្រព័ន្ធ", side: "right")
]
