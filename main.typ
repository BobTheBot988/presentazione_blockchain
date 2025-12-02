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
  #text(
    size: 15pt
  )[
  + A Model Driven Architecture approach provides a structured method for designing blockchain smart contracts. Using UML diagrams—such as Class and State Machine diagrams—developers can model both the structure and behavioral logic of smart contracts across multiple abstraction layers, improving clarity, analysis, and maintainability.
  + In this UML we have the ERC20 seen as an Interface and SapiCoin is a Class that implementes the methods. The methods are:
    + balanceOf: returns the balance locked in a address
    + transfer: transfer token to another address
    + approve: Approve a Spender to spend our money
    + allowance: returns the amount of token that a spender can spend
    + transferFrom: trasfer token from an address to another if we are approved to do so.
  + The entire approval mechanism is very useful from a
programming perspective.
Users can call approve on a given smart contract for a
specified amount of tokens.
In this way, a smart contract can use our tokens to provide
a service.]
  
]


// 1. UML
// 2. metodi da implementare e perché il sistema di approval è comodo

== Events

#speaker-note[
  + ERC-20 also defines a set of events that a token *should* emit whenever the contract's internal state changes, so that the operations executed within a smart contract can be tracked and displayed by front-end applications such as Etherscan.
  + We can also set optional vanities to the Token, such as the name of the token, the token symbol and the number of decimal.
  + To implement a specific token, in our case SapiCoin, there is no additional logic beyond being a token. If we wanted to implement a stablecoin or a wrapped coin, we would need to add methods to manage the exchange of the token with the real-world currency it represents
]

#matrix-slide[
  #image("assets/token.png", width: auto)
][
  #grid(align:center+horizon,columns: auto,rows: (50%,50%)
  )[
    #image("assets/events.png")
  ][
    #text(size: 15pt)[
      ```Solidity
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
```
    ]
  ]
]



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
