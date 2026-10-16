// Línea de tiempo horizontal: un eje al medio y los hitos alternando
// arriba y abajo (estilo de las placas de la FIFA). Cada hito ocupa una
// columna; si tiene foto, va en la mitad opuesta de su columna.

#let tl-accent = rgb("#8DC795")
#let tl-ink = rgb("#131c14")
#let tl-alert = rgb("#c0392b")

// Texto resaltado en rojo, para lo que «duele».
#let mal(it) = text(fill: tl-alert, weight: "bold", it)

// - date: fecha del hito.
// - body: descripción corta.
// - src: URL (o arreglo de URLs) con la fuente, va como nota al pie.
// - img: ruta (o arreglo de rutas) a fotos que acompañan al hito (opcional).
// - img-height: alto de la foto, relativo a la mitad del eje.
// - img-width: ancho de la foto, relativo a la columna (para no recortar
//   de más las fotos verticales o cuadradas).
// - here: marca el hito como «Ud. está aquí».
#let hito(date, body, src: none, img: none, img-height: 85%, img-width: 100%, here: false) = (
  date: date,
  body: body,
  src: src,
  img: img,
  img-height: img-height,
  img-width: img-width,
  here: here,
)

#let _sources(src) = {
  let srcs = if src == none { () } else if type(src) == array { src } else { (src,) }
  for s in srcs { footnote(link(s)) }
}

#let _event(ev, above-axis, visible, stub) = {
  let dot-r = 0.3em
  let pad-l = 0.6em
  let content = {
    place(top + left, dx: -pad-l - dot-r, dy: 0.2em, circle(radius: dot-r, fill: tl-accent))
    text(fill: tl-accent, weight: "bold", ev.date)
    if ev.here {
      h(0.6em)
      text(style: "italic", fill: tl-alert)[$<-$ Ud. está aquí]
    }
    linebreak()
    ev.body
    // Las fuentes solo aparecen cuando el hito se muestra, así no
    // se anticipan notas al pie de hitos ocultos.
    if visible { _sources(ev.src) }
  }
  let ev-block = block(
    width: 100%,
    inset: if above-axis { (left: pad-l, bottom: stub) } else { (left: pad-l, top: stub) },
    stroke: (left: (thickness: 1.5pt, paint: tl-ink, dash: "dashed")),
    above: 0pt,
    below: 0pt,
    content,
  )
  if visible { ev-block } else { hide(ev-block) }
}

#let _photo(ev, visible, half) = {
  // Varias fotos van una al lado de la otra, sin recortar.
  let pic = if type(ev.img) == array {
    stack(
      dir: ltr,
      spacing: 0.4em,
      ..ev.img.map(path => block(radius: 2pt, clip: true, image(path, height: half * ev.img-height))),
    )
  } else {
    block(
      radius: 2pt,
      clip: true,
      image(ev.img, width: ev.img-width, height: half * ev.img-height, fit: "cover"),
    )
  }
  if visible { pic } else { hide(pic) }
}

// - events: arreglo de `hito(...)`.
// - shown: cuántos hitos mostrar (para revelarlos de a uno con subslides).
// - first-top: si el primer hito va arriba del eje.
// - height: alto total de la línea de tiempo.
// - size: tamaño de texto de los hitos.
// - columns: anchos de columna (por defecto, todas iguales).
#let htimeline(
  events,
  shown: none,
  first-top: true,
  height: 12cm,
  size: 15pt,
  columns: auto,
) = {
  let n = events.len()
  let shown = if shown == none { n } else { shown }
  let half = height / 2
  let stub = 1.2em
  let gutter = 0.9em

  let cells = ()
  for (i, ev) in events.enumerate() {
    let above-axis = calc.even(i) == first-top
    let visible = i < shown
    let ev-cell = _event(ev, above-axis, visible, stub)
    let photo-cell = if ev.img != none { _photo(ev, visible, half) } else { none }
    if above-axis {
      cells.push(grid.cell(x: i, y: 0, align: bottom, ev-cell))
      if photo-cell != none { cells.push(grid.cell(x: i, y: 1, align: top, pad(top: 0.6em, photo-cell))) }
    } else {
      cells.push(grid.cell(x: i, y: 1, align: top, ev-cell))
      if photo-cell != none { cells.push(grid.cell(x: i, y: 0, align: bottom, pad(bottom: 0.6em, photo-cell))) }
    }
  }

  set text(size: size)
  set par(justify: false, leading: 0.5em)
  block(width: 100%, height: height, {
    // Eje, con flecha al final: la historia sigue.
    // La línea termina donde empieza la punta, para que no asome por ella.
    let head-l = 12pt
    let head-w = 12pt
    place(top + left, dy: half, line(length: 100% - head-l + 1pt, stroke: 2.5pt + tl-ink))
    place(top + right, dy: half - head-w / 2, polygon(
      fill: tl-ink,
      stroke: none,
      (0pt, 0pt),
      (head-l, head-w / 2),
      (0pt, head-w),
    ))
    grid(
      columns: if columns == auto { (1fr,) * n } else { columns },
      rows: (half, half),
      column-gutter: gutter,
      ..cells,
    )
  })
}
