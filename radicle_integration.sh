#!/bin/sh

seeds_repo() {
  # Function to call the oracle and check if a given repo id exists
  # Returns 1 if the repo id exists, 0 if it doesn't
  local repo_id="$1"
  local output=$(rad seed | awk -v id="$repo_id" '$2 == id {print $0}')
  if [ -n "$output" ]; then
    echo 1
  else
    echo 0
  fi
}

count_repos() {
  # Initialize sum to 0
  local sum=0

  # Define the list of repo ids
  local repo_ids=(
    "rad:zkw8cuTp2YRsk1U68HJ9sigHYsTu"
    "rad:z2a7Te5b28CX5YyPQ7ihrdG2EEUsC"
    "rad:zpZ4szHxvnyVyDiy2acfcVEzxza9"
    "rad:z3wx8j3x5bcvAYDJB62zKGM5Y69mM"
  )

  # Iterate over the list of repo ids and apply the seeds_repo function
  for repo_id in "${repo_ids[@]}"; do
    # Call seeds_repo and add the result to the sum
    local result=$(seeds_repo "${repo_id}")
    # echo "Result for $repo_id: $result"
    sum=$((sum + $result))
  done

  # Print the total sum
  echo "$sum"
}

rad_status_check() {
  rad node status | grep "✓ Node is running."
}
