#import "@preview/touying:0.6.1": *
#import themes.university: *
#import themes.stargazer: *
#import "@preview/cetz:0.4.1"
#import "@preview/fletcher:0.5.8" as fletcher: edge, node
#import "@preview/numbly:0.1.0": numbly
#import "@preview/theorion:0.4.0": *
#let faculty = "Facoltà di Ingegneria dell'Informazione, Informatica e Statistica
Laurea Triennale in Informatica"
#let title = "Design and Implementation of a
Token-NFT-Liquidity Smart Contract Suite"
#let short_title = "Design and Implementation of a
Token-NFT-Liquidity Smart Contract Suite"
#let authors = [ Roberto Di Rosa,Luca Sforza ]
#let institution = "Sapienza"
// Define the theme configuration as a variable
//
// cetz and fletcher bindings for touying
#let cetz-canvas = touying-reducer.with(
  reduce: cetz.canvas,
  cover: cetz.draw.hide.with(bounds: true),
)
#let fletcher-diagram = touying-reducer.with(
  reduce: fletcher.diagram,
  cover: fletcher.hide,
)
#let project-theme = university-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: title,
    short-title: short_title,
    authors: authors,
    date: "3-12-2025",// datetime.today(),
    institution: institution,
    logo: emoji.school,
  ),
  config-methods(
    init: (self: none, body) => {
      set text(size: 23pt)
      body
    }
  ),
  // 1. Configure the page margin to make room for a taller footer
  config-page(
    margin: (bottom: 5em), // Increase this value (default is often ~2em)
    footer-descent: 1.5em, // Adjust this to move the footer up/down within that margin
  ),
  config-colors(primary: rgb(130, 36, 51), neutral-dark: rgb("#000"), neutral-light: rgb("#fff")),
  // footer-columns: (25%, 2fr, 25%),
)
#let project-theme-star = stargazer-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [#title],
    subtitle: [Subtitle],
    authors: authors,
    date: datetime.today(),
    institution: [#institution],
    logo: emoji.school,
  ),
)

// --- 1. Define Colors (from your .sty file) ---
#let sintef-colors = (
  main: rgb(130, 36, 51), // Deep Red
  grey: rgb(235, 235, 230), // Warm Grey
  light-green: rgb(205, 250, 225),
  green: rgb(20, 185, 120),
  dark-green: rgb(0, 70, 40),
  yellow: rgb(200, 155, 20),
  red: rgb(190, 60, 55),
  lilla: rgb(120, 0, 80),
)

// --- 1. Colors & Assets ---
#let sapienza-colors = (
  main: rgb(130, 36, 51), // The official Sapienza Red
)

