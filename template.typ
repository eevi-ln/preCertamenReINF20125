/// Template y utilidades

/// Packages

/// Codly: Presentación de codigos
#import "@preview/codly:1.3.0": *

/// Cetz: Dibujos dentro de Typst
#import "@preview/cetz:0.4.2": canvas, draw
#import draw: content, on-layer, rect

/// Fletcher: Dibujar flechas
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import fletcher.shapes: triangle

/// Función para crear la portada del documento.
///
/// -> none
#let cover(
  /// Título del documento
  /// str
  title: "document title",
  /// Subtítulo del documento
  /// str
  subtitle: "document subtitle",
  /// Lista de autores
  /// array(array(str))
  authors: ()
) = {
  line(start: (0%, 0%), end: (100%, 0%))
  place(
    bottom,
    float: false,
    {
      line(start: (0%, 0%), end: (100%, 0%))
    }
  )
  place(
    center + horizon,
    float: false,
    {
      block(width: 100%, stroke: black, inset: 1em)[#text(20pt)[#emph[#title]]  #text(15pt)[#emph[*#subtitle*]]]
      v(5pt)
      let count = authors.len()
      let ncols = calc.min(count, 4)
      grid(
        columns: (1fr,) * ncols,
        row-gutter: 24pt,
        ..authors.map(author => [
          #author.name \
          #author.email
        ])
      )
    }
  )
}

/// Función para des-referenciar temporalmente el contenido de un capítulo reemplazando
/// cada una por "?".
///
/// -> content
#let no-ref(
  /// Contenido del capítulo.
  /// -> content
  it
) = {
  show ref: _ => [[?]]
  it
}

/// Función para crear los listing de manera automatica
#let lst(
  /// Lenguage del codigo
  lang: "",

  /// Texto del listing
  caption: "Descripcion no entregada",

  /// Codigo
  /// Si se quiere utilizar un codigo de un archivo, utilizar la funcion read(abs_path)
  code: "Codigo no entregado"
) = {
  let code_body = raw(code, block: true, lang: lang)
  figure(code_body, caption: caption)
}

/// Función para crear los listing de manera automatica
/// Asi manteniendo el formato entre todos los listing
#let listing(
  caption, // Descripción del codigo
  content // Contenido del codigo entre ```{lenguaje}\n{Codigo}```
) = {
  figure(
    caption: [#caption]
  )[#block(inset: 2em)[#content]]
}

/// Función para generar una tarjeta
/// 
/// Ex: #card[#lorem(10)] -> tarjeta por defecto
///
/// -> content
#let card(
  /// Color de la parte superior
  /// color
  color: blue,
  /// Título de la tarjeta
  /// str
  title: "Nota", 
  /// Contenido de la tarjeta
  /// content
  content) = {
  align(center)[
    #block(breakable: false, width: 95%)[
      #stack(
        block(
          width: 95%,
          fill: color.lighten(50%),
          inset: 0.5em,
          radius: ("top": 0.25em)
        )[#align(left + horizon)[#emph[#strong[#title]]]],

        block(
          width: 95%,
          fill: gray.lighten(87%),
          inset: 0.5em,
          radius: ("bottom": 0.25em)
        )[#align(top + left)[#content]]
      )
    ]
  ]
}

/// Función para formato de los ejercicios
#let ejer(
  id: none, // Id del ejercicio para label (En string)
  title: none,// Titulo del problema. Puede ser id
  source: none, // Indica si proviene de alguna fuente. Generalmente en link
  enun: none, // Indicar enunciado en Content
  solution: none, // Indicar solución en Content
  show_enun: true,
  show_sol: true
) = {

  // Casos que variables sea none
  if title == none {title = [Titulo Generico]}
  if enun == none {enun = [No hay enunciado]}
  if solution == none {solution = [Solucion no implementada]}

  // Enunciado
  if show_enun {
    align(center)[
      #stack( // Enunciado
        block( // Titulo en la zona superior izquierda del bloque
          width: 95%,
          inset: 0.5em,
        )[#align(left+horizon)[(#sym.hash) #emph[#strong[#title]]]],

        if source != none {
          block(
            width: 95%,
            inset: 0.5em,
          )[#align(right+horizon)[(#emoji.recepit)#emph[#strong[Fuente:#source]]]]
        },

        block( // Enunciado del ejercicio
          width: 95%,
          inset: 0.5em,
          radius: 0.25em,
          stroke: 0.5pt
        )[#align(top + left)[#enun]]
      )
    ]
  }

  // Solución
  if show_sol {
    align(center)[
      #stack( // Solución
        block(
          width: 95%,
          inset: 0.5em,
        )[#align(left+horizon)[(#sym.checkmark.heavy) #emph[#strong[#title]]]],

        block( // Solución del ejercicio
          width: 95%,
          inset: 0.5em,
          radius: 0.25em,
          stroke: 0.5pt
        )[#align(top + left)[#solution]]

      )
    ]
  }
}

