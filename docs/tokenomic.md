model where user has to lock tokens to earn more tokens.
should the total amount of token be limited somehow?
currently we are using a scheduler to move ADA, what if we use only ADA for the system?
why not just run a scheduler off-chain and create a validator with a list of pKh's in the Datum?
Is there a way to enable partcipants to mint the token themselves while ensuring the system is robust to hacks?
Eligibility requirements need to be encoded for UPLC!

We have two pathways: either develop the centralized scheduler and look out for telemetry on rad node; or we could continue exploring ways ensure that the oracle can't be fooled by malicious user: if we allow users to mint the token and promise to buy it - how can we ensure only users who are eligible are able to mint the token? 

**Eligibility**: 
Participants must seed a set of repositories defined by the Intersect Open Source Committee to be eligible for rewards.

**Locking Mechanism**: Participants can lock their PRESENCE tokens for a specified period (e.g., 1-12 months) to demonstrate their commitment to the Open Source community.

**Rewards**: The Intersect Open Source Committee will lobby the Cardano Treasury for ADA, which will be used to buy back and burn PRESENCE tokens. This will create a deflationary pressure on the token, increasing its value over time.


* **Locking Periods**: 1, 3, 6, and 12 months
* **Rewards Distribution**: Quarterly buyback and burn of PRESENCE tokens using ADA from the Cardano Treasury

## what do we want to encourage? how does it align with Open Source values?

### Benefits of the Decentralized Model
1. **Increased Security**: By leveraging smart contracts and decentralized oracles, the system becomes more resistant to manipulation and central points of failure.
2. **Transparency and Trust**: The use of blockchain technology ensures that all transactions and contributions are transparent and tamper-proof, fostering trust within the community.
3. **Autonomy**: A decentralized incentive structure allows the community to govern itself more effectively, with clear and predetermined rules (as encoded in smart contracts) guiding the distribution of rewards.

### Implementation Roadmap
1. **Smart Contract Development**: Design and deploy the smart contract that will manage the ADA escrow, token burning, and reward distribution.
2. **Decentralized Oracle Integration**: Implement a decentralized oracle system to verify users' contributions, including seeding uptime and conformance to the supported software list.
3. **Token Burning and Reward Mechanism**: Develop the user interface and backend logic for users to burn their tokens and claim ADA rewards.
4. **Community Engagement**: Educate the community about the new tokenomic model, its benefits, and how to participate and contribute to the ecosystem effectively.

### Conclusion
The proposed tokenomic model for viridian-presence aims to create a robust, decentralized incentive structure that rewards meaningful contributions to the ecosystem. By leveraging smart contracts, decentralized oracles, and a clear set of rules for earning and burning tokens, we can foster a vibrant community that contributes value to the Intersect MBO Open Source economy. The next steps involve the technical implementation of the outlined components and engaging with the community to ensure a smooth transition to the new model.

