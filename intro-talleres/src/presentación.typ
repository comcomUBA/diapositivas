#import "@preview/touying:0.7.0": *
#import themes.stargazer: *
#import "assets/theme.typ": build-theme, wide-title-slide
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.10": *

#set text(lang: "es")

#let workshop = (
  title: "Bienvenidxs a los talleres de la ComCom",
  date: "Primer Cuatrimestre 2026",
  date-footer: "1c2026",
)

#show: codly-init.with()

#show: build-theme(
  workshop.title,
  workshop.date,
  workshop.date-footer,
)

#wide-title-slide(extra: pad(top: 30pt, image("assets/images/logo-sin-texto.min.svg", height: 3.5cm)))

== ¿Qué es la ComCom?


#grid(
  columns: (1.2fr, 1fr),
  [
    #align(center)[
      #block(
        width: 300pt,
        height: 350pt,
        radius: 8pt,
        clip: true,
        image("assets/images/comcom.jpg", width: 100%, height: 100%, fit: "cover"),
      )
    ]
  ],
  [
    - Conjunto de estudiantes de Ciencias de la Computación que organizan actividades, por y para estudiantes. \ Gente de datos, bienvenida.

    - A veces hablamos de política, pero no somos un partido ni agrupación partidaria.
  ],
)


== ¿Qué actividades hace la ComCom?



#grid(
  columns: (1fr, 1.2fr),
  [
    - Talleres abiertos para todxs, de Linux, Git, entre otros.

    - ¡GameJam, NDK (noche de karaoke), ComComida y proyecciones de pelis, son algunos de otros eventos que estan surgiendo ultimamente dentro de los grupos!
  ],
  [
    #align(right)[
      #block(
        radius: 8pt,
        clip: true,
        image("assets/images/talleres.jpg", width: 90%),
      )

    ]
  ],
)

#grid(
  columns: (1.2fr, 1fr),
  [
    #align(left)[
      #block(
        radius: 8pt,
        clip: true,
        image("assets/images/ndj.jpg", width: 92%),
      )
    ]
  ],
  [
    - Noche de Juegos (o NDJ) es una noche de juegos de mesa que se suele hacer una o dos veces por cuatri. Se vende comida y bebida.
  ],
)

== ¡También mantenemos CubaWiki!

- Acá vas a encontrar guías resueltas, parciales viejos, bibliografía y más para todas las materias de la carrera. Se sostiene con la contribucion de estudiantes *y vos tambien podes aportar*.

#align(center)[
  #image("assets/images/cubawiki.png", width: 59%)
  #underline[https://cubawiki.com.ar/]
]

== ¿Cómo participar?

- Podés traer tu propuesta de espacio y actividad, nosotrxs la difundimos por los medios de comunicación.

#align(center + horizon)[
  #image("assets/images/qr-linktree.svg", width: 37%)
  *¡Ya sos parte de la ComCom! \ Apropiátela*

  #link("https://www.instagram.com/comcom.exactas.uba/")[#underline[*\@comcom.exactas.uba*]]

]

== ¿Por qué la facu está de paro?

#figure(
  image("assets/images/justicia_ratificó.png", width: 100%),
  caption: [La Justicia ratifica, otra vez, al poder ejecutivo que debe cumplir con la ley de financiamiento universitario.#footnote[https://www.infobae.com/judiciales/2026/03/31/la-justicia-ratifico-que-el-gobierno-debe-ejecutar-la-ley-de-financiamiento-universitario/]],
)

- #alternatives[Estado actual: el ejecutivo va a apelar a la corte suprema, *debería cumplir mientras espera respuesta*.][#strike[Estado actual: el ejecutivo va a apelar a la corte suprema, *debería cumplir mientras espera respuesta*].]

== ¿Por qué la facu está de paro?

#figure(
  image("assets/images/recurso_suspender.png", width: 80%),
  caption: [El gobierno apeló a la corte suprema, pero hasta que respondan ya deberían empezar a mover los fondos para las universidades.#footnote[https://www.infobae.com/politica/2026/04/17/el-gobierno-presento-un-recurso-extraordinario-ante-la-corte-suprema-para-suspender-la-ley-de-financiamiento-universitario/]],
)

== ¿Por qué duele tanto en Exactas?

- Los cargos *son mayoritariamente de exclusiva*.
  - Docentes hacen *investigación*. Viven de su sueldo.

/*
La figura del salario dice lo siguiente:

- El eje Y se muestra un valor (100) como base de noviembre del 2023 para representar el salario real.

- El eje X muestra una línea de tiempo de meses y años.

- La línea naranja es evolución del salario real del CONICET.

- La línea celeste (UUNN, ver leyenda) muestra la evolución del salario real de las universidades nacionales.

- La línea azul (SINEP, ver leyenda) muestra la evolución del salario real del sector público.
*/
#figure(
  image("assets/images/salario.png", width: 100%),
  caption: [Pérdida de salarios reales en CONICET, universidades nacionales y sector público.#footnote[https://grupo-epc.com/category/informes/evolucion-de-salarios-cyt/]],
)

== ¿Qué consecuencias tiene esto?

- Se están yendo profes, JTPs, ayudantes de primera y ayudantes de segunda.
  - ¿A dónde van a laburar?: San Andrés, Di Tella, UCEMA, etc. (privadas).
  - También se van a otros países, como Francia, China, EE. UU., República Checa, Polonia, Japón, Austria, etc.

== ¿Dónde me puedo informar?

#grid(
  columns: (1fr, 1.65fr, 1fr),
  [
    #align(left)[
      #block(
        radius: 6pt,
        clip: true,
        image("assets/images/materias-paro.png", width: 98%),
      )
    ]
  ],
  [
    #align(center)[
      #block(
        radius: 6pt,
        clip: true,
        image("assets/images/eventos-exactas.png", width: 98%),
      )
    ]
  ],
  [
    #align(right)[
      #block(
        radius: 6pt,
        clip: true,
        image("assets/images/asamblea.png", width: 98%),
      )
    ]
  ],
)

#align(center)[
  #image("assets/images/qr-inexactas.svg", width: 25%)
  *#underline[#link("https://cartelera.inexactas.ar/")[cartelera.inexactas.ar]]*

]

== Último ultimísimo
- Esta semana hay elecciones en la facu.
- ¿Qué se vota?

 1. Representantes en el Consejo Directivo (obligatorias)
 2. Centro de Estudiantes (no obligatorias pero ya están acá.... voten)

- Pueden ver los candidatos y las listas en #link("http://exactas.uba.ar/elecciones-estudiantes-2026/")[exactas.uba.ar/elecciones-estudiantes-2026/]