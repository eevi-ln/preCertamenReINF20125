#import "/template.typ": ejer

#let ejer-backtracking(
  id: "backtracking",
  title: [Reordenando un arreglo],
  enun:
[
Dado un arreglo de números enteros, se les pide permutar sus elementos de tal manera que se vea máximizada la cantidad de posiciones que contienen un valor mayor al que tenian en un comienzo.

*INPUT*\
La primera línea contiene un entero $n$, tal que $1 <= n <= 10^5$, el largo del arreglo.
La segunda línea contiene $n$ enteros $a_1, a_2, dots.h.c a_n$ tales que $ 1 <= a_i <= 10^9$, los elemenots del arreglo.

*OUTPUT*\
Deben imprimir un único número entero, el numero de elementos del arreglo original que luego de ser permutados tienen un valor mayor al que tenian inicialmente, previo al reajuste de su orden.

*EJEMPLOS*
#let ejemplos = tiling(size: (40pt, 72pt),
  { place(line(start: (0%,100%), end: (100%, 100%))) })

#block(
//  fill: luma(250),
  width: 99%,
  fill: ejemplos,
  inset: 6pt,
  stroke: 0.5pt + black,
  radius: 3pt,
  strong[input]+parbreak()+
  `7`+parbreak()+
  `10 1 1 1 5 5 3`+parbreak()+
  `4`
)
#block(
  width: 99%,
  fill: ejemplos,
  inset: 6pt,
  stroke: 0.5pt + black,
  radius: 3pt,
  strong[input]+parbreak()+
  `7`+parbreak()+
  `10 1 1 1 5 5 3`+parbreak()+
  `4`
)
],
  solution: [#raw(read("/code/backtracking-sol.cpp"), block:true, lang: "cpp")],
  show_enun: true,
  show_sol: true,
) = {
  ejer(
    id: id,
    title: title,
    enun: enun,
    solution: solution,
    show_enun: show_enun,
    show_sol: show_sol
  )
}

#ejer-backtracking()
