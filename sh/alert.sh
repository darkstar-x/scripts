#!/bin/bash

initial_count=0

while true; do

  initial_state=$(cat /sys/class/power_supply/BAT0/capacity)

  if [ "$initial_state" -lt 20 ]
  then
    if [ "$initial_count" = 0 ]
    then
      msg_success="Battery low"
      notify-send -t 1500 "$msg_success" -u critical
    fi

    initial_count=1

  elif [ "$initial_count" = 1 ]; then
      msg_success="Battery low"
      notify-send -t 1500 "$msg_success" -u critical
      initial_count=0
  fi

  sleep 1s
done
