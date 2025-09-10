#!/bin/sh

# # Kudos to the Andamio PPBL team for maintaining these amazing resources!
# # https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1
source ./utils.sh
source ./cardano_integration.sh
source ./radicle_integration.sh

derive_transaction_amount_from_repo_list() {
	echo ""
}

main() {
  echo "Presence is a token, This is Milestone: outlining the contract model"
  echo "having experimented with functions, API methods:"
  check_skey
  sign_transaction
  echo "we now need to obtain the principal type for the mvp"
  derive_transaction_amount_from_repo_list 
  # we will use this number in our 
  build_transaction
  # then reuse 
  # sign_transaction
  # and ultimately
  send # simplify and send tADA instead of any other token.
}

main "$@"
