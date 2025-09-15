#!/bin/sh

# # Kudos to the Andamio PPBL team for maintaining these amazing resources!
# # https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1
source ./utils.sh
source ./cardano_integration.sh
source ./radicle_integration.sh

main() {
  echo "Presence is a token, this milestone is the proof-of-concept for an oracle"
  echo "☑️ can vary value sent from one UTXO to another using outputs of a query to a program"
  number_of_repos=$(count_repos) # the list is hardcoded in the function
  tx_amount=$(($number_of_repos * 1000000)) 
  echo "changing the list changes this output "$tx_amount""
  utxo=$(select_utxo)
  tx_build "$utxo" "$tx_amount"
  tx_sign
  tx_send
  echo "✅ if Estimated transaction fee: 170253 Lovelace can be found a few lines above"
  echo "Question: Seeding cardano-node on radicle - is it a meaningful contribution?"
  echo "MVP: a token to power inclusive economies around innovation and investment"
  echo "Goal: improve the direct rewards mechanism adopted for the Code-for-Us with a token-based mechanism"
  echo "GMBL: a token with the supply that increases exponentially with each mint"
  echo "CUBI: UBI on Cardano - what would eligibility criteria look like?"
  echo "idea: gameify roles with daily login reward"
  echo "idea: using mpfs to produce types used in a sound definition of a meaningful contribution"
}

main "$@"
