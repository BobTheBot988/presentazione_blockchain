#import "config.typ": *
#show: project-theme
// Title Slide
#set heading(numbering: numbly("{1}.", default: "1.1"))
#title-slide(logo: image("Uniroma1.svg"))

// Standard Slide
= Introduction
==
We aim to present a suite of smart contracts designed to manage NFT (Non-Fungible Token)
auctions using a custom token called SapiCoin

= Token ERC-20
Here is the analysis section.

= Token ERC-721
#lorem(10)
== ERC-165
#lorem(30)

= Auction

#focus-slide[
  Another variant with primary color in background...
]

#matrix-slide[
  left
][
  middle
][
  right
]

#matrix-slide(columns: 1)[
  top
][
  bottom
]

#matrix-slide(columns: (1fr, 2fr, 1fr), ..(lorem(8),) * 9)
#lorem(10)
= Implementation details

#lorem(10)

= Liquidity Pool

#lorem(10)
= Conclusions

#lorem(10)
