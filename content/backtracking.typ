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
#let ejemplos = tiling(size: (40pt, 96.5pt),
{ 
  place(rect(width: 100%, height: 20%, fill: luma(230)))
  move(dy: 60%, place(rect(width: 100%, height: 20%, fill: luma(230))))


  place(line(start: (0%, 20%), end: (100%, 20%), stroke: 0.4pt))
  place(line(start: (0%, 60%), end: (100%, 60%), stroke: 0.4pt))
  place(line(start: (0%, 80%), end: (100%, 80%), stroke: 0.4pt))
})

#block(
//  fill: luma(250),
  width: 100%,
  fill: ejemplos,
  inset: 6pt,
  stroke: 0.5pt + black,
  radius: 3pt,
  strong[input]+parbreak()+
  `7`+parbreak()+
  `10 1 1 1 5 5 3`+parbreak()+
  strong[output]+parbreak()+
  `4`
)
*Explicación*
Podemos reordenar sus elementos obteniendo:
`1 5 5 3 10 1 1`, donde entonces los elementos desde la segunda posición hasta la quinta aumentaron.\

#block(
  width: 100%,
  fill: ejemplos,
  inset: 6pt,
  stroke: 0.5pt + black,
  radius: 3pt,
  strong[input]+parbreak()+
  `5`+parbreak()+
  `1 1 1 1 1`+parbreak()+
  strong[output]+parbreak()+
  `0`
)
No se puede reordenar los elementos del arreglo de ninguna manera permitiendo que alguna posición quede con un valor mayor al con el que comenzó.
],
  solution: [#raw(read("/code/na.cpp"), block:true, lang: "cpp")],
//  solution: [#raw(read("/code/array-sol.cpp"), block:true, lang: "cpp")],
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
