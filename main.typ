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
  + We used a Model Driven Architecture approach, this provides a structured method for designing blockchain smart contracts. Using UML diagrams—such as Class and State Machine diagrams—developers can model both the structure and behavioral logic of smart contracts across multiple abstraction layers, improving clarity, analysis, and maintainability.
  + In this UML class diagram we have the ERC20 seen as an Interface and SapiCoin is a Class that implementes the methods. The methods are:
    + balanceOf: returns the balance locked, in an address
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

#focus-slide("Design of the standard ERC-721")

== ERC-721

#speaker-note[
  The ERC-721 interface defines the standard for NFTs. Each token is unique and distinct, unlike ERC-20 tokens which are
  fungible (all identical). To contrain this non fungibility every Token must  have a unique id.

  Each NFT can have vanities by implementing the ERC-721-metadata which contains: 
   + name(): that gives us the name of the collection in which the NFT is contained.
   + symbol(): This will give us the symbol of the collection. 
   + tokenUri(uint tokenAdr): This will give us the URI so that we can display the NTF.

]

#figure(
  image("assets/nft.png")
)

== Token Image

#figure(
  image("assets/image_nft.png")
)

#speaker-note[
  The NFT that we minted is associated to this image through the ERC-721-metadata
]
== ERC-165

The ERC-721 document imposes the  implementation of the ERC-165 interface, so that any ERC-721 smart contract can
 be *queried* to see which interfaces are implemented by the smart contract.
\ Let us say that we wanted to display an NFT in our website which we did not implement.
Therefore we do not know if the Token implements the tokenUri method, in this case we can just ask him with the *supportsInterface(ERC-721-metadata:uint):bool*.\
This is not a guarantee since malicious contracts can lie and tell you they implement  an interface while not actually implementing it, but ERC-165 is a way to
 standardize the way we ask questions to other contracts.

#speaker-note[
  BTW if you are doing the project of Security in Software applications you may need to implement
  this interface.
]

= Auction


== Implementation details

prova

= Implementation details

#lorem(10)

= Liquidity Pool

#lorem(10)
= Conclusions

Invest money on our start-up (Not a financial Advice)