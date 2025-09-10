#!/bin/sh

# Check if a file exists
if [ -f payment.skey ]; then
  echo "skey exists!"
else
  echo "File does not exist!"
fi
# Check if a program is running:

# Loop over a list of items
for item in "apple" "banana" "orange"; do
  echo $item
done

# Define a function
greet() {
  echo "Hello, $1!"
}

# Call the function
greet "OSC"

# Cardano transaction is a special type of function.
echo "cardano-node is running"
~/workshop/cardano-node/query-tip.sh
echo "rad node is running"
rad node status

# Kudos to the Andamio PPBL team for maintaining these amazing resources!
# https://app.andamio.io/course/4a79b279593a787b79da46df4dc34a3e59b003838dcf48a2f436094d/102/lesson/1

echo "assert user has address"
nix run ~/workshop/cardano-node#cardano-cli -- query utxo --testnet-magic 1 --address $(cat payment.addr) --socket-path "$HOME/workshop/cardano-node/configuration/preprod/db/node.socket"

echo "user testing:"
echo "- [ ] submit a tx"
echo "- [ ] value of PRE depends on rad node outputs"
echo "integrate smart contract building framework"
