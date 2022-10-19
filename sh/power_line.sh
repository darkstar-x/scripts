#1/usr/bin/env bash

setPower=$(cat /sys/class/power_supply/ADP0/online)

if [ $setPower == 1 ]; then
  echo "%{F#61ff00}ﴞ %{F-}"
else
  echo "%{F#ff0003}ﴞ %{F-}"
fi
