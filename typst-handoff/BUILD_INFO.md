# Build Information & Toolchain Guide — InnoLab Kampong Thom

This document provides complete instructions for compiling, previewing, and debugging the Typst book project.

---

## 1. Toolchain & Version

- **Typst Compiler Version:** `typst 0.15.1 (9dfd3a08)`
- **Windows Binary Location (in original project):** `typst-x86_64-pc-windows-msvc/typst.exe`
- **Global Command (if installed via Cargo/Scoop/Winget/Homebrew):** `typst`

To check your local compiler version:
```bash
typst --version
# Expected: typst 0.15.1 or newer
```

---

## 2. Compilation Commands

### 2.1 Compile the Main Book Publication

```bash
# Standard compilation to PDF
typst compile main.typ main.pdf

# Using the bundled Windows executable (from project root)
.\typst-x86_64-pc-windows-msvc\typst.exe compile main.typ main.pdf
```

### 2.2 Compile the Full Wraparound Cover Spread (432mm × 297mm)

```bash
typst compile cover-spread.typ cover-spread.pdf
```

### 2.3 Render Individual Pages or Page Ranges as High-Res PNGs

```bash
# Render physical page 1 (Front Cover)
typst compile main.typ --pages 1 cover.png

# Render physical page 4 (Table of Contents)
typst compile main.typ --pages 4 toc.png

# Render a page range with zero-padded naming template
typst compile main.typ --pages 5-8 'preview_p_{0p}.png'
```

### 2.4 Check Build Diagnostics & Dependencies

```bash
# Output compilation dependencies in JSON format
typst compile main.typ --deps -

# Verbose diagnostic human-readable output
typst compile main.typ --diagnostic-format human
```

---

## 3. Main Entry Points

1. **`main.typ`**: The primary compilation target.
   - Loads `styles.typ`.
   - Applies the `#show: report-page` show rule.
   - Configures `#set heading(numbering: none)`.
   - Includes `frontmatter/`, `chapters/01–08`, and `backmatter/`.
   - Yields a 141-page publication PDF.

2. **`cover-spread.typ`**: Production jacket cover spread.
   - Standalone single-page landscape document: width 432 mm (210mm back + 12mm spine + 210mm front), height 297 mm.
   - Intended for offset or digital commercial book printing with wraparound binding.

---

## 4. Package Dependencies

- **External Packages:** **None** (0 external Typst packages).
- **Self-Contained:** The project does **not** rely on Typst Universe packages (no `@preview/...` imports).
- All components, grids, geometric pattern rules, charts, badges, and cover geometry are built using native Typst standard library functions (`block`, `grid`, `place`, `line`, `rect`, `circle`, `rotate`, `counter`, `query`, `context`).

---

## 5. Required Typography & Fonts

The book uses a bilingual font stack carefully selected for Khmer and Latin script balance:

| Role | Font Family | Source / License | Typst Font Specifier |
|---|---|---|---|
| **Primary Khmer Body & Headings** | **Kantumruy Pro** | Google Fonts (OFL) | `"Kantumruy Pro"` |
| **Latin Display, Numerics & Labels** | **Barlow** / **Barlow Condensed** | Google Fonts (OFL) | `"Barlow"` |
| **Universal System Fallback** | **Arial** | Microsoft Windows / Cross-platform | `"Arial"` |

In `styles.typ`:
```typst
#let fonts = (
  main: ("Kantumruy Pro", "Arial"),
  display: ("Barlow", "Kantumruy Pro", "Arial"),
)
```

> [!NOTE]
> If `Kantumruy Pro` or `Barlow` is not installed on the system, Typst falls back to `Arial`. For optimal visual fidelity, install `Kantumruy Pro` and `Barlow` from Google Fonts into your system fonts or pass `--font-path <dir>`.

---

## 6. Environment Assumptions

1. **UTF-8 Character Encoding:**
   - All source files are strictly UTF-8 encoded.
   - The document contains extensive Khmer Unicode text (`U+1780`–`U+17FF`). Editors and tools must preserve UTF-8 without BOM.
2. **Root Directory Path Resolution:**
   - Leading slashes in paths (e.g., `/assets/logos/innolab.webp`) resolve against `--root <DIR>`.
   - When compiling from the repository root, Typst automatically uses the current directory as root.
   - If compiling from a subdirectory, provide `--root ..`.
3. **Asset Resolution in Lightweight Mode:**
   - In this handoff package, essential logos and vector patterns are stored in `essential-assets/`.
   - Photo elements in `components/photos.typ` and `styles.typ` feature a built-in institutional placeholder engine (`report-photo` / `image-placeholder`).
   - If full high-res assets are present, place them in `assets/` to compile the complete photo-rich publication.

---

## 7. Current Build Result

| Metric | Current Value |
|---|---|
| **Compilation Status** | **PASSED (Exit Code: 0)** |
| **Compiler Errors** | **0** |
| **Compiler Warnings** | **0** |
| **Output Document** | `main.pdf` |
| **Total Page Count** | **141 pages** |
| **Build Time** | ~5.2 seconds (with 93 MB full photo set) / ~1.6 seconds (lightweight) |
| **Output Size** | 99.28 MB (full photographic PDF) |
| **Cover Spread Status** | **PASSED (Exit Code: 0)** -> `cover-spread.pdf` (1.10 MB) |
