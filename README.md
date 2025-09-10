# viridian-presence
a community token to reward sharing git repos on p2p aimed at creating Open Source economy around Intersect MBO. Our pitch is that rewarding seeding git repos on p2p is rewarding meaningful contributions to the ecosystem. 
Our first milestone is an mvp demonstrating core functions of the system. 

## **Milestone 1: Oracle-Driven Transaction Evidence**


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
- A signed Cardano transaction file (`simple-tx.draft` or similar) showing the output value determined by the Radicle oracle.
- Log/output demonstrating the Radicle repo count, calculation of the transaction value, and transaction build/sign steps.
- Repository or submission containing:
  - The scripts.
  - The signed transaction file.
  - Documentation as described above.
- Optionally: screenshots or command output showing a successful run and the linkage between Radicle data and transaction value.
