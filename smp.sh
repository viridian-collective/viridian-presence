#!/bin/sh

# Universal Basic Income throgh the lens of Subjective measure of Probability.

# function to 
loop_over_list() {
   for item in "apple" "banana" "orange"; do
     echo $item
   done
  # setup code here
}

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
  # 
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
