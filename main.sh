#!/bin/sh

# # Kudos to the Andamio PPBL team for maintaining these amazing resources!
# # https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1
source ./utils.sh
source ./cardano_integration.sh
source ./radicle_integration.sh

# Use functions defined in the modules
main() {
  loop_over_list
  check_skey
  sign_transaction
  rad_self
  
  echo "user testing:"
  echo "- [ ] value of SCA depends on rad node outputs"
  echo "integrate smart contract building framework"
}

main "$@"
