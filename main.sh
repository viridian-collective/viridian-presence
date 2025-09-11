#!/bin/sh

# # Kudos to the Andamio PPBL team for maintaining these amazing resources!
# # https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1
source ./utils.sh
source ./cardano_integration.sh
source ./radicle_integration.sh

main() {
  echo "Presence is a token, this MVP demonstrates core functions of the model:"
  echo "✅ can change value by changing repo_ids"
  number_of_repos=$(count_repos) # the list is hardcoded in the function
  tx_amount=$(($number_of_repos * 1000000)) 
  echo "$tx_amount" # changing the list changes this output

  utxo=$(select_utxo)
  tx_build "$utxo" "$tx_amount"
  tx_sign
  echo "what are our next steps?"
  # send 
}

main "$@"
