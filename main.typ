#import "styles.typ": *

#set heading(numbering: none)


// ============================================================
// FRONT MATTER
// ============================================================

#include "frontmatter/cover.typ"

#include "frontmatter/credits.typ"

#include "frontmatter/toc.typ"


// ============================================================
// REPORT CONTENT & NUMBERING
// ============================================================

#show: report-page

#counter(page).update(1)


// ============================================================
// REPORT CONTENT (THE 5 CORE CHAPTERS IN EXACT SOURCE ORDER)
// ============================================================

#include "chapters/chapter-01.typ"

#pagebreak()

#include "chapters/chapter-02.typ"

#pagebreak()

#include "chapters/chapter-03.typ"

#pagebreak()

#include "chapters/chapter-04.typ"

#pagebreak()

#include "chapters/chapter-05.typ"


// ============================================================
// BACK MATTER
// ============================================================

#include "backmatter/back-cover.typ"
