#!/bin/sh

# # Kudos to the Andamio PPBL team for maintaining these amazing resources!
# # https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1
source ./utils.sh
source ./cardano_integration.sh
source ./radicle_integration.sh

seeds_repo() {
  # Function to call the oracle and check if a given repo id exists
  # Returns 1 if the repo id exists, 0 if it doesn't
  local repo_id="$1"
  local output=$(rad seed | awk -v id="$repo_id" '$2 == id {print $0}')
  if [ -n "$output" ]; then
    echo 1
  else
    echo 0
  fi
}

count_repos() {
  # Initialize sum to 0
  local sum=0

  # Define the list of repo ids
  local repo_ids=(
    "rad:zkw8cuTp2YRsk1U68HJ9sigHYsTu"
    "rad:z2a7Te5b28CX5YyPQ7ihrdG2EEUsC"
    "rad:zpZ4szHxvnyVyDiy2acfcVEzxza9"
    "rad:z3wx8j3x5bcvAYDJB62zKGM5Y69mM"
  )

  # Iterate over the list of repo ids and apply the seeds_repo function
  for repo_id in "${repo_ids[@]}"; do
    # Call seeds_repo and add the result to the sum
    local result=$(seeds_repo "${repo_id}")
    # echo "Result for $repo_id: $result"
    sum=$((sum + $result))
  done

  # Print the total sum
  echo "$sum"
}

tx_build(){
  # Inputs to the function
  tx_in="$1"          # Example: "234f1da31797d3e6c517f47c11b0cc3c0f486ecadb0f5d10df1c4c133b87ee34#1"
  tx_out_amount="$2"  # Example: "5000000"

  receiver="addr_test1vq394fgcjsperquw2y7z22uhzzsf8dvrdexn8lxrh46tjrqcw7l3q"
  sender="addr_test1vq394fgcjsperquw2y7z22uhzzsf8dvrdexn8lxrh46tjrqcw7l3q"
  testnet_magic="1"
  
  # The command to build the transaction
  nix run ~/workshop/cardano-node#cardano-cli -- conway transaction build \
    --testnet-magic "$testnet_magic" \
    --tx-in "$tx_in" \
    --tx-out "$receiver"+"$tx_out_amount" \
    --change-address "$sender" \
    --socket-path "$HOME/workshop/cardano-node/configuration/preprod/db/node.socket" \
    --out-file simple-tx.draft
}

main() {
  echo "Presence is a token, this MVP demonstrates core functions of the model:"
  echo "- [ ] can change value by changing repo_ids:"
  #query_address
  # seeds_repo "rad:zkw8cuTp2YRsk1U68HJ9sigHYsTu"
  count_repos

  # utxo=$(select_utxo)
  # tx_amount=$((count_repos * 1000000))
  # tx_build "$utxo" "$tx_amount"
  # sign_transaction
  # send 
}

main "$@"
