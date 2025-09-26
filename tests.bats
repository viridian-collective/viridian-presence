#!/usr/bin/env bats

load './cardano_integration.sh'

@test "cardano-node is installed" {
  run check_cardano-node_version
  [ "$output" = "cardano-node 10.3.1 - linux-x86_64 - ghc-9.6" ]
}

@test "can query tip" {
  bats::on_failure() {
    echo "looks like cardano-node is not running"
  }
  run query_tip
  [ "$status" -eq 0 ]
  #[ "$output" = "cardano-node 10.3.1 - linux-x86_64 - ghc-9.6" ]
}

@test "can produce UTXO" {
  run select_utxo 
  [ "$status" -eq 0 ]
  [ "$output" = "d0dd175a6c1e1aa0bc4958ae59cd82c8375d51c292cf7721bef01b5d93f3b268#3" ]
}

@test "skey is not stored in pwd" {
  run check_skey
  [ "$output" = "✅File does not exist!" ]
}
@test "tests for the validator pass" {
  run test_vesting_validator
  [ "$status" -eq 0 ]
}
