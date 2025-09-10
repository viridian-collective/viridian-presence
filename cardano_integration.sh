#!/bin/sh

select_utxo() {
  # Returns a hardcoded UTXO string
  echo "d0dd175a6c1e1aa0bc4958ae59cd82c8375d51c292cf7721bef01b5d93f3b268#3"
}

sign_transaction() {
  # Set the variables
  sender_key="/home/alex/workshop/ppbl_2025/payment.skey"
  
  # The command to build the transaction
  nix run ~/workshop/cardano-node#cardano-cli -- conway transaction sign \
    --signing-key-file $sender_key \
    --testnet-magic 1 \
    --tx-body-file /home/alex/workshop/ppbl_2025/simple-tx.draft \
    --out-file simple-tx.signed

  echo "✅ signed! check the file!"
}

query_address() {
  # $1 is the path to the address file; if not provided, use the default
  address_file="${1:-/home/alex/workshop/ppbl_2025/payment.addr}"
  nix run ~/workshop/cardano-node#cardano-cli -- query utxo \
    --testnet-magic 1 \
    --address "$(cat "$address_file")" \
    --socket-path "$HOME/workshop/cardano-node/configuration/preprod/db/node.socket"
}

find_utxo_with_token() {
  # It has some Scaffold token, identified by the unique value:
  query_address | grep '5e74a87d8109db21fe3d407950c161cd2df7975f0868e10682a3dbfe\.7070626c323032342d73636166666f6c642d746f6b656e'
}

check_skey() {
  # Check if the payment.skey is in the pwd
    if [ -f payment.skey ]; then
      echo "❗skey exists!"
    else
      echo "✅File does not exist!"
    fi
}
query_tip() {
  echo "Connecting to Cardano node..."
  echo "here you shoud see the output of the query-tip command:"
  ~/workshop/cardano-node/query-tip.sh
}
