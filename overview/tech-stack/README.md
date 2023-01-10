# 💡 Tech Stack

{% hint style="warning" %}
Disclaimer**:** The development team is working hard. The documentation will be updated as new releases are released.
{% endhint %}

## Overview

MyDataCoin is developing a public blockchain based on Cosmos SDK and the Tendermint Core.

<figure><img src="https://lh6.googleusercontent.com/rljPDPsCtDL6qYOcKp0xZaALBjHr0ALGI5DB7P17F7zIIk1LFhC8GePCu986fYr5RvpkyPUlk5NNiVjpHcbUdljLS8VY515IDYqrj8Pth5RcE7Cj5TXWX9yg69NiFrKaNwjMqEDehqQCjHvss2fzDIc3PBWph3J2sw2QbHNoo4P0sWbw5ZFBG22dLoOhaG8" alt=""><figcaption><p>MDC Tech Stack</p></figcaption></figure>

The Tendermint Core is a high-performance, consistent, flexible, and secure **consensus** module with strict fork accountability. It relies on [Proof-of-Stake (PoS)](https://eprint.iacr.org/2019/1460.pdf) with delegation and  [Practical Byzantine Fault Tolerance](https://github.com/tendermint/tendermint). This advantage provides us a possibility to develop a high-performance, consistent and secure decentralized network.

The Tendermint BFT provides security guarantees, including:

1. **Forks** are never created, provided that half or more validators are honest.
2. **Strict accountability** for fork creation allows determining liability.
3. Transactions are **finalized** as soon as a block is created.\


The Cosmos SDK provides a rich set of modules that address common concerns such as governance, tokens, other standards, and interactions with other blockchains through the Inter-Blockchain Communication Protocol (IBC). Some production-grade modules such as Auth, Bank, Distribution, Mint, etc, are going to be used in MDC.

The signing of a smart agreement between the participants of the system should be carried out using CosmWasm. CosmWasm is a new smart contract platform created for the Cosmos ecosystem.

\
