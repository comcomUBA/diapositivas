#import "@preview/touying:0.7.0": *
#import themes.stargazer: *
#import "lib/theme.typ": build-theme, wide-title-slide
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.10": *

#set text(lang: "es")

#let workshop = (
  title: "Bienvenidxs a los talleres de la ComCom",
  date: "Segundo Cuatrimestre 2026",
  date-footer: "2c2026",
)

#show: codly-init.with()

#show: build-theme(
  workshop.title,
  workshop.date,
  workshop.date-footer,
)

#wide-title-slide(extra: pad(top: 30pt, image("/images/comcom/logo.svg", height: 3.5cm)))

#include "slides/comcom/01-que-es.typ"
#include "slides/comcom/02-actividades.typ"
#include "slides/comcom/03-cubawiki.typ"
#include "slides/comcom/04-codep.typ"
#include "slides/comcom/05-participar.typ"

#include "slides/conflicto/01-hartazgo.typ"
#include "slides/conflicto/02-linea-de-tiempo.typ"
#include "slides/conflicto/03-impacto.typ"
#include "slides/conflicto/04-informarse.typ"
#include "slides/conflicto/05-sumate.typ"

