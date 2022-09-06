#!/bin/bash

### COLORS
OFF='\033[0m'           # Text Reset

# Normal
BLK='\033[0;30m'        # Black
RED='\033[0;31m'        # Red
GRN='\033[0;32m'        # Green
YLW='\033[0;33m'        # Yellow
BLU='\033[0;34m'        # Blue
PRL='\033[0;35m'        # Purple
CYN='\033[0;36m'        # Cyan
WHT='\033[0;37m'        # White

# Bold
BLKB='\033[1;30m'       # Black
REDB='\033[1;31m'       # Red
GRNB='\033[1;32m'       # Green
YLWB='\033[1;33m'       # Yellow
BLUB='\033[1;34m'       # Blue
PRLB='\033[1;35m'       # Purple
CYNB='\033[1;36m'       # Cyan
WHTB='\033[1;37m'       # White

### SETERS

initial_state=1

# 2.4Ghz
PORT_2GHZ="192.168.1.26:5555"
# 5Ghz
PORT_5GHZ="192.168.1.26:5555"

### START
echo -e "${YLW}➩ Iniciando o Android Debug Brindge. . .${OFF}"

# Start ADB not is required root
#alacritty -v -e adb start-server

# Connect on port

if [ "${initial_state}" = 1 ]; then
  # Default is 5Ghz
  echo -e "${YLW}➫ Trying to connect to the port:${PORT_5GHZ}${OFF}"
#  alacritty -v -e adb kill-server
  #adb connect ${PORT_5GHZ}
  initial_state=0
  
  
else
  read -t 3 -N 1 -p "Retry connection? (y/N)" answer

  # Check input
  if [ "${answer,,}" == "y" ]; then
    echo "Connect"
  elif [ "@{answer}" == "n" ]; then
    echo -e "➫ Exiting with a error 1"
  fi
fi
