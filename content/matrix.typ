#import "/template.typ": ejer

#let ejer-matrix(
  id: "matrix",
  title: [Desenvolviendo la serpiente],
  enun:
[
#grid(
  columns: (80%, 20%),
  inset: 4pt,
  raw("Se ha perdido Dagoberto, la serpiente de tu amigo Rigoberto. Afortunadamente en su busqueda por la jungla lograron encontrar ")+box[$t$] + raw(" serpientes, pero ahora caen en otro problema, ¿Cuál es el querido Dagoberto?"),
  image("serpienteEnrredada.jpg", width: 100%)
)
Por suerte tu amigo recuerda que el artículo 7 de la Ley 21.020 obliga a que todas las serpientes de Chile tengan escrito su nombre a lo largo de su cuerpo.
Un gran problema es que las $t$ serpienes que encontraron estan enredadas como espiral, y a tu amigo le dan miedo las serpientes (a pesar de tener una como mascota).

Recae en tí la responsabilidad de desenrredar toas las serpientes para ayudar a decifrar lo que tienen escrito las serpientes en su cuerpo para traer Dagoberto devuelta a su hogar!

Partiendo desde la esquina izquierda superior (ver $i$) de la representación matricial cada serpiente enrredada se debe recorrer en sentido horario, por ejemplo, de la siguiente forma:\

#let topRightCorner = box[#rotate(270deg)[$arrow.l.curve$]]
#let topLeftCorner = box[#rotate(180deg)[$arrow.l.curve$]]
#let bottomLeftCorner = box[#rotate(90deg)[$arrow.l.curve$]]
#let leftArrow = box[#rotate(180deg)[$arrow$]]
#let downArrow = box[#rotate(90deg)[$arrow$]]
#let upArrow = box[#rotate(-90deg)[$arrow$]]

#let arrows =  ($i$, $arrow$, $arrow$, $arrow$, $arrow$, topRightCorner,
                topLeftCorner, $arrow$, $arrow$, $arrow$, topRightCorner, downArrow,
                upArrow, topLeftCorner, $arrow$, $f$, downArrow, downArrow,
                upArrow, bottomLeftCorner, leftArrow, leftArrow, $arrow.l.curve$, downArrow,
                bottomLeftCorner, leftArrow, leftArrow, leftArrow, leftArrow, $arrow.l.curve$)

#grid(
  columns: 6,
  rows: (14pt, 14pt, 14pt, 14pt, 14pt),
  ..arrows
)

*INPUT*\
La primera línea contiene un entero $t$, tal que $1 <= t <= 2 dot 10^5$, la cantidad de serpientes por desenrredar.

Para cada serpiente se entrega en una  primera línea dos enteros $m$ y $n$, las dimensiones del esperial que forma la serpiente.

Luego se entregan $m$ líneas con $n$ caracteres, la representación matricial de la serpiente enrredada. $1<=n,m<=20$

*OUTPUT*\
Para cada serpiente se debe imprimir la cadena de $n dot m$ caracteres que tiene escrita la serpiente en su cuerpo desenrredado.

Ejemplos ej la próxima plana.
#let ejemplos(par0, par1, par2) = tiling(size: (40pt, par0),
{ 
  place(rect(width: 100%, height: par1, fill: luma(230)))

  move(dy: par2, place(rect(width: 100%, height: par1, fill: luma(230))))

  place(line(start: (0%, par1), end: (100%, par1), stroke: 0.4pt))
  place(line(start: (0%, par2), end: (100%, par2), stroke: 0.4pt))
  place(line(start: (0%, par2 + par1), end: (100%, par2 + par1), stroke: 0.4pt))
  place(line(start: (0%, 100%), end: (100%, 100%), stroke: .4pt))

})

#block(
  width: 100%,
  fill: ejemplos(251.5pt, 8%, 78%),
  inset: 6pt,
  stroke: 0.5pt + black,
  radius: 3pt,
  sticky: true,
  strong[input]+parbreak()+
  `2`+parbreak()+
  `4 5`+parbreak()+
  `Hola_`+parbreak()+
  `berts`+parbreak()+
  `o!!oo`+parbreak()+
  `gaD_y`+parbreak()+
  `3 3`+parbreak()+
  `Fed`+parbreak()+
  `o.e`+parbreak()+
  `cir`+parbreak()+
  strong[output]+parbreak()+
  `Hola_soy_Dagoberto!!`+parbreak()+
  `Federico.`,

)

#block(
  width: 100%,
  fill: ejemplos(285.5pt, 7%, 87%),
  inset: 6pt,
  stroke: 0.5pt + black,
  radius: 3pt,
  strong[input]+parbreak()+
  `1`+parbreak()+
  `10 2`+parbreak()+
  `so`+parbreak()+
  `ey`+parbreak()+
  `t.`+parbreak()+
  `nl`+parbreak()+
  `ea`+parbreak()+
  `i.`+parbreak()+
  `pm`+parbreak()+
  `re`+parbreak()+
  `ej`+parbreak()+
  `so`+parbreak()+
  `.r`+parbreak()+
  strong[output]+parbreak()+
  `soy.la.mejor.serpiente`,

)

#let ejemplos = tiling(size: (40pt, 250.9pt),
{ 
  place(rect(width: 100%, height: 8%, fill: luma(230)))
  move(dy: 50.5%, place(rect(width: 100%, height: 8.5%, fill: luma(230))))


  place(line(start: (0%, 8.5%), end: (100%, 8.5%), stroke: 0.4pt))
  place(line(start: (0%, 50.5%), end: (100%, 50.5%), stroke: 0.4pt))
  place(line(start: (0%, 58.5%), end: (100%, 58.5%), stroke: 0.4pt))
})

],
  solution: [#raw(read("/code/na.cpp"), block:true, lang: "cpp")],
//  solution: [#raw(read("/code/matrix-sol.cpp"), block:true, lang: "cpp")],
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

#ejer-matrix()
