#!/bin/sh

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
  # here I am using a preprod wallet I used in PPBL
  /home/alex/workshop/ppbl_2025/query_address.sh
}

find_utxo() {
  # It has some Scaffold token, identified by the unique value:
  query_address | grep '5e74a87d8109db21fe3d407950c161cd2df7975f0868e10682a3dbfe\.7070626c323032342d73636166666f6c642d746f6b656e'
}

check_skey() {
  echo "check the secret!"
  # Check if the payment.skey is in the pwd
    if [ -f payment.skey ]; then
      echo "skey exists!"
    else
      echo "File does not exist!"
    fi
}
query_tip() {
  echo "Connecting to Cardano node..."
  echo "see output of query tip command to assert cardano-node is running"
  ~/workshop/cardano-node/query-tip.sh
}
