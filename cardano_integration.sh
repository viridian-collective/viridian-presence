#!/bin/sh

query_address() {
  /home/alex/workshop/ppbl_2025/query_address.sh
}

find_utxo() {
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
