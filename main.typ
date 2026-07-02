#import "template.typ": *
#show: codly-init

#set text(lang: "es")

#set par(justify: true)

#set heading(numbering: "1.")

#set document(
  title: [Programación Avanzada],
  author: ("Benjamín Echeverría", "Facundo Riquelme")
)

#cover(
  title: title(),
  subtitle: "Handbook",
  authors: (
    (
      name: "Benjamín Echeverría",
      email: "becheverria@usm.cl"
    ),
    (
      name: "Facundo Riquelme",
      email: "friquelmel@usm.cl"
    ),
  )
)

#pagebreak()

#outline()

#pagebreak()

// #include "docs/chapters/ch1.typ"

#include "/docs/c/intro-c.typ"

#pagebreak()

#include "/docs/bash/terminal.typ"

#pagebreak()

#bibliography("/references.bib")
