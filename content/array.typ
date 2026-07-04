#import "/template.typ": ejer

#let ejer-array(
  id: "array",
  title: [Sumando uno],
  enun:
[
Dado un entero $n$, se le debe aplicar $m$ operaciones. Cada vez que se aplica una de estas operaciones se debe reemplazar cada digito $d$ del número con la representacion decimal del entero $d + 1$. Por ejemplo, si aplicamos esta operación una vez al número $1912$, este se convierte en $21023$.
Se les pide retornar el largo del entero resultante al aplicar $m$ operaciones.

*INPUT*\
La primera línea contiene un entero $t$, tal que $1 <= t <= 2 dot 10^5$, la cantidad de casos de prueba.\
La única línea de cada caso de prueba contiene dos enteros, el número inicial $n$ y la cantidad de operaciones $m$. Estos son tales que $1 <= n <= 10^9$ y $1 <= m <= 2 dot 10^5$.\

*OUTPUT*\
Para cada caso de prueba deben imprimir un único número entero, el largo del entero resultante.

*EJEMPLOS*
#let ejemplos = tiling(size: (40pt, 250.9pt),
{ 
  place(rect(width: 100%, height: 8%, fill: luma(230)))
  move(dy: 50.5%, place(rect(width: 100%, height: 8.5%, fill: luma(230))))


  place(line(start: (0%, 8.5%), end: (100%, 8.5%), stroke: 0.4pt))
  place(line(start: (0%, 50.5%), end: (100%, 50.5%), stroke: 0.4pt))
  place(line(start: (0%, 58.5%), end: (100%, 58.5%), stroke: 0.4pt))
})

#block(
  width: 100%,
  fill: ejemplos,
  inset: 6pt,
  stroke: 0.5pt + black,
  radius: 3pt,
  strong[input]+parbreak()+
  `5`+parbreak()+
  `1912 1`+parbreak()+
  `5 6`+parbreak()+
  `999 1`+parbreak()+
  `88 2`+parbreak()+
  `12 100`+parbreak()+
  strong[output]+parbreak()+
  `5`+parbreak()+
  `2`+parbreak()+
  `6`+parbreak()+
  `4`+parbreak()+
  `2115`
)
*Explicación*
Para el primera caso a $1.912$ le sumamos $1$ a cada uno de sus dígitos una sola vez y quedamos con:
$1 -> 2 , 9 -> 10 , 1 -> 2 , 2 -> 3 : 21.023$ un número de largo 5.
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

#ejer-array()
