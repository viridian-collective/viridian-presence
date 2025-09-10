#!/bin/sh

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
  # Check if the payment.skey is in the pwd
    if [ -f payment.skey ]; then
      echo "skey exists!"
    else
      echo "File does not exist!"
    fi
  # cardano-node integration code here
  echo "see output of query tip command to assert cardano-node is running"
  ~/workshop/cardano-node/query-tip.sh
}
