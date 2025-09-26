#!/bin/sh

# # Kudos to the Andamio PPBL team for maintaining these amazing resources!
# # https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1
source ./utils.sh
source ./cardano_integration.sh
source ./radicle_integration.sh

# List of participants in the lottery (Cardano public key hashes)
PARTICIPANTS=(
  "dca6035712f164db2f99c71404d392115d2bdde366fbbe359ae01f1a"
  "dca6035712f164db2f99c71404d392115d2bdde366fbbe359ae01f1b"
  "dca6035712f164db2f99c71404d392115d2bdde366fbbe359ae01f1c"
  "dca6035712f164db2f99c71404d392115d2bdde366fbbe359ae01f1d"
)

# Function to randomly select a participant from the list
select_participant() {
  # Use $RANDOM to generate a random index for the PARTICIPANTS array
  local index=$(( RANDOM % ${#PARTICIPANTS[@]} ))
  echo "${PARTICIPANTS[$index]}"
}

# Function to generate a mock validator address (Bech32 encoded with human-readable prefix)
mock_validator_address() {
  # Use a hardcoded string for the human-readable prefix and Bech32 encoding
  echo "addr_test1vqe09nt0rxgwn83upxuhqzs4aqrzdjqmhrh5l4g5hh4kc6qsncmku"
}

# Function to deposit funds to the selected participant
deposit_funds() {
  local participant=$(select_participant)
  echo "Depositing funds claimable by PkH: $participant"
  local validator_address=$(mock_validator_address)
  echo "Validator address: $validator_address"
}


main() {
  echo "🎭presence is a token and a type" 
  echo "2️⃣ this milestone is the proof-of-concept for a lottery"
  # a contract address vests an amount of money for the token holder
  deposit_funds
  # The token is distributed via a lottery on the set of participants
  # trust the lottery winners to spend money as they see fit
  # 🦄the set of participants requries off-chain processing, KYC
}

main "$@"
