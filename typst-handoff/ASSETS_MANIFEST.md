# Assets Manifest — InnoLab Kampong Thom Typst Report

## Overview

The original project repository contains **658 image and vector asset files** totaling **1.98 GB**.
Because the vast majority of these files are raw multi-megapixel camera files (2–6 MB each from Nikon and Sony photo sessions), the full asset library is excluded from this lightweight handoff package to keep it portable and fast.

Instead:
1. **Essential layout & branding assets (7 files, ~178 KB)** are copied into `essential-assets/`.
2. **All 52 referenced assets** are documented below with their exact source paths, filenames, types, source code references, visual descriptions, and layout criticality.
3. **606 unreferenced archive photos (~1.88 GB)** are documented in aggregate by directory.

---

## 1. Essential Design & Branding Assets

These **7 assets** are critical to understanding and rendering the visual layout, branding, and color scheme. They are copied directly into `typst-handoff/essential-assets/`.

| Asset Path (in original repo) | Filename | File Type | Size | Where Referenced | Visual Contents / Purpose | Essential to Layout? |
|---|---|---|---|---|---|---|
| `assets/logos/innolab.webp` | `innolab.webp` | WEBP | 19.2 KB | `styles.typ` (L178, L368), `cover-spread.typ` (L10) | Primary InnoLab Kampong Thom branding mark. Features teal and gold geometric motif. Appears on front cover, spine, title page, and headers. | **Yes** — Primary book branding |
| `assets/logos/asip.webp` | `asip.webp` | WEBP | 33.0 KB | `styles.typ` (L179, L622, L1026), `cover-spread.typ` (L10) | Angkor Social Innovation Park (ASIP) institutional partner logo. Appears on back cover, credits page, and TOC footer. | **Yes** — Core institutional publisher branding |
| `assets/logos/ke-logo.webp` | `ke-logo.webp` | WEBP | 49.4 KB | `styles.typ` (L180, L624, L1074), `cover-spread.typ` (L10) | Khmer Enterprise (KE) partner logo. Government initiative supporting entrepreneurship. Appears on back cover and credits page. | **Yes** — Government partner co-branding |
| `assets/logos/SDF-logo.png` | `SDF-logo.png` | PNG | 69.1 KB | `styles.typ` (L181, L623, L1064), `cover-spread.typ` (L10) | Skills Development Fund (SDF) partner logo. Ministry of Economy & Finance fund. Appears on back cover and credits page. | **Yes** — Major funding partner co-branding |
| `assets/chapter-pattern-dark.svg` | `chapter-pattern-dark.svg` | SVG | 4.1 KB | `components/patterns.typ` (L10) | Vector repeating wave/geometric pattern in deep teal tone-on-tone (`#114554`). Placed full-bleed behind chapter opening spreads. | **Yes** — Foundational chapter opener visual texture |
| `assets/toc-pattern-light.svg` | `toc-pattern-light.svg` | SVG | 1.2 KB | `components/patterns.typ` (L17) | Vector subtle light geometric lattice pattern in paper/neutral tone (`#F7F7F3`). Background texture for Table of Contents page. | **Yes** — Foundational TOC page visual texture |
| `assets/innovation-path.svg` | `innovation-path.svg` | SVG | 2.2 KB | `styles.typ` (L343, L521, L745), `cover-spread.typ` (L10) | Elegant flowing gold/sand organic vector ribbon that traverses the front cover, spine, and back cover spread. | **Yes** — Signature visual identity element across cover wraparound |

---

## 2. Referenced Photography Assets (45 Files)

These 45 photographic assets are referenced in the Typst codebase (`components/photos.typ`, `chapters/chapter-06.typ`, `chapters/chapter-04.typ`, `chapters/chapter-07.typ`, `backmatter/conclusion.typ`, and `styles.typ`). In the original project, they provide authentic documentary imagery. When compiling in lightweight mode without these large camera files, `components/photos.typ` and `styles.typ` contain an **institutional placeholder engine** (`image-placeholder` / `report-photo`) that displays a styled placeholder box showing photo ID, dimensions, suggested description, and aspect ratio.

### 2.1 SME Case Studies (Chapter 06) — 20 Photos

All 20 files are located in `assets/20SME/` and are mapped to Photo IDs 19–38 in `components/photos.typ`:

| Photo ID | Original Path | Filename | Size | Subject / Business / Entrepreneur | Layout Role |
|---|---|---|---|---|---|
| **19** | `assets/20SME/DSC00535-Edit.jpg` | `DSC00535-Edit.jpg` | 1.65 MB | SME 01: Mr. Song Seng (Hello Cambodia Association) — Sacha Inchi oil production workshop | Chapter 06 Case 01 hero portrait |
| **20** | `assets/20SME/DSC00548.jpg` | `DSC00548.jpg` | 3.09 MB | SME 02: Visal Brand — Traditional soy sauce and fish sauce fermentation barrels | Chapter 06 Case 02 hero photo |
| **21** | `assets/20SME/DSC00561.jpg` | `DSC00561.jpg` | 3.93 MB | SME 03: Natural Jasmine Tea — Harvest drying and tea leaf sorting | Chapter 06 Case 03 hero photo & Ch06 opener default |
| **22** | `assets/20SME/DSC00582-Edit.jpg` | `DSC00582-Edit.jpg` | 2.04 MB | SME 04: Cashew Nut Processing — Grading, roasting, and vacuum packing | Chapter 06 Case 04 hero photo |
| **23** | `assets/20SME/DSC00607.jpg` | `DSC00607.jpg` | 2.54 MB | SME 05: Dried Fruit & Mango Confectionery — Cleanroom drying facility | Chapter 06 Case 05 hero photo |
| **24** | `assets/20SME/DSC00608-Edit.jpg` | `DSC00608-Edit.jpg` | 2.18 MB | SME 06: Wild Forest Honey — Cold filtering and sterile glass bottling | Chapter 06 Case 06 hero photo |
| **25** | `assets/20SME/DSC00627.jpg` | `DSC00627.jpg` | 1.38 MB | SME 07: Traditional Silk & Cotton Handloom Weaving — Hol and Phamung fabrics | Chapter 06 Case 07 hero photo |
| **26** | `assets/20SME/DSC00628-Edit.jpg` | `DSC00628-Edit.jpg` | 1.58 MB | SME 08: Sun-Dried Fish & Prahok/Pha-ok — Hygienic solar drying tent | Chapter 06 Case 08 hero photo |
| **27** | `assets/20SME/DSC00636.jpg` | `DSC00636.jpg` | 3.39 MB | SME 09: Namwa Banana Flour — Organic flour milling and packaging | Chapter 06 Case 09 hero photo |
| **28** | `assets/20SME/DSC00641.jpg` | `DSC00641.jpg` | 1.68 MB | SME 10: Virgin Coconut Oil — Cold press extraction and natural cosmetic soaps | Chapter 06 Case 10 hero photo |
| **29** | `assets/20SME/DSC00654.jpg` | `DSC00654.jpg` | 6.63 MB | SME 11: Ancient Kampong Thom Clay Pottery — Potter wheel shaping and kiln firing | Chapter 06 Case 11 hero photo |
| **30** | `assets/20SME/DSC00697.jpg` | `DSC00697.jpg` | 6.12 MB | SME 12: Artisanal Fruit Wine — Local fruit fermentation vats and aging cellar | Chapter 06 Case 12 hero photo |
| **31** | `assets/20SME/DSC00774.jpg` | `DSC00774.jpg` | 1.59 MB | SME 13: Free-Range Local Chicken Farm — Semi-intensive poultry brooding runs | Chapter 06 Case 13 hero photo |
| **32** | `assets/20SME/DSCF0526-Edit.jpg` | `DSCF0526-Edit.jpg` | 1003 KB | SME 14: Rattan & Bamboo Handicrafts — Modern eco-friendly furniture joining | Chapter 06 Case 14 hero photo |
| **33** | `assets/20SME/DSCF0655.jpg` | `DSCF0655.jpg` | 786 KB | SME 15: Artisanal Chili Paste & Sauce — Commercial kitchen cooking and bottling | Chapter 06 Case 15 hero photo |
| **34** | `assets/20SME/DSCF0708-Edit.jpg` | `DSCF0708-Edit.jpg` | 1.09 MB | SME 16: Balut & Salted Duck Eggs — Quality candling inspection and distribution | Chapter 06 Case 16 hero photo |
| **35** | `assets/20SME/DSCF0825.jpg` | `DSCF0825.jpg` | 1.37 MB | SME 17: Oyster Mushroom Cultivation — Darkroom hanging spore substrate bags | Chapter 06 Case 17 hero photo & Ch06 right companion |
| **36** | `assets/20SME/DSCF0894.jpg` | `DSCF0894.jpg` | 832 KB | SME 18: Commercial Bullfrog Aquaculture — Breeding concrete tanks and feeds | Chapter 06 Case 18 hero photo |
| **37** | `assets/20SME/DSCF0939-Edit.jpg` | `DSCF0939-Edit.jpg` | 684 KB | SME 19: Wood Carving & Furniture — Reclaimed hardwood furniture restoration | Chapter 06 Case 19 hero photo |
| **38** | `assets/20SME/DSCF0986.jpg` | `DSCF0986.jpg` | 1.48 MB | SME 20: Community-Based Ecotourism — Riverside bungalows and cycling tours | Chapter 06 Case 20 hero photo |

---

### 2.2 Program, Training & Event Photography (25 Photos)

Located in `assets/photos/`, `assets/training/training4/`, and `assets/visit1/01/`:

| Photo ID / Filename | Original Path | Size | Referenced In | Visual Contents / Purpose |
|---|---|---|---|---|
| `01.jpg` (ID 01) | `assets/photos/01.jpg` | 135 KB | `styles.typ`, `components/photos.typ` | Chapter 01 opener photo: Regional Polytechnic Institute Techo Sen Kampong Thom (RPITST) campus. |
| `02.jpg` (ID 02) | `assets/photos/02.jpg` | 3.17 MB | `styles.typ`, `components/photos.typ` | Chapter 01 right companion & Ch04 opener: Field diagnostic survey team interacting with enterprise. |
| `03.jpg` (ID 03) | `assets/photos/03.jpg` | 2.07 MB | `styles.typ`, `components/photos.typ` | Chapter 02 opener photo: Traditional processing workshop environment in rural Kampong Thom. |
| `04.jpg` (ID 04) | `assets/photos/04.jpg` | 5.17 MB | `styles.typ`, `components/photos.typ`, `backmatter/conclusion.typ` | Chapter 05 opener photo & conclusion: Enterprise product showcase exhibition tables and tasting display. |
| `07.jpg` (ID 07) | `assets/photos/07.jpg` | 2.42 MB | `styles.typ`, `components/photos.typ`, `chapters/chapter-04.typ` | Chapter 03 opener & Ch04 workshop training: Classroom workshop interactive training session. |
| `09.jpg` (ID 09) | `assets/photos/09.jpg` | 3.39 MB | `styles.typ`, `components/photos.typ` | Chapter 02 right companion: Baseline operational assessment data gathering at rural facility. |
| `10.jpg` (ID 10) | `assets/photos/10.jpg` | 1.60 MB | `styles.typ`, `components/photos.typ` | Chapter 08 right companion & ID 10: Traditional craftsmanship products showcasing local heritage. |
| `11.jpg` (ID 11) | `assets/photos/11.jpg` | 232 KB | `components/photos.typ` | Product documentation: Technical formulation documents, branding sheets, nutritional test reports. |
| `12.jpg` (ID 12) | `assets/photos/12.jpg` | 3.82 MB | `styles.typ`, `components/photos.typ` | Chapter 05 right companion & ID 05/12: Product testing and shelf-life experimentation laboratory. |
| `13.jpg` (ID 13) | `assets/photos/13.jpg` | 2.76 MB | `components/photos.typ` | Circular economy: Agricultural residue conversion, biochar briquette development. |
| `14.jpg` (ID 14) | `assets/photos/14.jpg` | 2.97 MB | `components/photos.typ` | Prototype testing: Physical product sample packaging evaluation and refinement. |
| `15.jpg` (ID 15) | `assets/photos/15.jpg` | 2.68 MB | `styles.typ`, `components/photos.typ` | Chapter 03 right companion: Direct one-on-one business diagnostic interview with SME owner. |
| `16.jpg` (ID 16) | `assets/photos/16.jpg` | 1.05 MB | `styles.typ`, `components/photos.typ`, `chapters/chapter-04.typ` | Chapter 04 right companion: Coaching and mentoring session with technical mentors. |
| `18.jpg` (ID 18) | `assets/photos/18.jpg` | 3.54 MB | `styles.typ`, `components/photos.typ`, `chapters/chapter-07.typ`, `backmatter/conclusion.typ` | Chapter 08 opener & conclusion: Full cohort group photo with mentors, entrepreneurs, and organizers. |
| `39.jpg` (ID 39) | `assets/photos/39.jpg` | 232 KB | `styles.typ`, `components/photos.typ` | Chapter 07 right companion & Ch06 finale: Official winner trophies, awards, and certificates. |
| `40.jpg` (ID 40) | `assets/photos/40.jpg` | 232 KB | `styles.typ`, `components/photos.typ`, `chapters/chapter-07.typ` | Chapter 07 opener & Ch07 photos: Final Pitching Day stage backdrop, jury panel, and audience. |
| `1.jpg` | `assets/photos/1.jpg` | 5.63 MB | `styles.typ` (variant test) | Duplicate/variant high-res shot of RPITST campus entrance. |
| `DSM09112.jpg` (ID 43) | `assets/training/training4/DSM09112.jpg` | 4.38 MB | `components/photos.typ` | Pitch day live action: Entrepreneur delivering pitch deck presentation to judging panel. |
| `DSM09364.jpg` (ID 41) | `assets/training/training4/DSM09364.jpg` | 4.19 MB | `components/photos.typ` | Award ceremony: Winning entrepreneurs receiving commemorative checks and trophies. |
| `DSM09506.jpg` (ID 44) | `assets/training/training4/DSM09506.jpg` | 3.81 MB | `components/photos.typ` | Season finale: Group toast and celebratory photo at conclusion of pitch day. |
| `DSC00548.jpg` | `assets/visit1/01/DSC00548.jpg` | 3.75 MB | `components/photos.typ` (visit1 duplicate) | High-res raw visit 1 camera capture of Visal soy sauce workshop. |

---

## 3. Unreferenced Photo Archives (606 Files, ~1.88 GB)

These folders contain original raw camera files from documentation photographers that were collected during project implementation but not directly bound into the current Typst source code:

| Directory | File Count | Approx. Total Size | Content Description |
|---|---|---|---|
| `assets/training/training1/` | 177 JPGs | ~630 MB | Raw photos from Workshop 1: Cohort onboarding, orientation, and enterprise needs assessment. |
| `assets/training/training4/` | 385 JPGs (excl. 3 referenced) | ~1.15 GB | Raw photo shoots from Workshop 4, pitch rehearsal, and Final Pitching Day. |
| `assets/visit1/01/` | 28 JPGs (excl. 1 referenced) | ~95 MB | Raw camera photos from on-site enterprise visits (Batch 1). |
| `assets/visit1/02/` | 17 JPGs | ~42 MB | Raw camera photos from on-site enterprise visits (Batch 2). |
| `assets/photos/` (unreferenced) | 4 JPGs | ~10 MB | `08.jpg`, `1.jpg`, `DSC_8462.jpg`, `DSC_8464.jpg` (experimental/test photos). |

---

## 4. How Typst Resolves Assets & Placeholder Fallback

1. **Absolute Root Paths:**
   Source files reference assets using Typst absolute root paths such as `/assets/logos/innolab.webp` or `/assets/photos/01.jpg`. In Typst, leading `/` resolves against the root directory (`--root`).
2. **Centralized Photo Registry (`components/photos.typ`):**
   All 45 photos are indexed in `#let photos = (...)` with default height, aspect ratio, fit, category tag, and Khmer description.
3. **Graceful Fallback:**
   The function `report-photo(id, placeholder: bool)` in `components/photos.typ` checks if the image exists or if `placeholder == true`. When an image is not present or placeholder mode is active, it renders an institutional boxed placeholder displaying the Photo ID, recommended aspect ratio, and descriptive tag.
4. **Local compilation with full images:**
   If you have the original `assets/` directory, place it alongside `main.typ` and run `typst compile main.typ` to produce the full image-rich publication.
