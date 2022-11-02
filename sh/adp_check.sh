#!/bin/bash

ADP_LOG_LEVEL=$(cat /sys/class/power_supply/ADP0/online)

while [ $ADP_LOG_LEVEL -lt 1 ]
do
  notify-send -t 1500 -u critical "ADP0 Disconected"
  ADP_LOG_LEVEL=`expr $i + 1`
  exit 0
done
