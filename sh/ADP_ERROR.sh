#/usr/bin/env bash

initial_state=$(cat /sys/class/power_supply/ADP0/online)
fake_status=0 # 0 = OFF 1 = ON

config_path="${HOME}/.config/polybar/config.ini"

if [ $fake_status != 1 ]; then
   echo "%{F#FE0000}ﮤ   ADP0 OFF%{F-}"
  #sed -i '39s/battery/adp/' $config_path
  #sed -i '39s/adp/battery/' $config_path || sed -e '39s/\b\([a-z]\+\)[ ,\n]\1/\1/g' $config_path
else
  echo ""
fi
