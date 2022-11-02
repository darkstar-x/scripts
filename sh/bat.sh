## battery_detect_acpi.sh 

#!/usr/bin/bash

BATTERY_INFO=($( acpi | awk -F',' '{ print $0 }'))

CHARGE=$((${BATTERY_INFO[3]//%,}))
ICON=""
FORMAT=""

if [[ "${BATTERY_INFO[2]}" == *"Charging"* ]] || [[ "${BATTERY_INFO[2]}" == *"Unknown"* ]] ; then
    ICON="  "
else
    ICON="   "
fi

if [[ $CHARGE -lt 10 ]]; then
    FORMAT="%{B#18181}%{B#8c0a0a0a}  "
elif [[ $CHARGE -lt 30 ]]; then
    FORMAT="%{B#18181}%{B#8c0a0a0a}  "
elif [[ $CHARGE -lt 60 ]]; then
    FORMAT="%{B#18181}%{B#8c0a0a0a}  "
elif [[ $CHARGE -lt 100 ]]; then
    FORMAT="%{B#18181}%{B#8c0a0a0a}  "
fi

FORMAT="$FORMAT $ICON ($CHARGE%)"

# Display on bar
echo $FORMAT

# user_modules.ini
# create a custom module in polybar and link the above script file_name to the module
