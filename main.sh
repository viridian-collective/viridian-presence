#!/bin/sh

# # Kudos to the Andamio PPBL team for maintaining these amazing resources!
# # https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1
source ./utils.sh
source ./cardano_integration.sh


# Function to randomly select a participant from the list
select_participant() {
# List of participants in the lottery (Cardano public key hashes)
  local PARTICIPANTS=(
    "foxtrot"
    "uniform"
    "charlie"
    "kilo"
  )
  # Use $RANDOM to generate a random index for the PARTICIPANTS array
  local index=$(( RANDOM % ${#PARTICIPANTS[@]} ))
  echo "${PARTICIPANTS[$index]}"
}

mock_validator_address() {
  # Function to generate a mock validator address (Bech32 encoded with human-readable prefix)
  echo "addr_test..."
}

createRewardUtxo(){
  local participant=$(select_participant)
  echo "select winner: $participant"
  echo "deposit funds..."
  echo "- winner pKh is serialized"
  echo "- validator compiled"
  echo "- transaction drafted"
  echo "- transaction signed & submitted"
  local validator_address=$(mock_validator_address)
  echo "claim at $validator_address"
}

claimReward(){
  echo "winner claims rewards:"
}

main() {
  echo "2️⃣ this milestone is the proof-of-concept for a lottery"
  createRewardUtxo
  claimReward
}

main "$@"
