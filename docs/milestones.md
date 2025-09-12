## Milestone 3: Barebones Decentralized Oracle using Nix Expression

### **Objective**
Create a barebones proof of concept for a decentralized oracle using a Nix expression, which can be run from a secure link to generate a Cardano transaction draft file (`simple-tx.draft`) that rewards users for contributing to the viridian-presence ecosystem.

### **Deliverables**
- A Nix expression (`default.nix`) that:
  - Queries a Radicle node to determine the number of seeded repositories from a defined list.
  - Uses this value to compute the transaction output amount (e.g., `num_seeded_repos * 1_000_000`).
  - Selects a UTXO as transaction input.
  - Builds a Cardano transaction draft where the output value reflects the Radicle data.
  - Generates a `simple-tx.draft` file containing the transaction draft.
- A `README.md` file containing instructions on how to run the Nix expression and generate the `simple-tx.draft` file.

### **Acceptance Criteria**
- Running the Nix expression using `nix run` results in the generation of a `simple-tx.draft` file that reflects the current state of the Radicle node.
- The `simple-tx.draft` file can be signed with a private key to mint the viridian-presence token.
