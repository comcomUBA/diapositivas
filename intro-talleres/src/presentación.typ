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
    - Conjunto de estudiantes de Ciencias de la Computación que organizan actividades, por y para estudiantes. \ Gente de datos, bienvenida.

    - A veces hablamos de política, pero no somos un partido ni agrupación partidaria.
  ],
  [
    #align(center)[
      #block(
        width: 260pt,
        height: 300pt,
        radius: 8pt,
        clip: true,
        image("assets/images/comcom.jpg", width: 100%, height: 100%, fit: "cover"),
      )
    ]
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
  #grid(
    columns: (2fr, 1fr),
    [
      #image("assets/images/cubawiki.png", width: 100%)

    ],
    [
      #image("assets/images/qr-cubawiki.svg", width: 100%)
    ],
  )
]

== ¿Cómo participar?

- Podés traer tu propuesta de espacio y actividad, nosotrxs la difundimos por los medios de comunicación.

#align(center + horizon)[
  #image("assets/images/qr-linktree.svg", width: 37%)
  *¡Ya sos parte de la ComCom! \ Apropiátela*

  #link("https://www.instagram.com/comcom.exactas.uba/")[#underline[*\@comcom.exactas.uba*]]

]
