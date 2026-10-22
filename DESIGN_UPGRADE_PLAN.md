# Visual Design Upgrade Plan — InnoLab Kampong Thom Report

> **Project:** InnoLab Kampong Thom (Season 1 Report, 2025–2026)  
> **Document Type:** Master Design System Audit & Editorial Upgrade Roadmap  
> **Status:** Phase 1 Architectural Assessment & Design Specification  
> **Constraint:** Pure Design & Art-Direction Upgrade. No content rewriting, no factual changes, non-destructive incremental rollout.

---

## 1. Current Design Audit

An exhaustive audit of the compiled 141-page publication (`main.typ`, `styles.typ`, `components/`, and all chapter files) reveals that while the project is structurally complete and technically functional, its visual language suffers from characteristic patterns of "report-like," "card-heavy," and "AI-generated" document design.

```
CURRENT DESIGN VS. TARGET EDITORIAL DESIGN

CURRENT STATE:                             TARGET EDITORIAL STATE:
┌───────────────────────────────┐          ┌───────────────────────────────┐
│ [Banner Card: Teal + Sand]    │          │ 01                            │
│ ┌───────────────────────────┐ │          │ PROVINCIAL CONTEXT            │
│ │ Card 1: Sage fill, r:2mm  │ │          │ ───────────────────────────── │
│ └───────────────────────────┘ │          │ Large Lead Narrative text     │
│ ┌───────────────────────────┐ │          │ with generous line height and │
│ │ Card 2: Paper fill, r:2mm │ │          │ deliberate asymmetric margins.│
│ └───────────────────────────┘ │          │                               │
│ ┌───────────────────────────┐ │          │ ┌───────────────┐             │
│ │ [Photo with Pill Badge]   │ │          │ │ Flush-cropped │ Pull Quote  │
│ └───────────────────────────┘ │          │ │ Image         │ in Sand /   │
│                               │          │ │ (No badges)   │ Charcoal    │
│ [Static Header & Footer]      │          │ └───────────────┘             │
└───────────────────────────────┘          └───────────────────────────────┘
  • Repetitive rounded boxes                  • Typographic authority
  • Visual clutter & low contrast             • Asymmetric grid discipline
  • Formulaic template stacking               • Intentional negative space
```

### Specific Audit Findings: Why the Current Design Looks Weak & Generic

#### 1.1 "Card-itis" and Container Overuse
- **Finding:** Across the 141 pages, there are **92 calls to `#callout`**, **37 calls to `#challenge-card`**, **42 calls to `#stat`**, and **6 calls to `#training-info`**.
- **The Problem:** Almost every piece of information is trapped inside an enclosed rectangle (`block(fill: colors.paper, radius: 2mm, stroke: 0.6pt + colors.line)` or `fill: colors.sage`). 
- **Why it looks generic:** This creates a web dashboard or mobile UI aesthetic rather than a high-end publication. Real books and editorial magazines place typography directly on the paper surface, using whitespace, scale, and subtle rules to delineate ideas rather than wrapping everything in rounded cards.

#### 1.2 Monotonous Section Headers as Corporate Banners
- **Finding:** In `components/editorial.typ` (L320–445), `editorial-section-banner` and `section-title(variant: ...)` render headings as solid teal boxes (`fill: colors.primary`) with a gold left border (`stroke: (left: 4pt + colors.sand)`) and a pill badge on the right displaying `"INNOLAB KAMPONG THOM"`.
- **The Problem:** Solid colored banner bars are a hallmark of corporate PowerPoint presentations and entry-level Canva templates.
- **Why it looks generic:** Repeating a solid colored bar across 120+ sections makes the pages visually heavy and repetitive. Editorial design uses dramatic typography, varying scale, category eyebrow labels, and hairline rules rather than heavy colored rectangles.

#### 1.3 Rigid 50/50 Symmetry and Lack of Asymmetric Grid Tension
- **Finding:** Multi-column layouts in the book almost exclusively use `#grid(columns: (1fr, 1fr))` or `#grid(columns: (auto, 1fr))`.
- **The Problem:** Symmetrical two-column grids with centered content lack dynamic rhythm.
- **Why it looks generic:** The eye tires quickly when every page divides space into equal halves. Editorial publications create visual energy through asymmetric columns (e.g., a 2-column or 3-column asymmetric grid where narrative text occupies 60% of the page width and the remaining 40% acts as breathing room, marginalia, large pull quotes, or oversized statistics).

#### 1.4 The 20-Page Case Study Monotony (Chapter 06)
- **Finding:** In `components/case-study.typ`, `#case-study-full` is invoked 20 times in succession (Physical Pages 72–91). Every single case study follows the exact same formula:
  1. `44pt` number beside `18pt` title and `9.5pt` business name.
  2. Horizontal rule.
  3. `72mm` square or landscape photo beside a `BUSINESS BACKGROUND` text block.
  4. Horizontal rule.
  5. `INNOVATION & DEVELOPMENT` text block.
- **The Problem:** 20 consecutive pages with identical geometry create intense reader fatigue.
- **Why it looks generic:** In a professionally art-directed publication, case studies belong to a recognizable visual family but employ **controlled layout archetypes** (e.g., full-height vertical portraits with sidebar narrative, asymmetric horizontal splits, highlighted outcome quotes, and key stat anchors).

#### 1.5 Pill Badges and AI-Template Clichés
- **Finding:** Photos and cards repeatedly feature floating rounded pill badges in their top-left corners (e.g., `#block(fill: colors.primary.transparentize(15%), radius: 2pt, inset: (x: 6pt, y: 3pt))[#text[CHAPTER 01 ARCHIVE]]` or `INNOLAB ARCHIVE · 2025` right-aligned in captions).
- **The Problem:** These decorative badges feel like AI-generated UI kits or social media graphics.
- **Why it looks generic:** They clutter the image area. Professional editorial design lets photographs speak clearly without badge stickers, moving metadata into elegant typographic captions below or alongside the frame.

#### 1.6 Compressed Typographic Scale Hierarchy
- **Finding:** While chapter opening numbers are oversized (`105pt`), all inner-page typography is compressed into a narrow band:
  - Section titles: `18pt`
  - Subsection titles: `13pt`
  - Body text: `10.5pt`
  - Card titles: `10.5pt` – `11pt`
- **The Problem:** The lack of scale contrast between elements makes pages look dense and uniform.
- **Why it looks generic:** Magazine typography relies on dramatic contrast—pairing a `32pt` expressive statement or a `54pt` statistic with quiet `10.5pt` narrative columns and crisp `8pt` hairline-separated metadata.

#### 1.7 Static, Disconnected Running Headers and Footers
- **Finding:** `styles.typ` (L64–149) applies an identical static header (`"INNOLAB KAMPONG THOM"` / `"របាយការណ៍គម្រោង"`) and footer on every page from page 2 to page 141.
- **The Problem:** It provides zero navigational context. A reader browsing the book cannot tell what chapter or section they are in.
- **Why it looks generic:** High-end books feature dynamic, spread-aware running folios (left page / verso showing publication and chapter title; right page / recto showing the active section topic and page number).

---

## 2. What Should Be Preserved

It is critical that the visual design upgrade **does not break the existing functional strengths** of the publication:

1. **Bilingual Typography Stack:**
   - **Khmer Script:** `Kantumruy Pro` (Google Fonts). Exceptional legibility, balanced stroke contrast, and clean rendering of Khmer consonants and subscripts.
   - **English Display & Numerics:** `Barlow` / `Barlow Condensed`. Industrial, clean, geometric, and pairs harmoniously with `Kantumruy Pro`.
2. **Khmer Typesetting Rules:**
   - `lang: "km"`
   - `justify: false` (**DO NOT CHANGE TO JUSTIFIED**): Justified text in current Typst engines causes severe word-stretching and unnatural white gaps in Khmer script because Khmer does not use spaces between words. Ragged-right (`justify: false`) is mandatory for typographic integrity.
   - `leading: 7pt` – `7.5pt`: Provides the necessary vertical clearance for stacked Khmer subscripts (`coeng`) and diacritics.
3. **Core Institutional Palette:**
   - Deep Teal (`#114554`), Warm Sand / Gold (`#D8B86C`), Soft Sage (`#DDE8E2`), Warm Paper (`#F7F7F3`), and Deep Charcoal (`#202627`). This palette is dignifying, thematic to Kampong Thom's agricultural and cultural landscape, and approved by project partners.
4. **Substantive Source Content:**
   - 100% of all narrative text, SME case histories, before/after impact scores, and survey data must remain untouched.
5. **Dynamic Navigation Architecture:**
   - The `<ch-01>` to `<ch-08>` label anchoring and dynamic `context query(...)` Table of Contents resolution.
6. **Standalone Wraparound Cover Spread:**
   - `cover-spread.typ` (432mm × 297mm) is already accurately dimensioned for 12mm spine production printing.

---

## 3. Proposed Design System

The new design system elevates the book into a **magazine-grade editorial monograph**. It replaces box-heavy decoration with **pure typographic architecture, asymmetric grid alignment, and disciplined white space**.

### 3.1 Typographic Hierarchy & Scale Contrast

| Hierarchy Level | Font Family | Size | Weight | Leading | Color | Tracking | Role & Behavior |
|---|---|---|---|---|---|---|---|
| **Display Hero Number** | Barlow | 120–140pt | 800 | Tight | Sand / Primary | -2pt | Chapter opener numbers, large stat figures |
| **Chapter Title (KM)** | Kantumruy Pro | 32–36pt | 700 | 14pt | Primary / White | 0pt | Primary chapter headline |
| **Chapter Subtitle (EN)** | Barlow Condensed | 13–15pt | 700 | 11pt | Sand / Sage | 2pt | Uppercase English chapter subtitle |
| **Section Title (Level 1)** | Kantumruy Pro | 22–26pt | 700 | 11pt | Primary | 0pt | Unboxed, anchored by hairline rule |
| **Section Subtitle (EN)** | Barlow Condensed | 9–10pt | 600 | Auto | Gray / Sand | 1.5pt | Uppercase section context tag |
| **Subsection (Level 2)** | Kantumruy Pro | 14–16pt | 600 | 9pt | Primary | 0pt | Clean narrative divider |
| **Lead Paragraph** | Kantumruy Pro | 12pt | 500 | 8.5pt | Charcoal | 0pt | Opening introductory paragraphs |
| **Body Narrative** | Kantumruy Pro | 10pt | 400 | 7.5pt | Charcoal | 0pt | Standard reading text (ragged-right) |
| **Pull Quote / Highlight** | Kantumruy Pro | 18–22pt | 600 | 11pt | Primary | 0pt | Large editorial statement (no box) |
| **Key Metric / Stat** | Barlow | 48–64pt | 700 | Tight | Primary / Sand | -1pt | Unboxed standalone KPI numbers |
| **Caption & Metadata** | Kantumruy Pro | 8pt | 400 | 6pt | Gray | 0pt | Clean photo descriptions below hairlines |
| **Eyebrow / Category Tag** | Barlow Condensed | 7.5–8.5pt | 700 | Auto | Sand | 2pt | Small uppercase tracking labels |

### 3.2 Asymmetric Editorial Grid & Spacing System

```
PAGE MARGIN & COLUMN GEOMETRY (A4: 210mm x 297mm)

Verso (Left / Even Page):                     Recto (Right / Odd Page):
┌───────────────────────────────┐             ┌───────────────────────────────┐
│ Top: 22mm                     │             │ Top: 22mm                     │
│ Outer: 18mm    Inner: 24mm    │             │ Inner: 24mm    Outer: 18mm    │
│ (Left Margin)  (Binding Gutter│             │ (Binding Gutter(Right Margin) │
│                               │             │                               │
│ ┌──────────────┐ ┌──────────┐ │             │ ┌──────────┐ ┌──────────────┐ │
│ │ Narrative    │ │ Marginal │ │             │ │ Marginal │ │ Narrative    │ │
│ │ Column (60%) │ │ Col (40%)│ │             │ │ Col (40%)│ │ Column (60%) │ │
│ └──────────────┘ └──────────┘ │             │ └──────────┘ └──────────────┘ │
│                               │             │                               │
│ Bottom: 20mm                  │             │ Bottom: 20mm                  │
└───────────────────────────────┘             └───────────────────────────────┘
```

- **Spread-Aware Margins:**
  - Inside Binding Gutter: `24mm` (prevents text vanishing into physical book spine binding).
  - Outside Margin: `18mm` (generous thumb margin for reader handling).
  - Top Margin: `22mm` (accommodates running header).
  - Bottom Margin: `20mm` (accommodates running footer).
- **Asymmetric Narrative Columns:**
  - Primary Narrative Width: `100mm` – `110mm` (ideal 55–65 character reading line length in Khmer).
  - Secondary Accent / Marginal Column: `55mm` – `60mm` (holds pull quotes, key stats, case metadata, or tall images).
  - Column Gutter: `8mm`.
- **Vertical Spacing Rhythm:**
  - Strict 4pt/8pt multiples (`3mm`, `6mm`, `10mm`, `16mm`, `24mm`). Replaces arbitrary spacing.

### 3.3 Color Strategy: Restrained & Publication-Grade

```
RESTRAINED PUBLICATION PALETTE

#114554 (Deep Teal)      -> Primary text anchor, major headings, full-bleed opener tint
#D8B86C (Warm Sand)      -> Delicate accent hairlines, uppercase tags, oversized numbers
#202627 (Deep Charcoal)  -> Primary body narrative ink (high readability, softer than #000)
#737B7C (Mid Slate Gray) -> Running folios, captions, secondary English subtitles
#F7F7F3 (Warm Paper)     -> Selected full-page background shift (Section dividers, TOC)
#DDE8E2 (Soft Sage)      -> Rare subtle structural accent tint (table headers, stats)
#D9DEDC (Hairline Gray)  -> 0.4pt structural grid dividing rules
```

- **Rule of Restraint:** Large colored boxes are eliminated. 90% of pages are white/paper with black/teal text. Accent colors (Sand `#D8B86C`) appear strictly on hairlines, numbers, and small typographic tags.

### 3.4 Image Architecture & Framing

1. **Flush Edge Crops:** Images align flush with page edges or exact grid columns, eliminating amateurish rounded borders (`radius: 0pt`).
2. **Full-Bleed Spreads:** Hero images bleed completely to edge (`margin: 0mm`) for cinematic impact at chapter openings and field visit transitions.
3. **Tall Portrait Crops:** High-impact `1:1.5` or `1:2` vertical portrait crops spanning full column height beside narrative text.
4. **Clean Captions:** Eliminating corner pill stickers. Captions sit quietly beneath an intentional `0.5pt` hairline rule in `7.5pt` slate gray.

### 3.5 Decorative & Structural Language

Borrowing from the visual reference provided:
- **Thin Hairline Rules:** `0.4pt` – `0.65pt` horizontal lines extending to exact column widths, anchoring section heads and stats.
- **Architectural Framing Marks:** Small corner bracket ticks or `+` intersection marks (`0.6pt + colors.sand`) anchoring photo corners or data tables.
- **Typographic Dot Matrices / Trajectory Accents:** Tiny geometric dot clusters or milestone dots on rule lines (`circle(radius: 1.5pt, fill: colors.sand)`) symbolizing innovation milestones.
- **Oversized Ghost Folios:** Faint, oversized chapter indicators in the margin.

### 3.6 Header & Footer System (Running Folios)

- **Verso (Left / Even Page):**
  - Top Left: `Barlow Condensed`, `7.5pt`, tracking `1.5pt`, uppercase: `INNOLAB KAMPONG THOM`
  - Top Right: `Kantumruy Pro`, `7.5pt`, weight `500`: `ជំពូកទី [Num] · [Khmer Chapter Name]`
  - Bottom Left: Page number `Barlow`, `9pt`, weight `700`, color `colors.primary`
- **Recto (Right / Odd Page):**
  - Top Left: `Kantumruy Pro`, `7.5pt`, weight `500`: Active Section Name
  - Top Right: `Barlow Condensed`, `7.5pt`, tracking `1.5pt`, uppercase: `ASIP · KE · SDF`
  - Bottom Right: Page number `Barlow`, `9pt`, weight `700`, color `colors.primary`
- **Suppression:** Automatically suppressed on all chapter opener spreads, full-bleed images, and front cover.

---

## 4. Page Archetypes (The Coherent Family of Layouts)

To fulfill the **Critical Principle of Controlled Variation**, the publication will use an intentional family of 8 layout archetypes:

```
THE 8 EDITORIAL PAGE ARCHETYPES

[TYPE A] Chapter Opener     [TYPE B] Editorial Narrative  [TYPE C] Image-Led Page       [TYPE D] Data / Evidence
┌─────────────────────────┐ ┌───────────────────────────┐ ┌───────────────────────────┐ ┌───────────────────────────┐
│ 01                      │ │ SECTION TITLE             │ │ ┌───────────────────────┐ │ │ KEY RESULTS & IMPACT    │
│ PROJECT OVERVIEW        │ │ ───────────────────────── │ │ │                       │ │ │ ───────────────────────── │
│ ─────────────────────── │ │ Text Column   Pull Quote  │ │ │ Large Hero Photo      │ │ │ 3.84 / 4      +62%    │
│ Large Bleed Photo or    │ │               in Margin   │ │ │ (Bleed or 60% Height) │ │ │ ──────────    ─────── │
│ Bold Typography Spread  │ │                           │ │ └───────────────────────┘ │ │ Chart / Data Table     │
│ Brief 4-line overview   │ │ Text Column   Key Stat    │ │ Two-Column Narrative    │ │ Explanatory Narrative   │
└─────────────────────────┘ └───────────────────────────┘ └───────────────────────────┘ └───────────────────────────┘

[TYPE E] Case Study         [TYPE F] Quote / Impact       [TYPE G] Dense Information    [TYPE H] Closing / Transition
┌─────────────────────────┐ ┌───────────────────────────┐ ┌───────────────────────────┐ ┌───────────────────────────┐
│ 01 · SME CASE STUDY     │ │                           │ │ FRAMEWORK & POLICY        │ │                           │
│ ─────────────────────── │ │ “Our goal was to bridge   │ │ ───────────────────────── │ │                           │
│ ┌───────┐ Narrative     │ │ the gap between national  │ │ Col 1      Col 2    Col 3 │ │ Full-page quiet photo     │
│ │ Photo │ & Background  │ │ strategy and provincial   │ │ ─────      ─────    ───── │ │ or large reflective quote │
│ └───────┘               │ │ reality.”                 │ │ Detailed structured grids │ │ marking end of major      │
│ Innovation & Outcome    │ │                           │ │ with hairline borders     │ │ thematic section.         │
└─────────────────────────┘ └───────────────────────────┘ └───────────────────────────┘ └───────────────────────────┘
```

### Detailed Breakdown of Archetypes

| Archetype | Primary Role | Key Visual Characteristics | Where Applied in InnoLab Report |
|---|---|---|---|
| **TYPE A: Chapter Opener** | Introduces new major thematic section | 2-page facing spread. Oversized chapter number (120pt), dramatic title, flush photographic anchor, brief lead text, high negative space. | Physical pp. 5–6, 16–17, 27–28, 40–41, 55–56, 70–71, 93–94, 105–106. |
| **TYPE B: Editorial Narrative** | Primary reading & analytical text | Unboxed section title, 60/40 asymmetric grid. Main text on inside, pull quote or key stat anchored in outside margin with delicate hairlines. | Ch 01 (pp. 7–15), Ch 02 (pp. 18–26), Ch 03 (pp. 29–39), Ch 08 (pp. 107–114). |
| **TYPE C: Image-Led Page** | Documentary evidence & field immersion | Hero photograph taking 45%–60% of vertical height. Narrative text aligned strictly against image geometry. Hairline caption below. | Ch 01 (p. 8), Ch 03 (pp. 32, 36), Ch 04 (pp. 44, 48), Ch 07 (pp. 96, 100). |
| **TYPE D: Data & Evidence** | Quantitative findings & before/after impact | Large 54pt unboxed KPI numbers, score comparison arrows with gold accent hairlines, structured data grid, short analytical summary. | Ch 05 (pp. 57–69), Ch 04 (pp. 46, 50, 52). |
| **TYPE E: Case Study Profile** | Individual SME enterprise stories | 3 alternating variants (E1: Left tall portrait; E2: Top landscape with 2-col narrative; E3: Asymmetric quote focus). Case ID (`01 / 20`), entrepreneur name, business tag, innovation highlight. | Ch 06 (pp. 72–91: 20 SME Case Studies). |
| **TYPE F: Quote / Impact Spread** | Inflection points & stakeholder voices | Large 22–26pt typography set on warm paper (`#F7F7F3`) or deep teal (`#114554`). Minimal text, high visual gravity. | Ch 02 (p. 20), Ch 05 (p. 60), Ch 07 (p. 102). |
| **TYPE G: Dense Information Grid** | Technical matrices, curricula, policies | High-density 2-column or 3-column grid with delicate 0.4pt hairline rules. No background cards. Clean tabular typographic hierarchy. | Ch 04 (Training agenda), Ch 08 (Policy matrix), Appendix A–D. |
| **TYPE H: Closing / Transition** | Reflective section endings | Restrained typography, subtle full-width milestone rule, quiet image, generous white space. | pp. 15, 26, 39, 54, 69, 92, 104, 121 (Conclusion). |

---

## 5. Chapter-by-Chapter Design Recommendations

### Frontmatter (pp. 1–4)
- **Cover (p. 1) & Cover Spread:** Remove the white rounded pill badge from the InnoLab logo; let the logo float crisply on the deep teal canvas. Refine the title typography with dramatic scale contrast between Khmer title (`36pt`) and English subtitle (`11pt`).
- **Title Page (p. 2):** Elegant institutional title page with generous white space, publisher credits, and date.
- **Credits Page (p. 3):** Clean typographic partner grid (ASIP, KE, SDF, RPITST) with hairline divider rules instead of stacked boxes.
- **Table of Contents (p. 4):** Refine the rotated `"CONTENTS"` vertical watermark. Upgrade chapter entries with prominent `32pt` numbers, precise dot-leader or hairline connectors, and active clickable links.

### Chapter 01: Project Overview (pp. 5–15)
- **Opening Spread (pp. 5–6):** Archetype **TYPE A**. Refine the teal overlay tint; replace the linear gradient with an authoritative full-bleed photograph and oversized `120pt` numeral.
- **Section 1.1 Provincial Context (pp. 7–9):** Archetype **TYPE B & C**. Replace the full-width teal banner with a clean 24pt unboxed headline. Integrate Photo 01 (RPITST campus) as a top half-page flush image with narrative below.
- **Section 1.2–1.3 Strategic Value & Vision (pp. 10–14):** Archetype **TYPE B**. Remove rounded callout boxes; convert key takeaways into large pull quotes anchored in the margin.
- **Closing Page (p. 15):** Archetype **TYPE H**. Restrained milestone summary before Chapter 2.

### Chapter 02: Context, Rationale & Challenges (pp. 16–26)
- **Opening Spread (pp. 16–17):** Archetype **TYPE A**.
- **Section 2.1–2.2 Rationale & Ecosystem (pp. 18–21):** Archetype **TYPE B & F**. Transform the 4 repetitive `#challenge-card` blocks into an unboxed narrative grid with large `28pt` gold numbers and hairline dividers.
- **Section 2.3 Systemic Bottlenecks (pp. 22–25):** Archetype **TYPE G**. Structured diagnostic matrix replacing nested cards.
- **Closing Page (p. 26):** Archetype **TYPE H**.

### Chapter 03: Program Journey & Implementation (pp. 27–39)
- **Opening Spread (pp. 27–28):** Archetype **TYPE A**.
- **Section 3.1–3.4 The 4-Phase Journey (pp. 29–38):** Archetype **TYPE B & C**. Replace generic timeline boxes with an editorial milestone sequence featuring thin horizontal rules and dot markers. Integrate documentary field visit photos as edge-aligned visuals.
- **Closing Page (p. 39):** Archetype **TYPE H**.

### Chapter 04: Training, Mentoring & Engagement (pp. 40–54)
- **Opening Spread (pp. 40–41):** Archetype **TYPE A**.
- **Section 4.1–4.4 Workshop Modules (pp. 42–53):** Archetype **TYPE G & C**. Remove sage-colored rounded cards (`#training-info`). Format workshop modules with clean typographic headers, curriculum tables with hairline rules, and paired workshop photos.
- **Closing Page (p. 54):** Archetype **TYPE H**.

### Chapter 05: Results & Impact (pp. 55–69)
- **Opening Spread (pp. 55–56):** Archetype **TYPE A**.
- **Section 5.1–5.4 Quantitative Evaluation (pp. 57–68):** Archetype **TYPE D**. Replace boxed `#score-change` containers with bold, unboxed editorial KPI displays (`54pt` score in Deep Teal, delicate gold arrow, before/after labels). Group related metrics into clean tabular comparisons.
- **Closing Page (p. 69):** Archetype **TYPE H**.

### Chapter 06: 20 SME Case Studies (pp. 70–92)
- **Opening Spread (pp. 70–71):** Archetype **TYPE A**.
- **The 20 Case Studies (pp. 72–91):** Archetype **TYPE E (Alternating E1, E2, E3)**:
  - **Variant E1 (Odd cases: 01, 03, 05...):** Left-hand tall portrait crop (`74mm` × `140mm`) flush to outer margin; right-hand 2-column narrative with business metadata and highlighted innovation quote.
  - **Variant E2 (Even cases: 02, 04, 06...):** Top-third landscape photo (`165mm` × `70mm`); bottom 2-column split comparing "Business Foundation" and "InnoLab Innovation & Impact".
  - **Variant E3 (Featured cases: 06, 11, 17, 20):** Large feature spread emphasizing artisanal craftsmanship with prominent pull quote.
- **Concluding Spread (p. 92):** Archetype **TYPE H**. 20-SME synthesis and collage.

### Chapter 07: Final Pitch, Challenges & Lessons (pp. 93–104)
- **Opening Spread (pp. 93–94):** Archetype **TYPE A**.
- **Section 7.1 Pitch Day & Awardees (pp. 95–99):** Archetype **TYPE B & C**. Replace sage `#winner-card` with an elegant editorial winner showcase with stage photography and quote blocks.
- **Section 7.2 Lessons Learned (pp. 100–103):** Archetype **TYPE B & F**.
- **Closing Page (p. 104):** Archetype **TYPE H**. Address the orphaned ending layout by balancing columns.

### Chapter 08: Future Direction & Recommendations (pp. 105–114)
- **Opening Spread (pp. 105–106):** Archetype **TYPE A**.
- **Section 8.1–8.3 Policy Roadmap & Season 2 Vision (pp. 107–113):** Archetype **TYPE B & G**. Multi-stakeholder recommendation matrix.
- **Closing Page (p. 114):** Archetype **TYPE H**.

### Backmatter: Conclusion, Appendix & Back Cover (pp. 115–141)
- **Conclusion (pp. 115–121):** Provide a formal **TYPE A** or **TYPE F** opening spread rather than starting immediately with a section banner.
- **Appendix A–D (pp. 122–140):** Archetype **TYPE G**. Clean data tables with hairline borders, eliminating boxed rows. Remove the 11 `:contentReference[oaicite:...]` string artifacts.
- **Back Cover (p. 141):** Refined partner lockup and book summary.

---

## 6. Component Changes (Typst Code Architecture)

To implement this design system without destabilizing the project, components will be systematically preserved, modified, replaced, or added:

| Action | Component Function | File Location | Rationale & Changes |
|---|---|---|---|
| **PRESERVE** | `report-page(body)` | `styles.typ` | Keep core show rule; update margins to spread-aware values (inside 24mm, outside 18mm) and inject dynamic running folios. |
| **PRESERVE** | `photos` & `report-photo` | `components/photos.typ` | Maintain centralized photo registry and institutional fallback placeholder engine. |
| **PRESERVE** | `cover-spread` | `styles.typ` | Keep 432mm × 297mm print spread geometry; modernize typographic lockup. |
| **MODIFY** | `chapter-title(...)` | `styles.typ` | Eliminate linear gradient overlays; introduce oversized `120pt` display numeral, dramatic Khmer title scale, and refined right-companion layout. |
| **MODIFY** | `section-title(...)` | `styles.typ` | Shift default from colored banner box to unboxed typographic headline with hairline accent rule and tracking metadata. |
| **MODIFY** | `case-study-full(...)` | `components/case-study.typ` | Introduce 3 alternating layout variants (E1, E2, E3) with flush image cropping, large case numerals, and highlight quote anchors. |
| **MODIFY** | `score-change(...)` | `components/charts.typ` | Remove rounded paper box and gray background; convert into crisp, unboxed editorial stat display with large numerals. |
| **MODIFY** | `stat(...)` | `styles.typ` | Remove sage background box; convert to unboxed high-contrast KPI display with gold accent rule. |
| **MODIFY** | `callout(...)` | `styles.typ` | Replace heavy boxed container with an elegant marginal or full-width quote block anchored by a sand hairline. |
| **REPLACE** | `editorial-section-banner(...)` | `components/editorial.typ` | Replace solid colored banner bars with clean typographic section headlines (`editorial-section-header`). |
| **REPLACE** | `challenge-card(...)` | `styles.typ` | Replace repeated rounded cards with structured editorial items (`challenge-item`) using hairlines and gold numeral markers. |
| **REPLACE** | `training-info(...)` | `components/charts.typ` | Replace sage boxes with clean editorial training schedule rows. |
| **ADD** | `pull-quote(...)` | `components/editorial.typ` | High-impact unboxed editorial quote component with delicate framing hairlines. |
| **ADD** | `stat-hero(...)` | `components/charts.typ` | Oversized 64pt standalone impact metric display for Chapter 05. |
| **ADD** | `running-header-context` | `styles.typ` | Dynamic context query resolving active chapter and section name for running folios. |
| **ADD** | `editorial-divider(...)` | `components/patterns.typ` | Hairline rule with center geometric milestone dot. |

---

## 7. Top 10 High-Impact Improvements

Ranked by their visual impact on transforming the publication from a "report" to an "editorial book":

1. **Eliminate "Card-itis" (Unbox the Content):**
   Strip rounded rectangle containers from `callout`, `stat`, `challenge-card`, and `score-change`. Place text and numbers directly on the page surface, anchored by whitespace and hairlines.
2. **Transform Section Titles from Colored Banners to Typographic Headlines:**
   Replace the heavy solid-teal presentation bars with elegant unboxed headlines (`24pt` Khmer with `9pt` uppercase tracked English tags and `0.5pt` rules).
3. **Introduce 3 Alternating Case Study Archetypes (Chapter 06):**
   Break the 20-page monotony by alternating between vertical portrait crops, top landscape splits, and featured quote spreads.
4. **Implement Spread-Aware Asymmetric Grid & Margins:**
   Shift from static symmetric margins to an inside binding gutter (`24mm`) and outside thumb margin (`18mm`), establishing a 60/40 narrative/marginal column grid.
5. **Amplify Typographic Scale Contrast:**
   Create dramatic contrast between oversized display numbers (`120pt`), large pull quotes (`20pt`), and quiet, perfectly spaced body columns (`10pt`, leading `7.5pt`).
6. **Deploy Flush, Architectural Photo Framing:**
   Remove rounded corners (`radius: 3pt`) and top-left pill badges from photos. Crop images flush to column bounds or full page edges.
7. **Upgrade Chapter Opener Spreads (Archetype TYPE A):**
   Replace linear gradient boxes with clean contrast overlays, crisp typography, and intentional asymmetric white space.
8. **Add Dynamic, Spread-Aware Running Folios:**
   Replace static headers with dynamic chapter/section titles on facing pages and refined page folios.
9. **Refine Data & Metric Visualizations (Chapter 05):**
   Present quantitative findings with unboxed `54pt` numbers, clean comparative arrows, and delicate hairlines.
10. **Clean Up Technical Text Artifacts:**
    Eliminate the 11 `:contentReference[oaicite:...]` string artifacts in Appendix and Chapters 07/08, ensuring professional typographic finish.

---

## 8. First Prototype: 3 Representative Test Pages

To validate the new design system before touching the full 141-page book, we will test the design on **ONLY 3 representative pages** in an isolated prototype file:

```
THE 3 PROTOTYPE TEST PAGES

1. CHAPTER OPENER SPREAD                2. EDITORIAL NARRATIVE PAGE            3. SME CASE STUDY PROFILE
   (Chapter 01, Physical pp. 5-6)          (Chapter 01, Physical p. 7)            (Chapter 06, Physical p. 72 / SME 01)
┌───────────────────────────────────────┐ ┌───────────────────────────────────┐ ┌───────────────────────────────────┐
│ [01]                                  │ │ ១.១ អំពីខេត្តកំពង់ធំ និងសនិទាន    │ │ 01 · SME CASE STUDY               │
│ PROJECT OVERVIEW                      │ │ PROVINCIAL CONTEXT & RATIONALE    │ │ លោក សុង សេង                      │
│ ───────────────────────────────────── │ │ ───────────────────────────────── │ │ ───────────────────────────────── │
│ Full-Bleed Photo with Architectural   │ │ Two-Column Asymmetric Narrative   │ │ Flush Tall Portrait Photo beside  │
│ Tint + Facing Overview Page with      │ │ with Hairline Anchor and Marginal │ │ Structured Business Background    │
│ Lead Text & Companion Image.          │ │ Pull Quote.                       │ │ and Innovation Outcome.           │
└───────────────────────────────────────┘ └───────────────────────────────────┘ └───────────────────────────────────┘
```

### Why These Three Pages are Representative:
1. **Chapter Opener (Physical Pages 5–6 / Chapter 01):**
   - *Why:* Tests Archetype **TYPE A**. Validates the full-bleed photographic spread, oversized `120pt` display typography, contrast overlay legibility, dynamic label `<ch-01>`, and the pairing of Khmer headline with English subtitle.
2. **Editorial Narrative Page (Physical Page 7 / Chapter 01, Section 1.1):**
   - *Why:* Tests Archetype **TYPE B**. Validates the core reading experience: unboxed section headline, 60/40 asymmetric column grid, Khmer body text line leading (`7.5pt`), pull quote anchoring, and running header/footer folios.
3. **SME Case Study Profile (Physical Page 72 / Chapter 06, SME 01 Mr. Song Seng):**
   - *Why:* Tests Archetype **TYPE E (Variant E1)**. Validates the most critical repeating component in the book: photo integration, metadata hierarchy, business background narrative, and innovation outcomes without generic cards.

> **Constraint Reminder:** These pages will be developed and reviewed in an isolated scratch/prototype file (`scratch/prototype_redesign.typ`) without modifying the active project files.

---

## 9. Incremental Implementation Strategy

To ensure zero downtime, zero broken builds, and preserve pagination stability across the 141-page publication, the upgrade will proceed in 4 controlled phases:

```
INCREMENTAL ROLLOUT PHASES

PHASE 1: AUDIT & SPECIFICATION (CURRENT)
└── Create DESIGN_UPGRADE_PLAN.md (Inspection only, 0 source edits).

PHASE 2: PROTOTYPE & VALIDATION
└── Build scratch/prototype_redesign.typ (Render 3 test pages, review visual quality).

PHASE 3: COMPONENT SYSTEM REFACTORING
└── Update styles.typ and components/*.typ with backward-compatible defaults.
    Verify main.typ compiles with 0 errors after every component edit.

PHASE 4: CHAPTER-BY-CHAPTER CONTENT POLISH
└── Roll out Archetypes across Chapters 01-08, Appendix, and TOC sequentially.
```

1. **Phase 1 (Complete):** Design audit, archetype definition, and master plan.
2. **Phase 2 (Prototyping):** Implement the 3 representative pages in `scratch/prototype_redesign.typ`. Compile to PNG and review visual contrast, Khmer line-breaks, and typographic rhythm.
3. **Phase 3 (Core Styles Migration):**
   - Update `styles.typ` tokens and page geometry (`report-page`).
   - Implement new components in `components/` while retaining backward-compatible signatures so existing calls do not break.
   - Run `typst compile main.typ` continuously to ensure zero build breakages.
4. **Phase 4 (Incremental Chapter Rollout):**
   - Upgrade Chapter 01 & Frontmatter.
   - Upgrade Chapter 06 (Case studies with alternating E1/E2/E3 variants).
   - Upgrade Chapters 02–05, 07–08, and Backmatter.
   - Normalize spread parity (insert blank/quote pages so openers start on facing spreads).
   - Clean up citation artifacts.

---

## 10. Technical & Production Risks

| Risk Category | Specific Failure Mode | Mitigation Strategy |
|---|---|---|
| **Khmer Typography** | Unnatural line breaks or word stretching if `justify: true` is applied. | **Never enable `justify: true`** on Khmer text in Typst. Keep `justify: false` with custom `leading: 7pt` – `7.5pt`. Preserve manual phrasing lines. |
| **Font Missing / Mismatch** | `Kantumruy Pro` or `Barlow` missing on build machine, causing silent fallback to Arial. | Verify font installation with `typst fonts`. Maintain explicit fallback stack in `styles.typ`. |
| **Pagination Drift** | Expanding headings or spacing causes content to spill onto unintentional extra pages, breaking cross-references. | Track page count continuously after every edit using `.\typst-x86_64-pc-windows-msvc\typst.exe eval 'query(metadata)...'`. Adjust vertical padding (`v(...)`) to maintain intentional page boundaries. |
| **Spread Parity (Recto/Verso)** | Chapter openers landing on odd pages, causing the 2-page spread to display across non-facing pages. | In Phase 4, insert intentional half-title reflection quote pages or blank separator pages so every `#chapter-title` opens on an **even (left)** page. |
| **TOC Link Breakage** | Renaming or moving label anchors breaks dynamic TOC page resolution. | Preserve exact label format `<ch-01>` through `<ch-08>`. Validate TOC with `typst compile main.typ --pages 4 toc.png`. |
| **Image Aspect Distortion** | Custom crops distorting aspect ratio or cropping critical subjects (e.g. cutting off entrepreneur faces). | Use `fit: "cover"` with calibrated frame aspect ratios (`4:3`, `16:9`, `1:1.5`); never force distorted widths/heights without `fit`. |
| **Commercial Print Bleed** | Offset printers requiring 3mm bleed margins beyond the 210mm × 297mm trim box. | Maintain `cover-spread.typ` as a separate print jacket document with spine width parameters. Keep full-bleed page backgrounds isolated to dedicated `page(margin: 0mm)` blocks. |

---

*End of Visual Design Upgrade Plan.*
