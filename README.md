# viridian-presence
a token to develop vision of Cardano as the programmable money to power Open Source.

## **Milestone 1: Proof of Concept for the Oracle-Driven Transaction Evidence**

a token to reward sharing git repos on p2p aimed at creating Open Source economy around Intersect MBO. Our pitch is that rewarding seeding git repos on p2p is rewarding meaningful contributions to the ecosystem.
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
  - The unsigned transaction file.
- Screenshots or command output showing a successful run and the linkage between Radicle data and transaction value.

## Milestone 2: Tokenomic Model for Decentralized Incentive Structure
Building on  proof of concept where a centralized service distributed rewards based on reading telemetry data from a third-party app, we aim to propose improvements to existing reward programs.

It is a tokenomic model in which the token is an on-chain represenation of the right to recieve a reward of a certain amount of money for a certain period of time. A sponsor creates a stipend, a vesting contract associated with an nft. The token is then distributed via an auction. The candidates then bid value of their service to the network in terms of hourly commitment and cost of an hour of work. 

Building contract model of this process will illuminate types and functions required for an item of software for automating contributor agreement management and minimizing the off-chain footprint.
