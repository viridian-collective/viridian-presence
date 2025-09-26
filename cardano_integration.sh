#!/bin/sh

query_tip() {
  echo "Connecting to Cardano node..."
  echo "here you shoud see the output of the query-tip command:"
  ~/workshop/cardano-node/query-tip.sh
}

tx_send(){
  testnet_magic="1"
  echo "sending tx disabled, testnet_magic is $testnet_magic"
  
  # uncomment to enable sending:
  # nix run ~/workshop/cardano-node#cardano-cli -- conway transaction submit \
  #   --testnet-magic $testnet_magic \
  #   --tx-file simple-tx.signed \
  #   --socket-path "$HOME/workshop/cardano-node/configuration/preprod/db/node.socket"\
}

select_utxo() {
  # Returns a hardcoded UTXO string
  echo "d0dd175a6c1e1aa0bc4958ae59cd82c8375d51c292cf7721bef01b5d93f3b268#3"
}

tx_build(){
  # Inputs to the function
  tx_in="$1"          # Example: "234f1da31797d3e6c517f47c11b0cc3c0f486ecadb0f5d10df1c4c133b87ee34#1"
  tx_out_amount="$2"  # Example: "5000000"

  receiver="addr_test1vq394fgcjsperquw2y7z22uhzzsf8dvrdexn8lxrh46tjrqcw7l3q"
  sender="addr_test1vq394fgcjsperquw2y7z22uhzzsf8dvrdexn8lxrh46tjrqcw7l3q"
  testnet_magic="1"
  
  nix run ~/workshop/cardano-node#cardano-cli -- conway transaction build \
    --testnet-magic "$testnet_magic" \
    --tx-in "$tx_in" \
    --tx-out "$receiver"+"$tx_out_amount" \
    --change-address "$sender" \
    --socket-path "$HOME/workshop/cardano-node/configuration/preprod/db/node.socket" \
    --out-file simple-tx.draft
}

tx_sign() {
  # signs the transaction using the hardcoded skey:
  sender_key="/home/alex/workshop/ppbl_2025/payment.skey"
  
  nix run ~/workshop/cardano-node#cardano-cli -- conway transaction sign \
    --signing-key-file $sender_key \
    --testnet-magic 1 \
    --tx-body-file /home/alex/workshop/ppbl_2025/simple-tx.draft \
    --out-file simple-tx.signed 

  echo "tx signed! check the file!"
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
  query_address | grep '5e74a87d8109db21fe3d407950c161cd2df7975f0868e10682a3dbfe\.7070626c323032342d73636166666f6c642d746f6b656e'
}

check_skey_in_pwd() {
  # Check if the payment.skey is in the pwd
    if [ -f payment.skey ]; then
      echo "❗skey exists!"
    else
      echo "✅File does not exist!"
    fi
}

check_skey_exists() {
  local file_name=payment.skey
  local directory='/home/alex/workshop/ppbl_2025/' 
  local file_path="${directory}/${file_name}"

  if [ -f "${file_path}" ]; then
    echo "True"
  else
    echo "False"
  fi
}

check_cardano-node_version() {
  nix run ~/workshop/cardano-node#cardano-node -- version 2>/dev/null | grep "cardano-node"
}

test_vesting_validator(){
  (cd ~/workshop/potential-robot && npm run test -- viridian --watch=false)
}
