#import "/lib/theme.typ": ink, primaryColor
#import "/lib/timeline.typ": tl-alert

// El CIN cuenta los días sin aplicar la ley desde el 21/10/2025
// (al 12/05/2026 eran 203). Se recalcula al compilar.
#let dias-sin-ley = (datetime.today() - datetime(year: 2025, month: 10, day: 21)).days()

#let dato(numero, texto, color: ink) = block(
  width: 100%,
  inset: (x: 0.6em, y: 0.45em),
  radius: 4pt,
  fill: primaryColor.lighten(75%),
  grid(
    columns: (3.2em, 1fr),
    column-gutter: 0.6em,
    align: horizon,
    align(center, text(size: 1.1em, weight: "bold", fill: color, numero)), text(size: 0.8em, texto),
  ),
)

== ¿Por qué estamos hartxs?

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1em,
  align: horizon,
  [
    Porque *la venimos peleando hace casi 3 años.*

    #v(0.3em)
    #stack(
      spacing: 0.45em,
      dato([5], [Marchas Federales Universitarias desde abril de 2024.#footnote[https://chequeado.com/el-explicador/marcha-federal-universitaria-del-15-de-octubre-de-2026-el-gasto-cayo-253-desde-2023-y-los-salarios-un-242/]<chequeado>]),
      dato([2], [Leyes de financiamiento aprobadas por el Congreso... y *2 vetos*.]),
      dato(
        str(dias-sin-ley),
        [Días con la ley vigente, *sin aplicarse*.#footnote[Contando como el CIN: https://www.cin.edu.ar/cuarta-marcha-federal-universitaria-203-dias-sin-aplicar-la-ley-por-la-universidad-publica-y-en-defensa-de-la-democracia/]],
        color: tl-alert,
      ),
      dato(
        [−24%+],
        [Lo que perdió, en términos reales, el sueldo docente contra la inflación, de nov 2023 a sep 2026.#footnote(<chequeado>)],
        color: tl-alert,
      ),
    )
  ],
  [
    #figure(
      block(radius: 4pt, clip: true, image("/images/conflicto/2024-10-02-2da-mfu-cartel.jpg", height: 11cm, width: 100%, fit: "cover")),
      caption: [2#super[a] MFU, oct 2024.#footnote[https://www.pagina12.com.ar/771863-marcha-federal-universitaria-los-carteles-andan-diciendo/]],
    )
  ],
)
