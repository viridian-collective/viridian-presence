#!/usr/bin/env bats

load './cardano_integration.sh'
load './radicle_integration.sh'

@test "cardano-node is installed" {
  run check_cardano_node_version
  [ "$output" = "cardano-node 10.3.1 - linux-x86_64 - ghc-9.6" ]
}

@test "query tip" {
  bats::on_failure() {
    echo "make sure cardano-node is running"
  }
  run query_tip
  # assert here the node is synced up!
  [ "$status" -eq 0 ]
}

@test "produce UTXO" {
  run select_utxo # mock function
  [ "$status" -eq 0 ]
  [ "$output" = "d0dd175a6c1e1aa0bc4958ae59cd82c8375d51c292cf7721bef01b5d93f3b268#3" ]
}

@test "skey is accessible" {
  run check_skey_exists 
  [ "$status" -eq 0 ]
  [ "$output" = "True" ]
}

@test "skey is not stored with the project" {
  run check_skey_in_pwd
  [ "$output" = "✅File does not exist!" ]
}

@test "query address" {
  run query_address
  [ "$status" -eq 0 ]
}

@test "compile simple tx" {
  utxo=$(select_utxo)
  run tx_build_simple $utxo 5000000
  [ "$status" -eq 0 ]
}

@test "sign tx draft" {
  run tx_sign
  [ "$status" -eq 0 ]
}

@test "M1: radicle node is running" {
  run rad_status_check
  [ "$output" = "✓ Node is running." ]
}

@test "M1: 4 of the repos are seeded" {
  run count_repos
  [ "$output" = "4" ]
}

@test "M2: tests for the validator pass" {
  run test_vesting_validator
  [ "$status" -eq 0 ]
}
