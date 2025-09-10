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

derive_transaction_amount_from_repo_list() {
	repo_ids=(
  "rad:zkw8cuTp2YRsk1U68HJ9sigHYsTu"
  "rad:z2a7Te5b28CX5YyPQ7ihrdG2EEUsC"
  "rad:zpZ4szHxvnyVyDiy2acfcVEzxza9"
  "rad:z3wx8j3x5bcvAYDJB62zKGM5Y69mM"
)
count=$(count_seeded_repos "${repo_ids[@]}")
echo "Number of seeded repos: $count"
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
