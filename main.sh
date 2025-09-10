#!/bin/sh

# # Kudos to the Andamio PPBL team for maintaining these amazing resources!
# # https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1
source ./utils.sh
source ./cardano_integration.sh
source ./radicle_integration.sh

seeds_repo() {
  repo_id="$1"
  rad seed | awk -v id="$repo_id" '$2 == id' | grep -q .
}
count_seeded_repos() {
  count=0
  for repo_id in "$@"; do
    if seeds_repo "$repo_id"; then
      count=$((count + 1))
    fi
  done
  echo "$count"
}

control_repos() {
  repo_ids=(
    "rad:zkw8cuTp2YRsk1U68HJ9sigHYsTu"
    "rad:z2a7Te5b28CX5YyPQ7ihrdG2EEUsC"
    "rad:zpZ4szHxvnyVyDiy2acfcVEzxza9"
    "rad:z3wx8j3x5bcvAYDJB62zKGM5Y69mM"
  )
  count=$(count_seeded_repos "${repo_ids[@]}")
  echo "$count"
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
  utxo=$(select_utxo)
  seeded_count=$(control_repos)
  tx_amount=$((seeded_count * 1000000))
  tx_build "$utxo" "$tx_amount"
  sign_transaction
  # send 
}

main "$@"
