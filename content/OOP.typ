#import "/template.typ": ejer

#let ejer-POO(
  id: "POO",
  title: [Superstring],
  enun:
[
Se les pide implementar el siguiente codigo de una clase en C++.
La clase se llama `SuperString`, la cual implementa un string haciendo uso de lista enlazada. Se tiene el siguiente codigo base:

#raw(read("/code/OOP.cpp"), block:true, lang: "cpp")

Se le pide completar la estructura. Asegurese de no tener Leaks de Memoria
],
  solution: [#raw(read("/code/OPP-sol.cpp"), block:true, lang: "cpp")],
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

#ejer-POO()
