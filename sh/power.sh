#!/usr/bin/env bash

### Get Battery level and APT
power_level=$( cat '/sys/class/power_supply/BAT0/capacity')
adp_log=$(cat '/sys/class/power_supply/ADP0/online')

### ADP Check
if [ "$adp_log" == 1 ]; then
  icon="+"
else
  icon=""
fi

### Basics Logics for battery
if [ "$power_level" -le 20 ]; then
  echo "%{F#ff0003} %{F-}${power_level}% ${icon}"
fi

if [[ "$power_level" -gt 20 && "$power_level" -le 65 ]]; then
  echo "%{F#ffb900} %{F-}${power_level}% ${icon}"
fi

if [[ "$power_level" -gt 65 && "$power_level" -le 85 ]]; then
  echo "%{F#61ff00}%{F-}${power_level}% ${icon}"
fi

if [[ "$power_level" -gt 90 ]]; then
  echo "%{F#61ff00}%{F-}${power_level}% ${icon}"
fi

