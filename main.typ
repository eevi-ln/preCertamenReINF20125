#import "template.typ": *
#show: codly-init

#set text(lang: "es")

#set par(justify: true)

#set heading(numbering: "1.")

#set document(
  title: [Pre-Certamen PA 2026-1],
  author: ("Evi Lambert", "Facundo Riquelme")
)

#cover(
  title: title(),
  subtitle: "Handbook",
  authors: (
    (
      name: "Evi Lambert",
    ),
    (
      name: "Facundo Riquelme",
    ),
  )
)

#pagebreak()

#outline()

#pagebreak()

#include "/content/array.typ"

#pagebreak()

#include "/content/matrix.typ"

#pagebreak()

#include "/content/OOP.typ"

#pagebreak()

#include "/content/backtracking.typ"

#pagebreak()

