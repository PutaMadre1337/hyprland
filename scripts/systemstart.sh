#!/usr/bin/env sh

localsend

for i in {1..10}; do
  localsd=$(hyprctl clients | rg LocalSend)
  if [ -n "$localsd" ]; then
    hyprctl dispatch closewindow title:LocalSend
    break
  fi
  sleep 1
done
