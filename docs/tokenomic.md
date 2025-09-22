`presence`, a token to power rewards for contributors, seeking to learn from the existing rewards mechanisms such as gitcoin, githoney, andamio, merit; and invent a token-based solution offering improvements over the existing solutions. 

# Goals
valide the theories underlying the Paid Open Source model.

Clarify the vision of programmable money as a Digital Public Good: a transparent and inclusive economy that powers Open Source software and other DPG's. 

Develop context for the need to discriminate fairly as a problem in governance. 
Use Universal Basic Income as a corner concept and imagine what the world with UBI powered by programmable money. 

Connect to key metrics for blockchain ecosystems and estimate the parameters dependend on requirements for UBI: eg. number of people and monthly allowance. 

Promote Principled negotiation as framework to apply to the problem of fair discrimination. 

Highlight importance of the problem in designing programmable money following the principles in Sustainable Development Goals.  

Support with the re-imagining contributor agreements as tokens. Token ownership defines membership in the set of contributors, which creates a clear boundary between UBI powered by the treasury and a model that supports Paid Open Source.

## Review of existing models:
radicle tokenomics:
- user recieves token A
- user vests token A and meets oracle criteria to recieve token B

mpfs:
 Merkle Patricia Trie is a persistent & authenticated data structure to map between arbitrary keys and values. It's like a hashmap on steroids, which isn't tamperable. The items are represented in a space-optimized trie (a.k.a prefix tree) of radix 16. The hash digest of their keys gives the path to values in the trie. For more details, read the wiki.

githoney:
- maintainer creates bounty
- contributor develops bounty
- projects accepts contribution
- contributor withdraws rewards

andamio:
- a contract validates the set of conditions that makes a person eligible to mint a Contributor token.- the Contributor token is vested into a task.
- the user browses Project's task board to pick a task and vest their Contributor token into the task.- task completion is validated with the process agreed upon through a governance process.

Developer Advocate program:
- contributors compete in a market
- set of winners recieves stipends

1. The tokenomics policy should be feasible to implement on-chain algorithmically. In particular, this means that the policy avoids using features that are incompatible or difficult to implement in the form of smart contracts, integrate into the blockchain accounting model or they are antithetical to blockchain decentralization. For example, the policy should minimize the use of off-chain entities that need to intervene actively to adjust policy (e.g., a central bank type of actor), or the use of techniques such as buybacks which would require a fiat reserve to facilitate. Furthermore, all the numerical quantities that are accounted in the ledger (e.g., the number of tokens held by a validator) should not grow exponentially over time.

2. In a stroke of luck we came across the insight from Sreckovic&Windsperger, who seem to have predicted, at least in part, state of things on Cardano. 

Hedlund (1994: 75) differentiates between tacit or nonverbalizable, intuitive, unarticulated knowledge, and explicit, articulated knowledge, which can be expressed verbally or in writing, computer programs, drawings. He identifies four different carriers or agents of knowledge: the individual, the small group, the organization, and the interorganizational (network) domain. The knowledge characteristics relevant for allocation of decision rights are the degree of intangibility of knowledge assets. These tacit or intangible knowledge assets (Hall, 1993; Klein & Leffler, 1981) refer to the knowledge and skills (know-how) that cannot be easily codified and transferred to other agents. Tacit know-how is hence characterized by a low degree of contractibility. The transfer of intangible knowledge requires personal and face-to-face contact (Teece, 1981; von Hippel, 1994). In AEC intangible know-how includes emotional, cultural or aesthetical requirements for design, whereas articulated knowledge includes explicit know-how, such as time, costs, quantity requirements and discipline-specific skills, all of which can be expressed verbally or in writing, computer programs, drawings.

Without doubt, value chain in Open Source is not the same as in AEC, and in particular we will find different distribution of roles between Operation, Coordination, Innovation. However 

We argue that andamio, githoney, merit.systems are suitable for tasks in either **Operation** or **Coordination** categories, but not in the Innovation category skills because these skills are defined through how difficult it is to measure them directly!

We argue that such an approach has limited usability because it fails to account for the type of the environment we are in. In a factory payment per unit of output produced makes sense, but in a creative environment such as Open Source - consistency and effort are valuable commodities and discarding work, as well as poor visibility of work, do not foster the sense of meaning and impact that is necessary for good Developer Experience. 

We therefore want to re-imagine the presence token!  
Considering UBI a corner case we can define presence as a Stipend token, that gives the right to recieve a certain amount of money on regular intervals over a period of time. 

Considering risks: 
- feasibility:
  - using token-gating mechanism together with vesting as the solution!

 **What specific improvements** does the "presence" token offer over existing solutions, and how will it address the limitations of current models?

making a living on Cardano is a service cardano could offer, 
Stake pool Operators's ROI, 


**How will the system ensure fair discrimination** in governance, and what mechanisms will be put in place to prevent bias or favoritism?

assumption: Trading stipend tokens in a second-price auction provides better way of fair discrimination over delegating the discrimination process to off-chain entitites, the way it currently works at Intersect.

 **What are the key metrics** that will be used to evaluate the success of the "presence" token and the overall system, and how will they be tracked and measured?
The number of stipend contracts is a parameter, increase of this parameter with time would indicate that the program is popular with the voters, which implies it has positive impact on the ecosystem.

 **How will the Universal Basic Income (UBI) concept be implemented**, and what parameters will be used to determine the monthly allowance and number of people supported?
Assumption: At the level of Improvement Proposals Cardano supports automated transactions. Then an automated transaction could fill the stipend contract with the utility token indefinitely, contingent on sustainability of the network - adoption of its services. 

**How to reward contributors for tacit skill transfer?**
