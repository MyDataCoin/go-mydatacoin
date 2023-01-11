# 🤖 Self-Sovereign Identity

Blockchain technology, Decentralized Identifiers and Verifiable Credentials are the 3 pillars of Self-Sovereign Identity.

<figure><img src="https://lh3.googleusercontent.com/U8IcCN6OnhXBMWoisQFNTB7NYewv4LhKmBeO-im6qTM7_xumUO9pP4XIYspTHZPzQ2ylrP0lMi6F1MeME32m17hhcd0anVKKAs9OgGbzWyKn4ihLkuKFuKQ74gzCFSKgYTXZSV1q9nXWAewJyjovF6t1UC5kwLcaJnyk5JbtQZk5MmT7M_MxGBTd72WvLiM" alt=""><figcaption></figcaption></figure>

**Why SSI?**

* A secure and digital peer-to-peer channel is established between ID Issuer, ID Owner and ID Verifier. When credentials are exchanged not even the Self-Sovereign Identity system provider knows what is being exchanged. Credential issuing becomes simpler and faster.
* SSI Credentials are tamper-proof through the use of cryptography.
* They are private and under your control. SSI uses Selective Identity disclosure technology.
* Self-Sovereign Identity credentials can be verified anywhere, at any time. Even if the issuer does not exist anymore (with the exception of situations where the issuance of credentials happened using Private DIDs and the DID of the issuer was not written on the ledger).
* **Personal Data** is not stored on centralized servers. Meaning that for hackers to steal 50 million digital identity records they would have to hack those 50 million people individually. Considerably more difficult.
* Self-Sovereign Identity **tries to abolish multiple passwords**. You just need to know your wallet password.

**Verifiable Credentials**, allow for the digital watermarking of claims data through a combination of public key cryptography  and privacy-preserving techniques to prevent correlation. The effect of this is that now, not only can physical credentials safely be turned digital, holders of such credentials can selectively disclose specific information from this credential without exposing the actual data, where third-parties are instantly able to verify this data without having to call upon the issuer.

**DIDs** are an integral part of Self-Sovereign Identity. Currently, we are reliant on the identifiers from intermediaries such as Google, Facebook, email providers or mobile network operators to connect us. This has big consequences for our privacy, since the (meta)data gathered by those parties from the interactions over those connections are not within our control.

\
[DID](https://www.w3.org/TR/did-core/) is going to be used as a unique identifier in the MyDataCoin ecosystem. Data collectors can issue signed credentials using a decentralized identifier (DID) to users, enabling them to share their data with other data consumers. Anyone can check the authentication data by referring to the DID document on MyDataCoin. Additionally, the MyDataCoin-based DID is used to guarantee data reliability.

[Decentralized Identifiers](https://www.w3.org/TR/did-core/#dfn-decentralized-identifiers) are a component of larger systems, such as the Verifiable Credentials ecosystem \[[VC-DATA-MODEL](https://www.w3.org/TR/did-core/#bib-vc-data-model)], which influenced the design goals for this specification. The design goals for Decentralized Identifiers are summarized here.



| Goal             | Description                                                                                                                                                                                                                                                                  |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Decentralization | Eliminate the requirement for centralized authorities or single point failure in identifier management, including the registration of globally unique identifiers, public verification keys, [services](https://www.w3.org/TR/did-core/#dfn-service), and other information. |
| Control          | Give entities, both human and non-human, the power to directly control their digital identifiers without the need to rely on external authorities.                                                                                                                           |
| Privacy          | Enable entities to control the privacy of their information, including minimal, selective, and progressive disclosure of attributes or other data.                                                                                                                           |
| Security         | Enable sufficient security for requesting parties to depend on [DID documents](https://www.w3.org/TR/did-core/#dfn-did-documents) for their required level of assurance.                                                                                                     |
| Proof-based      | Enable [DID controllers](https://www.w3.org/TR/did-core/#dfn-did-controllers) to provide cryptographic proof when interacting with other entities.                                                                                                                           |
| Discoverability  | Make it possible for entities to discover [DIDs](https://www.w3.org/TR/did-core/#dfn-decentralized-identifiers) for other entities, to learn more about or interact with those entities.                                                                                     |
| Interoperability | Use interoperable standards so [DID](https://www.w3.org/TR/did-core/#dfn-decentralized-identifiers) infrastructure can make use of existing tools and software libraries designed for interoperability.                                                                      |
| Portability      | Be system- and network-independent and enable entities to use their digital identifiers with any system that supports [DIDs](https://www.w3.org/TR/did-core/#dfn-decentralized-identifiers) and [DID methods](https://www.w3.org/TR/did-core/#dfn-did-methods).              |
| Simplicity       | Favor a reduced set of simple features to make the technology easier to understand, implement, and deploy.                                                                                                                                                                   |
| Extensibility    | Where possible, enable extensibility provided it does not greatly hinder interoperability, portability, or simplicity.                                                                                                                                                       |
