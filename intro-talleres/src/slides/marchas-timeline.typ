#import "@preview/touying:0.7.0": *
#import "@preview/zeitline:0.1.1": timeline

== ¿Se hizo algo antes del paro?

#let marcha-theme = (
  colors: (
    accent: rgb("#8DC795"),
    muted: rgb("#131c14"),
    line: rgb("#c9d9c2"),
  ),
  sizes: (
    date: 16pt,
    body: 14pt,
    dot: 6pt,
    line-width: 2.5pt,
  ),
  spacing: (
    row: 1.1em,
    arm: 2.8em,
  ),
)

#let mfu-1 = (
  date: [$1^"a"$ MFU · 23 abr 2024],
  desc: [Prórroga del Presupuesto 2023, licuado por la inflación. El Gobierno terminó abriendo diálogo y aumentando los fondos de funcionamiento.#footnote[https://www.infobae.com/politica/2024/04/23/marcha-universitaria-federal-cronica-de-una-movilizacion-multitudinaria-para-defender-la-educacion-publica/]],
)

#let mfu-2 = (
  date: [$2^"a"$ MFU · 2 oct 2024],
  desc: [Primera LFU aprobada por el Congreso, pero vetada totalmente. Hubo una nueva MFU y se reabrió la discusión.#footnote[https://chequeado.com/el-explicador/marcha-federal-universitaria-en-vivo-todos-los-datos-sobre-la-manifestacion-del-2-de-octubre/]],
)

#let mfu-3 = (
  date: [$3^"a"$ MFU · 17 sep 2025],
  desc: [Segunda LFU aprobada y nuevo veto total. El Congreso lo rechazó con $2/3$ y ratificó la ley.#footnote[https://hoydia.com.ar/hoy-cordoba/tercera-marcha-federal-universitaria/]],
)

#slide(repeat: 4, self => [
  #let events = if self.subslide == 1 {
    (mfu-1,)
  } else if self.subslide == 2 {
    (mfu-1, mfu-2)
  } else {
    (mfu-1, mfu-2, mfu-3)
  }

  #timeline(events, justify: true, theme: marcha-theme)

  #if self.subslide == 4 [
    #v(0.9em)
    Hay un tira y afloje entre el Poder Ejecutivo y el Poder Judicial, *hasta que de manera contundente...*
  ]
])
