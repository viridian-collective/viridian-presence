# viridian-presence
a community token to reward sharing git repos on p2p aimed at creating Open Source economy around Intersect MBO. Our pitch is that rewarding seeding git repos on p2p is rewarding meaningful contributions to the ecosystem.

## **Milestone 1: Proof of Concept for the Oracle-Driven Transaction Evidence**
In the naive implmementation of the proof of concept we envision a centralized service distributing rewards based on reading telemetry data from a third party app.

### **Deliverables**
- A script or set of scripts that:
  - Queries a Radicle node to determine the number of seeded repositories from a defined list.
  - Uses this value to compute the transaction output amount (e.g., `num_seeded_repos * 1_000_000`).
  - Selects a UTXO as transaction input.
  - Builds a Cardano transaction draft where the output value reflects the Radicle data.
  - Signs the transaction (optionally submits, if required for the milestone).


### **Acceptance Criteria**
- The transaction output value **must change** if the Radicle-seeded repo count changes.

### **Evidence of Completion**
- An unsigned Cardano transaction file (`simple-tx.draft` or similar) showing the output value determined by the Radicle oracle.
- Log/output demonstrating the Radicle repo count, calculation of the transaction value, and transaction build/sign steps.
- Repository or submission containing:
  - The scripts.
  - The signed transaction file.
- Optionally: screenshots or command output showing a successful run and the linkage between Radicle data and transaction value.

## Milestone 2: Tokenomic Model for Decentralized Incentive Structure
Building on  proof of concept where a centralized service distributed rewards based on reading telemetry data from a third-party app, we aim to enhance this model to create a decentralized incentive structure. This milestone outlines a tokenomic model for the viridian-presence token, focusing on a system where an amount of ADA is escrowed in a smart contract. This smart contract will serve as the backbone for guaranteeing rewards to users based on their contributions, specifically through the burning of the token and demonstrating continuous involvement with the project.

### Decentralized Oracle: what does it verify? 
The rewards for users will be determined based on two key parameters:
1. **Seeding Uptime**: The duration for which a user's repository remains seeded and available for access on the peer-to-peer network. This parameter encourages users to maintain their repositories online consistently.
2. **Conformance to Supported Software List**: The alignment of a user's contributions with the predefined list of supported software via the program. This ensures that the ecosystem remains focused on the core objectives and supported technologies.

### Concepts:
- **Escrowed ADA**: A portion of ADA will be locked in a smart contract. This ADA serves as the reward pool for users who burn their viridian-presence tokens.
- **Token Burning Mechanism**: Users who wish to claim their rewards in ADA will need to burn their viridian-presence tokens. The smart contract is programmed to verify the burning event and subsequently release the corresponding amount of ADA from the escrow.
- **Earning/Minting Tokens**: Users earn or mint new viridian-presence tokens by contributing to the ecosystem, primarily through seeding repositories and contributing to supported software projects. This process will be validated through a decentralized oracle system, which reads telemetry data from the Radicle node and other relevant sources.
- **Continuous Involvement**: The model encourages continuous involvement by tying the earnings of new tokens to ongoing contributions. Users must consistently seed their repositories and contribute to the supported projects to earn more tokens.
