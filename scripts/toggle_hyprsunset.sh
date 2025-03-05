#!/bin/bash

STATE_FILE="/tmp/hyprsunset_state"

if [[ ! -f "$STATE_FILE" ]]; then
  echo "0" >"$STATE_FILE"
fi

STATE=$(cat "$STATE_FILE")

if [[ "$STATE" -eq 0 ]]; then
  echo "1" >"$STATE_FILE"
  hyprsunset --temperature 4000
else
  echo "0" >"$STATE_FILE"
  hyprsunset --identity
fi
