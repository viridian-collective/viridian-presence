#!/bin/sh

# Check if a file exists
# if [ -f payment.skey ]; then
#   echo "skey exists!"
# else
#   echo "File does not exist!"
# fi
# # Check if a program is running:
# 
# # Loop over a list of items
# for item in "apple" "banana" "orange"; do
#   echo $item
# done

# Define a function
greet() {
  echo "Hello, $1!"
}

# Call the function
greet "OSC"

echo "see output of query tip command to assert cardano-node is running"
~/workshop/cardano-node/query-tip.sh
echo "assert rad node is running via the console message"
# rad node status

# Kudos to the Andamio PPBL team for maintaining these amazing resources!
# https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1

echo "assert address has SCAFFOLD token"
/home/alex/workshop/ppbl_2025/query_address.sh

echo "user testing:"
echo "- [ ] submit a tx"
echo "- [ ] value of SCA depends on rad node outputs"
echo "integrate smart contract building framework"
