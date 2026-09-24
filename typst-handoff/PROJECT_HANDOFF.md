# Project Handoff Documentation — InnoLab Kampong Thom Report

This document is the master briefing for any AI assistant or developer continuing the development, debugging, and production of the **InnoLab Kampong Thom** Typst book publication.

---

## 1. Executive Summary & Book Overview

- **Title:** InnoLab Kampong Thom — Innovation for Local Enterprises & SMEs in Kampong Thom Province, Cambodia (Season 1 Report, 2025–2026)
- **Publisher / Implementing Body:** Angkor Social Innovation Park (ASIP)
- **Key Partners & Funding:**
  - Khmer Enterprise (KE) — Ministry of Economy and Finance
  - Skills Development Fund (SDF) — Ministry of Economy and Finance
  - Regional Polytechnic Institute Techo Sen Kampong Thom (RPITST)
- **Language:** Bilingual — Primarily **Khmer** (Khmer Unicode script), with **English** secondary subtitles, executive headers, category tags, and KPI metrics.
- **Subject Matter:**
  The book is an extensive, institutional report detailing the inception, execution, and outcomes of InnoLab Kampong Thom Season 1. It details the provincial socioeconomic baseline, enterprise bottleneck diagnostics, a 4-phase capacity building journey (needs analysis, workshop training, direct on-site mentoring, prototype testing), quantitative before/after impact evaluation, **20 detailed SME case studies** across agriculture, food processing, handicrafts, and circular economy, Final Pitching Day results, and a policy roadmap for provincial SME ecosystem sustainability.

---

## 2. Intended Audience

1. **Government & Institutional Donors:** Khmer Enterprise, Skills Development Fund, Ministry of Economy and Finance (MEF), Ministry of Industry, Science, Technology & Innovation (MISTI).
2. **Provincial Leadership & Chambers:** Kampong Thom provincial government, local trade associations, agricultural cooperatives.
3. **Development Partners & Accelerators:** Regional innovation hubs, NGOs, impact investors seeking replicable provincial enterprise models.
4. **Participating SMEs & Entrepreneurs:** Educational and commemorative record for the 20 cohort enterprises.

---

## 3. Current Project Completion Status

- **Status:** **Structurally Complete & Production-Ready** (141 Pages).
- **Compilation:** Passes with **0 errors and 0 warnings** in Typst 0.15.1.
- **Document Scope:**
  - Frontmatter: Cover page, Inside Title page, Institutional Credits & Partners page, 2-column dynamic Table of Contents.
  - Chapters 01–08: Full text, statistical tables, process flows, callout boxes, and 20 individual SME case studies.
  - Backmatter: Strategic Conclusion, 4-part Technical Appendix, Back Cover.
  - Cover Spread: Standalone 432mm × 297mm print jacket with spine (`cover-spread.typ`).

---

## 4. Main Typst Entry Files

1. **`main.typ`** (Primary Entry Point):
   - Sets global page styling: `#show: report-page`
   - Disables default heading numbering: `#set heading(numbering: none)`
   - Sequentially includes `frontmatter/`, `chapters/01–08`, and `backmatter/`.
   - Manages page counter reset: `#counter(page).update(1)` before Chapter 01.
   - Compiles the complete 141-page book.

2. **`cover-spread.typ`** (Print Jacket Entry Point):
   - Compiles the single-page landscape wraparound jacket (432mm × 297mm) containing Back Cover (210mm), Spine (12mm), and Front Cover (210mm).
   - Designed for commercial offset and hardcover/perfect-bound printing.

---

## 5. Relevant Directory Structure

```
innolab_report/
├── main.typ                         # Main compilation entry file (141 pages)
├── styles.typ                       # Master style sheet, design system, tokens, layouts
├── cover-spread.typ                 # Wraparound cover spread (432mm x 297mm)
├── .gitignore                       # Git ignore rules (*.pdf)
│
├── frontmatter/                     # Front matter pages (Physical pp. 1-4)
│   ├── cover.typ                    # Front cover page (calls cover-page())
│   ├── title.typ                    # Inside title page (calls title-page())
│   ├── credits.typ                  # Institutional credits & logos (calls credits-page())
│   └── toc.typ                      # 2-column bilingual Table of Contents with dynamic links
│
├── chapters/                        # Report body chapters (Physical pp. 5-114)
│   ├── chapter-01.typ               # Ch 01: Project Overview (pp. 5-15)
│   ├── chapter-02.typ               # Ch 02: Context, Rationale & Challenges (pp. 16-26)
│   ├── chapter-03.typ               # Ch 03: Program Journey & Implementation (pp. 27-39)
│   ├── chapter-04.typ               # Ch 04: Training, Mentoring & Engagement (pp. 40-54)
│   ├── chapter-05.typ               # Ch 05: Results & Impact (pp. 55-69)
│   ├── chapter-06.typ               # Ch 06: 20 SME Case Studies (pp. 70-92)
│   ├── chapter-07.typ               # Ch 07: Final Pitch, Challenges & Lessons (pp. 93-104)
│   └── chapter-08.typ               # Ch 08: Future Direction & Recommendations (pp. 105-114)
│
├── backmatter/                      # Back matter pages (Physical pp. 115-141)
│   ├── conclusion.typ               # Strategic conclusion & roadmap (pp. 115-121)
│   ├── appendix.typ                 # Appendix A-D: Data basis, conflict notes, terminology (pp. 122-140)
│   └── back-cover.typ               # Back cover page (calls back-cover-page()) (p. 141)
│
├── components/                      # Modular UI components & domain helpers
│   ├── case-study.typ               # Full-page SME case study template (case-study-full)
│   ├── charts.typ                   # Score-change and simple data visualization helpers
│   ├── editorial.typ                # Photo-hero cards, editorial banners, divider rules
│   ├── final-pitch.typ              # Pitch stages, winner cards, and special award blocks
│   ├── patterns.typ                 # Tone-on-tone SVG pattern wrappers and architectural marks
│   └── photos.typ                   # Centralized photo registry (45 photos) & fallback engine
│
├── essential-assets/                # Essential layout & branding assets (copied for handoff)
│   ├── innolab.webp                 # InnoLab program logo
│   ├── asip.webp                    # ASIP partner logo
│   ├── ke-logo.webp                 # Khmer Enterprise logo
│   ├── SDF-logo.png                 # Skills Development Fund logo
│   ├── chapter-pattern-dark.svg     # Deep teal SVG background for chapter openers
│   ├── toc-pattern-light.svg        # Paper subtle SVG background for TOC
│   └── innovation-path.svg          # Gold flowing vector ribbon for cover spread
│
└── previews/                        # Representative rendered page previews (PNG)
    ├── 01-cover.png                 # Front cover preview
    ├── 02-table-of-contents.png     # TOC preview
    ├── 03-chapter-opener-left.png   # Chapter opener left page (photo + dark tint)
    ├── 04-chapter-opener-right.png  # Chapter opener right page (text & companion photo)
    ├── 05-typical-content-page.png  # Content page with banner & 2-column text
    ├── 06-figures-impact-charts.png # Chapter 5 impact score comparisons
    ├── 07-figures-sme-casestudy.png # Chapter 6 SME Case Study layout
    ├── 08-layout-spread-parity-ch06.png # Chapter 6 opener spread alignment
    └── 09-layout-orphaned-closing-ch08.png # Chapter 8 closing short page
```

---

## 6. Architecture of the Typst Project

The project follows a clean, decoupled modular architecture:

1. **Tokens & Theme (`styles.typ`):**
   Defines global palettes, font specifications, baseline dimensions, and default page templates.
2. **Component Abstractions (`components/`):**
   Components are decoupled from specific chapters. For example, `case-study-full` handles layout math, image frames, and typography without knowing specific SME content.
3. **Content Modules (`chapters/`, `frontmatter/`, `backmatter/`):**
   Content files focus purely on text structure, data tables, and calling components. They do not set raw margins or page geometries directly (except for intentional full-page spreads).
4. **Assembly (`main.typ`):**
   Applies the top-level `#show: report-page` and chains all documents using `#include`.

---

## 7. Imports and Dependencies

- **External Packages:** None. Zero external dependencies from Typst Universe.
- **Internal Imports:**
  - Standard files import `styles.typ` (`#import "../styles.typ": *`).
  - Chapter files import components:
    ```typst
    #import "../styles.typ": *
    #import "../components/charts.typ": *
    #import "../components/final-pitch.typ": *
    #import "../components/case-study.typ": *
    ```
  - `styles.typ` imports `components/photos.typ`, `components/patterns.typ`, and `components/editorial.typ`.

---

## 8. Custom Functions and Macros

| Function | File | Purpose |
|---|---|---|
| `report-page(body)` | `styles.typ` | Top-level show rule setting page size, margins, header, footer, font, language, leading. |
| `chapter-title(number, title, ...)` | `styles.typ` | Generates a 2-page photographic opening spread with layout variants and label anchor. |
| `editorial-section-banner(title, ...)` | `components/editorial.typ` | Distinctive full-width banner card with category tag and English subtitle. |
| `section-title(title)` | `styles.typ` | Level 2 heading with spacing and border accent. |
| `subsection-title(title)` | `styles.typ` | Level 3 heading. |
| `stat(value, label)` | `styles.typ` | Large KPI number with label underneath. |
| `callout(title, body)` | `styles.typ` | Highlight callout box with sand accent left stroke. |
| `challenge-card(title, body)` | `styles.typ` | Card highlighting systemic enterprise challenges. |
| `case-study-full(number, name, ...)` | `components/case-study.typ` | Full-page template for the 20 SME profiles. |
| `score-change(before, after, ...)` | `components/charts.typ` | Before/after metric comparison card with arrow. |
| `winner-card(name, business, ...)` | `components/final-pitch.typ` | Season winner card with sage fill and sand accent rule. |
| `special-award(label, name, ...)` | `components/final-pitch.typ` | Category prize award card. |
| `report-photo(id, placeholder, ...)` | `components/photos.typ` | Centralized image loader with fallback institutional placeholder. |
| `image-placeholder(id, ...)` | `styles.typ` | Convenience wrapper around `report-photo`. |
| `cover-spread(spine-width)` | `styles.typ` | Full 3-panel print jacket layout. |

---

## 9. Show Rules

The document relies on one master document-level show rule in `main.typ`:
```typst
#show: report-page
```
This rule injects:
- Page geometry (`a4`, margins 23mm top, 20mm bottom, 22mm left, 18mm right).
- Running headers and footers with dynamic page numbers.
- Text properties (`lang: "km"`, font stack, size `10.5pt`).
- Paragraph leading (`leading: 7pt`, `justify: false`).

---

## 10. Page Configuration

- **Paper Size:** A4 (`210mm` × `297mm`).
- **Margins:**
  - Standard content: Top 23mm, Bottom 20mm, Left 22mm, Right 18mm.
  - TOC page: Top 24mm, Bottom 20mm, Left 20mm, Right 20mm.
  - Chapter openers (Left page): Margin `0mm` (full-bleed photo with overlay).
  - Cover spread: Width `432mm`, Height `297mm`, Margin `0mm`.
- **Backgrounds:**
  - Standard pages: Pure white (`#FFFFFF`).
  - Chapter opener left page: Photographic full-bleed with `#114554` tint (24% transparency).
  - Table of Contents: `#FFFFFF` with `assets/toc-pattern-light.svg` background.

---

## 11. Headers, Footers & Numbering

1. **Running Header:**
   - Active on all pages after page 1, suppressed on cover and opener spreads.
   - Left: `"INNOLAB KAMPONG THOM"` (`Barlow`, 7.5pt, weight 600, color gray).
   - Right: `"របាយការណ៍គម្រោង"` (`Kantumruy Pro`, 7.5pt, color gray).
   - Bottom rule: 0.6pt line in `colors.line`.
2. **Running Footer:**
   - Top rule: 0.6pt line in `colors.line`.
   - Left: `"INNOLAB KAMPONG THOM"` (`Barlow`, 8pt, weight 600, color gray).
   - Right: Page number `#counter(page).display()` (`Barlow`, 9pt, weight 700, color primary).
3. **Numbering Scheme:**
   - Front matter (pp. 1–4): Unnumbered.
   - Report body (pp. 5–141): Begins at 1 via `#counter(page).update(1)` right before Chapter 01.

---

## 12. Chapter & Heading System

- **Chapters (01–08):**
  Initiated by `#chapter-title(number, title, english: ..., intro: ..., photo: ...)`.
  Generates a 2-page facing spread:
  - **Left Page (Verso):** Deep teal tint over high-res photo, large chapter number, Khmer title.
  - **Right Page (Recto):** Connected companion photo, English subtitle, overview intro, focus summary card.
- **Headings:**
  Default `#set heading(numbering: none)` is active. Structured headings use:
  - `#editorial-section-banner("១.១ ...", english: "...", tag: "...")` for major sections.
  - `#section-title("...")` for intermediate sections.
  - `#subsection-title("...")` for subsections.

---

## 13. Table of Contents (TOC)

Located in `frontmatter/toc.typ`:
- Designed as a dedicated full-page presentation spread.
- Left edge features a rotated 90-degree decorative watermark `"CONTENTS"` in large soft sage lettering (`#DDE8E2`).
- Right content is divided into a 2-column layout: Column 1 holds Chapters 01–04; Column 2 holds Chapters 05–08.
- **Dynamic Anchoring:**
  Uses `context query(label("ch-" + item.num))` to dynamically find where each chapter starts.
  Each chapter card is wrapped in a clickable `link(...)` targeting the chapter location.

---

## 14. Typography & Fonts

```typst
#let fonts = (
  main: ("Kantumruy Pro", "Arial"),
  display: ("Barlow", "Kantumruy Pro", "Arial"),
)
```
- **Khmer Text (`fonts.main`):** `Kantumruy Pro` — a contemporary, highly readable Khmer font from Google Fonts designed for institutional publication.
- **Latin & Numbers (`fonts.display`):** `Barlow` / `Barlow Condensed` — industrial, geometric, clean aesthetic that pairs well with Kantumruy Pro.
- **Body Font Size:** `10.5pt`.
- **Paragraph Rules:**
  - `lang: "km"`
  - `leading: 7pt`
  - `justify: false` (**CRITICAL**: Khmer text should NOT use justified alignment in current Typst engines; ragged right prevents unnatural spacing gaps between words).

---

## 15. Color Palette

```typst
#let colors = (
  primary:    rgb("#114554"), // Deep Teal (authoritative, institutional)
  sage:       rgb("#DDE8E2"), // Soft Sage (cards, subtle backgrounds)
  sand:       rgb("#D8B86C"), // Warm Sand / Gold (accents, divider bars, tags)
  paper:      rgb("#F7F7F3"), // Warm Paper (card background fill)
  white:      rgb("#FFFFFF"), // Crisp White (page background)
  text:       rgb("#202627"), // Deep Charcoal (high contrast body text)
  gray:       rgb("#737B7C"), // Mid Gray (metadata, running headers)
  light-gray: rgb("#E7E9E7"), // Light Neutral Gray
  line:       rgb("#D9DEDC"), // Boundary stroke lines
)
```

---

## 16. Figures, Tables & Media System

1. **Centralized Registry (`components/photos.typ`):**
   All 45 documentary and SME photos are cataloged in `#let photos = (...)` with metadata (path, aspect ratio, suggested height, Khmer description, tag).
2. **Placeholder Fallback Engine:**
   If a photo file is missing or `placeholder: true`, `report-photo` generates an institutional card with:
   - Photo ID number
   - Khmer suggested subject
   - Recommended aspect ratio
3. **Data Visualizations:**
   Built natively using `score-change` (before/after cards), `stat` badges, and styled `#grid` tables with `0.6pt + colors.line` borders.

---

## 17. Current Technical Debt & Known Workarounds

1. **OpenAI Citation Artifacts:**
   There are **11 occurrences** of verbatim LLM markdown citation artifacts in the source files:
   - `backmatter/appendix.typ`: 5 occurrences (`:contentReference[oaicite:0]{index=0}`, etc.)
   - `chapters/chapter-07.typ`: 3 occurrences
   - `chapters/chapter-08.typ`: 3 occurrences
   *Action needed:* These should be deleted or converted into standard footnotes/citations.
2. **Spread Parity (Recto / Verso Page Alignment):**
   - The two-page chapter opening spreads (`chapter-title`) are designed as `[ Left Page (Verso) | Right Page (Recto) ]`.
   - In a bound physical book, left pages must land on **EVEN** physical page numbers, and right pages on **ODD** physical page numbers.
   - Currently, Chapter 01 starts on page 5 (odd), Chapter 02 on page 16 (even), Chapter 03 on page 27 (odd), Chapter 04 on page 40 (even), Chapter 05 on page 55 (odd), Chapter 06 on page 70 (even), Chapter 07 on page 93 (odd), Chapter 08 on page 105 (odd).
   - *Action needed:* For commercial 2-page spread printing, insert an intentional blank page or half-title reflection quote page before odd-numbered chapter starts so every chapter opener begins on an even page.
3. **Short Linebreaks in Khmer Text:**
   The Khmer text in several chapters is broken across multiple short lines. This is a deliberate workaround used by the original author to enforce natural phrasing boundaries in Khmer without relying on zero-width space characters (`\u200B`).
4. **Duplicate Component Imports:**
   Chapters 01, 04, 06, 07, and 08 contain duplicate `#import` lines for `charts.typ`, `case-study.typ`, or `final-pitch.typ`. They do not break compilation but should be cleaned up.

---

## 18. Things Previously Attempted That Failed

1. **Justified Khmer Text (`justify: true`):**
   Attempted in early drafts. Resulted in wide, irregular whitespace gaps within Khmer phrases because Typst's line-breaking algorithm does not yet contain a native dictionary hyphenator for Khmer script. Solved by configuring `justify: false` with custom `leading: 7pt`.
2. **Single-Page Chapter Openers:**
   Attempted in early prototypes. Cramming chapter titles, high-res photos, bilingual subtitles, and chapter summaries into a single A4 page felt cramped. Upgraded to the current 2-page photographic spread.
3. **Hardcoded TOC Page Numbers:**
   Hardcoded page strings in `frontmatter/toc.typ` broke whenever earlier chapters gained or lost pages. Solved by replacing hardcoded values with dynamic `context query(label("ch-XX"))` lookups.

---

## 19. Prioritized TODO List for Next AI Assistant

- [ ] **Priority 1 (Cleanup):** Remove the 11 `:contentReference[oaicite:...]` string artifacts in `appendix.typ`, `chapter-07.typ`, and `chapter-08.typ`.
- [ ] **Priority 2 (Print Spread Alignment):** Normalize chapter starting page parity (insert blank/quote divider pages before chapters 01, 03, 05, 07, 08) so every chapter opener spread opens on facing pages (even on left, odd on right).
- [ ] **Priority 3 (Refactor Imports):** Remove duplicate `#import` statements at the tops of chapter files.
- [ ] **Priority 4 (Photo Curation):** Assign final high-res documentary photos to IDs 44 and 45 in Chapter 8.
- [ ] **Priority 5 (Appendix Index):** Build a formal "List of Figures & Photo Credits" table in Appendix D.

---

## 20. Recommended Next Development Task

**Task:** Clean up the 11 `:contentReference` artifacts in `backmatter/appendix.typ`, `chapters/chapter-07.typ`, and `chapters/chapter-08.typ`.
**Instructions for next assistant:**
Search for `contentReference` across those three files and replace each occurrence with either a clean grammatical stop or a formal Typst footnote (`#footnote[...]`). Then run `typst compile main.typ` to verify that the compilation remains 100% warning-free.
