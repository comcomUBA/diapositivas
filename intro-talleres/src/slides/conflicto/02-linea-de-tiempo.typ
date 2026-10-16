#import "@preview/touying:0.7.0": *
#import "/lib/timeline.typ": hito, htimeline, mal

// Muestra la línea de tiempo revelando los hitos de a uno. Alineada
// arriba para que no salte cuando aparecen nuevas notas al pie.
#let timeline-slide(events, ..args) = slide(align: top, repeat: events.len(), self => {
  v(0.6em)
  htimeline(events, shown: self.subslide, ..args)
})

== Dic 2023 -- May 2024: arranca el ajuste

#timeline-slide((
  hito(
    [27 dic 2023],
    [Se *prorroga el Presupuesto 2023* para 2024 sin actualizarlo por inflación (decreto 88/2023). En 4 meses, el sueldo #mal[compra un 28,5% menos].],
    src: "https://grupo-epc.com/informes/informe-de-evolucion-de-sueldos-cyt-abril-2024",
  ),
  hito(
    [23 abr 2024],
    [*1#super[a] Marcha Federal Universitaria (MFU):* entre *430 mil y 800 mil personas* en todo el país.],
    src: "https://www.uba.ar/ubanoticias/noticias/303",
    img: "/images/conflicto/2024-04-23-1ra-mfu.jpg",
  ),
  hito(
    [27 may 2024],
    [El Gobierno aumenta los *gastos de funcionamiento*... #mal[pero no los salarios, que son el 90% del presupuesto universitario.]],
    src: "https://www.cin.edu.ar/27-de-mayo-de-2024-comunicado-del-comite-ejecutivo-ampliado-del-cin/",
  ),
))

== Sep -- Oct 2024: primera ley, primer veto

#timeline-slide((
  hito(
    [12 sep 2024],
    [El Senado sanciona la *Ley 27.757 de Financiamiento Universitario (LFU)*: actualizar los salarios por la inflación acumulada desde dic 2023.],
    src: "https://www.pagina12.com.ar/767021-noche-amarga-para-el-gobierno-en-el-senado/",
    img: "/images/conflicto/2024-09-12-senado-ley-27757.jpg",
  ),
  hito(
    [2 oct 2024],
    [*2#super[a] MFU*, para pedir que no se vete la ley.],
    src: "https://www.pagina12.com.ar/771863-marcha-federal-universitaria-los-carteles-andan-diciendo/",
    img: "/images/conflicto/2024-10-02-2da-mfu-congreso.jpg",
  ),
  hito(
    [3 oct 2024],
    [#mal[Veto total] (decreto 879/2024). El 9/10, Diputados no llega a los $2/3$ para insistir: el veto queda firme. Hay paros y tomas en todo el país.],
    src: (
      "https://www.argentina.gob.ar/normativa/nacional/norma-404840",
      "https://chequeado.com/el-explicador/ley-de-financiamiento-universitario-en-vivo-el-congreso-trata-el-veto-de-milei/",
    ),
    img: "/images/conflicto/2024-10-03-no-al-veto.jpg",
  ),
))

== 2025: segunda ley, segundo veto

#timeline-slide((
  hito(
    [21 ago 2025],
    [El Senado sanciona una nueva LFU, la *Ley 27.795*: recomponer los salarios desde dic 2023, paritarias obligatorias y actualizar gastos + becas por inflación.],
    src: "https://www.argentina.gob.ar/normativa/nacional/ley-27795-419006",
  ),
  hito(
    [10 sep 2025],
    [#mal[Segundo veto total], por el «impacto fiscal». La ley costaba el *0,23% del PBI*; en intereses de deuda se iba el *1,2%*.],
    src: "https://opc.gob.ar/download/51605/?tmstv=1785431740",
  ),
  hito(
    [17 sep 2025],
    [*3#super[a] MFU*, mientras Diputados *rechaza el veto con $2/3$*. Después el Senado también: *la ley queda firme*.],
    src: "https://www.pagina12.com.ar/858746-el-rechazo-al-veto-se-festejo-en-la-calle/",
    img: "/images/conflicto/2025-09-17-3ra-mfu.jpg",
  ),
))

== Oct 2025 -- Mar 2026: hay ley, pero no se cumple

#timeline-slide(
  (
    hito(
      [20 oct 2025],
      [Se promulga la ley... #mal[pero con su ejecución suspendida] (decreto 759/2025), con el mismo argumento fiscal.],
      src: "https://www.boletinoficial.gob.ar/detalleAviso/primera/333140/20251021",
    ),
    hito(
      [22 oct 2025],
      [El Consejo Interuniversitario Nacional (*CIN*) lleva el conflicto a la *Justicia*.],
      src: "https://www.cin.edu.ar/las-universidades-publicas-iran-a-la-justicia-para-exigir-el-cumplimiento-de-la-ley-de-financiamiento-universitario/",
    ),
    hito(
      [23 dic 2025],
      [El juez Cormick ordena por *cautelar* aplicar la ley. En marzo, la Cámara la ratifica y califica de «poco serios» los argumentos del Gobierno.],
      src: "https://www.infobae.com/judiciales/2026/03/31/la-justicia-ratifico-que-el-gobierno-debe-ejecutar-la-ley-de-financiamiento-universitario/",
    ),
    hito(
      [31 mar 2026],
      [Materias de Computación entran en #mal[paro por tiempo indeterminado]: así fue nuestro 1#super[er] cuatrimestre.],
      src: "https://cartelera.inexactas.ar/",
    ),
  ),
  size: 14pt,
  height: 11cm,
)

== May -- Jun 2026: 4#super[a] marcha y más Justicia

#timeline-slide((
  hito(
    [7 may 2026],
    [La Cámara le concede al Gobierno un recurso ante la Corte Suprema y #mal[la cautelar queda suspendida].],
    src: "https://www.lanacion.com.ar/sociedad/la-corte-suprema-definira-la-justicia-avalo-un-pedido-del-gobierno-y-la-ley-de-financiamiento-nid07052026/",
  ),
  hito(
    [12 may 2026],
    [*4#super[a] MFU:* ya eran #mal[203 días] sin aplicar la ley.],
    src: "https://www.cin.edu.ar/cuarta-marcha-federal-universitaria-203-dias-sin-aplicar-la-ley-por-la-universidad-publica-y-en-defensa-de-la-democracia/",
    img: "/images/conflicto/2026-05-12-4ta-mfu.jpg",
  ),
  hito(
    [4 jun 2026],
    [El Gobierno pide apartar a jueces de la Cámara y de la Corte *por ser docentes universitarios*. La Corte lo rechaza.],
    src: "https://www.csjn.gov.ar/boletin/ver?data=13762",
  ),
))

== Jun 2026: un acuerdo que no alcanza

#timeline-slide(
  (
    hito(
      [10 jun 2026],
      [Acuerdo Gobierno--CIN--algunos gremios: aumento de *21,33%* en junio y *3%* en octubre. #mal[No alcanza: un sueldo que en nov 2023 compraba \$100 de cosas, ya compraba solo \$65. Con el aumento, \$78. Para compensar haría falta un aumento del 53%.] Deja afuera la investigación (art. 7 de la LFU). El CIN no retira el amparo.],
      src: (
        "https://www.lanacion.com.ar/sociedad/tras-casi-tres-anos-de-conflicto-el-gobierno-y-los-rectores-firmaron-un-acuerdo-por-el-nid10062026/",
        "https://grupo-epc.com/informes/informe-de-evolucion-de-sueldos-cyt-mayo-2026/",
        "https://grupo-epc.com/informes/informe-de-evolucion-de-sueldos-cyt-septiembre-2026/",
      ),
    ),
    hito(
      [25 jun 2026],
      [La *Corte Suprema deja firme la cautelar* y desestima la apelación del Gobierno.],
      src: "https://www.infobae.com/judiciales/2026/06/25/la-corte-suprema-dejo-firme-la-cautelar-que-obliga-al-estado-a-aplicar-la-ley-de-financiamiento-universitario/",
    ),
  ),
  size: 16pt,
  height: 11cm,
  columns: (1.6fr, 1fr),
)

== Sep -- Oct 2026: el Gobierno sigue sin cumplir

#timeline-slide(
  (
    hito(
      [22 sep 2026],
      [Como no se cumple, Cormick *intima al Gobierno* a cumplir la cautelar en 5 días.],
      src: "https://www.pagina12.com.ar/2026/09/22/la-justicia-intimo-al-gobierno-para-que-cumpla-con-la-ley-de-financiamiento-universitario/",
    ),
    hito(
      [6 oct 2026],
      [Cormick declara *inconstitucional* la suspensión del decreto 759/2025. Al día siguiente, #mal[el Gobierno apela].],
      src: (
        "https://www.pagina12.com.ar/2026/10/06/la-justicia-declaro-la-inconstitucionalidad-del-decreto-que-frenaba-la-ley-de-financiamiento-universitario/",
        "https://www.infobae.com/politica/2026/10/07/financiamiento-universitario-el-gobierno-apelo-el-fallo-judicial-y-las-universidades-preparan-una-movilizacion-al-congreso",
      ),
    ),
  ),
  size: 16pt,
  height: 10.5cm,
  first-top: false,
)

== 14 -- 15 oct 2026: multa... y marcha atrás

#timeline-slide((
  hito(
    [Mié 14 oct],
    [Por incumplir la cautelar, Cormick le impone al Jefe de Gabinete una *multa de \$100.000 por día*.],
    src: "https://www.infobae.com/judiciales/2026/10/14/financiamiento-universitario-la-justicia-impuso-una-multa-diaria-al-gobierno-por-incumplir-una-medida-cautelar/",
  ),
  hito(
    [Jue 15 oct (\~15:30)],
    [El mismo día de la marcha, la Cámara #mal[suspende provisoriamente la multa] mientras resuelve la apelación del Gobierno.],
    src: "https://www.infobae.com/politica/2026/10/15/financiamiento-universitario-la-justicia-suspendio-provisoriamente-la-cautelar-que-ordeno-actualizar-salarios-docentes-y-no-docentes/",
  ),
), size: 17pt, height: 10.5cm)

== 15 oct 2026: 5#super[a] marche... ¿represión?

#timeline-slide(
  (
    hito(
      [Jue 15 oct (13:00--18:00)],
      [*5#super[a] Marcha Federal Universitaria*, al Congreso.],
      src: "https://chequeado.com/el-explicador/marcha-federal-universitaria-del-15-de-octubre-de-2026-el-gasto-cayo-253-desde-2023-y-los-salarios-un-242/",
      img: ("/images/conflicto/2026-10-15-5ta-mfu-comcom-inicio.jpg", "/images/conflicto/2026-10-15-5ta-mfu-comcom-fin.jpg"),
      img-height: 75%,
    ),
    hito(
      [Jue 15 oct (\~15:20)],
      [Frente al Congreso, #mal[la policía nos reprime con gases lacrimógenos y camiones hidrantes].],
      src: "https://www.eldiarioar.com/politica/policia-lanzo-gases-lacrimogenos-utilizo-camiones-hidrantes-durante-marcha-federal-universitaria_1_13589664.html",
      img: "/images/conflicto/2026-10-15-5ta-mfu-hidrante.jpg",
      img-height: 92%,
      img-width: 62%,
      here: true,
    ),
  ),
  size: 17pt,
  height: 12cm,
  columns: (1.4fr, 1fr),
)
