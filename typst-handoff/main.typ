#import "styles.typ": *

#show: report-page

#set heading(numbering: none)


// ============================================================
// FRONT MATTER
// ============================================================

#include "frontmatter/cover.typ"

#include "frontmatter/title.typ"

#include "frontmatter/credits.typ"

#include "frontmatter/toc.typ"


// ============================================================
// START REPORT PAGE NUMBERING
// ============================================================

#counter(page).update(1)


// ============================================================
// REPORT CONTENT
// ============================================================

#include "chapters/chapter-01.typ"

#include "chapters/chapter-02.typ"

#include "chapters/chapter-03.typ"

#include "chapters/chapter-04.typ"

#include "chapters/chapter-05.typ"

#include "chapters/chapter-06.typ"

#include "chapters/chapter-07.typ"

#include "chapters/chapter-08.typ"

// ============================================================
// BACK MATTER
// ============================================================

#include "backmatter/conclusion.typ"
#include "backmatter/appendix.typ"
#include "backmatter/back-cover.typ"
