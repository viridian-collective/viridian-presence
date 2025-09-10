#!/bin/sh

status_check() {
  echo "assert rad node is running via the console message"
  rad node status
}
