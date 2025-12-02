#import "config.typ": *
#show: project-theme
// Title Slide
#set heading(numbering: numbly("{1}.", default: "1.1"))
#title-slide(logo: image("Uniroma1.svg"))

// Standard Slide
= Introduction
==
We aim to present a suite of smart contracts designed to manage NFT
auctions using a custom token called SapiCoin.

We used Solidity language for developing this suite of smart contracts. 

A Token can be viewed as a class in other programming languages (e.g. Java), however to avoid binding a smart contract to a specific Token we used an abstraction standardized by the Ethereum Community.

In addition to token transfers and auctions, our system
includes a liquidity pool implemented using Uniswap v3,
which allows users to trade between Ether and SapiCoin.



= Tokens

== ERC-20

ERC-20 is the standard that represents a token on EVM
compatible blockchains.

There is no central authority responsible for issuing these
standards; instead, communities such as *Ethereum Magicians*
provide a space to discuss improvements to the Ethereum
standard through EIPs (Ethereum Improvement Proposals).

=== Polymorphism

Achieving this requires polymorphism.

The Ethereum Virtual Machine does not provide instructions
for handling abstract classes, but the VM itself is polymorphic.

When a method of a smart contract is invoked through a
transaction, the memory address of the method is accessed by
computing the hash of the function signature.
If the invoked method does not exist, a default fallback
function is executed (which can be overridden).

#set raw(syntaxes: "assets/solidity.sublime-syntax")
#set raw(theme: "assets/solidity.tmTheme")   

```Solidity
  contract SapiCoin is ERC20 {
    /* Implementation */
  }
```

So Solidity exploit this behavior to defines interfaces. So ERC-20 can be viewed as an Interface.
#focus-slide("Design of the standard ERC-20")
#figure(
  image("assets/token.png", width: auto)
)

#speaker-note[
  + A Model Driven Architecture approach provides a structured method for designing blockchain smart contracts. Using UML diagrams—such as Class and State Machine diagrams—developers can model both the structure and behavioral logic of smart contracts across multiple abstraction layers, improving clarity, analysis, and maintainability.
  + In this UML we have the ERC20 seen as an Interface and SapiCoin is a Class that implementes the methods.
  + ]


// 1. UML
// 2. metodi da implementare e perché il sistema di approval è comodo
// 3. eventi
// 4. Vanità



== Token ERC-721
#lorem(10)
=== ERC-165
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
