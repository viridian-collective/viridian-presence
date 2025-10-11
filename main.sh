#!/bin/sh

# # Kudos to the Andamio PPBL team for maintaining these amazing resources!
# # https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1
source ./smp.sh
source ./cardano_integration.sh

main() {
  echo "this milestone is about the Scaling Capacity Indicator and the 'presence' token"
  echo "lets imagine value as something each living being needs to consume and can capture"
  echo "over the course of life of a human being their rate of consumption can be approximated as static, while the rate of capture depends on the environment: economy, technology, diversity"
  echo "lets simplify by imagining a snapshot of time where devs live, adapting Wolfram's game as an analogy: to advance an the next snapshot the cell needs to dispose of a certain amount of value. Amount of value a cell can capture from the network is what attracts the cell to the game. Projections of the agent for the amount of value they will capture in the future also play important role, as well as diversity of capital: in real world people don't measure everything with money but to keep the problem tractable lets set it aside. Presence token is an allowance token it combines incentive enabling via the right to work and incenvtive driving via get reward mechanism (Freni, Ferro, Moncada). 
The models are combined as follows: Token holder is guaranteed to be able to withdraw certain amount of a general value token (utility token) at each snapshot for a certain number of snapshots. Then the token is traded using a second-price auction where bids are submitted in terms of workstreams the contributor can attend to. Attendance is measured in the social layer."
}

main "$@"
