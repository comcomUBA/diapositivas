#import "@preview/touying:0.7.0": *
#import themes.stargazer: *
#import "lib/theme.typ": build-theme, wide-title-slide
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.10": *

#set text(lang: "es")

#let workshop = (
  title: "Charla de Ingresantes",
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
#include "slides/comcom/02-codep.typ"
#include "slides/comcom/03-codeppers.typ"
#include "slides/comcom/04-actividades.typ"
#include "slides/comcom/05-cubawiki.typ"
#include "slides/comcom/06-participar.typ"
#include "slides/comcom/07-telegram.typ"

