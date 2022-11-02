#!/usr/bin/env bash

### Get APT status
ADP_STATUS=$(cat '/sys/class/power_supply/ADP0/online')
FAKE_STATUS=0 # 0 = OFF 1 = ON

### ADP Check

if [ $FAKE_STATUS == 0 ]; then
  MSG="ADP OFF"
  echo "$MSG"
  sleep 1s
  MSG=""
  echo "$MSG"
fi
