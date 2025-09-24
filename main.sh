#!/bin/sh

# # Kudos to the Andamio PPBL team for maintaining these amazing resources!
# # https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1
source ./utils.sh
source ./cardano_integration.sh
source ./radicle_integration.sh

main() {
  echo "🎭presence is a token and a type" 
  echo "2️⃣this milestone is the proof-of-concept fo a stipend lottery"
  # a contract address vests an amount of money for the token holder
  test_vesting_validator
  # The token is distributed via a lottery on the set of participants
  # trust the lottery winners to spend money as they see fit
  # 🦄the set of participants requries off-chain processing, KYC
}

main "$@"
