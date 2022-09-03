#!/bin/bash

count=0


while true; do
  
  check_state=$(cat /sys/class/power_supply/ADP0/uevent | grep -i "POWER_SUPPLY_ONLINE")
  initial_state='POWER_SUPPLY_ONLINE=1'

  # Check state
  if [ "$check_state" = "$initial_state" ]
  then
    if [ "$count" = 0 ]
    then
      msg_success="Adapter connected"
      notify-send -t 1500 "$msg_success"

    fi
    count=1
    initial_state='POWER_SUPPLY_ONLINE=0'
  elif [ "$count" = 1 ]; then 
      msg_error="Adapter not connected"
      notify-send -t 1500 -u critical "$msg_error"
      count=0
  fi

  sleep 1.5s
done
