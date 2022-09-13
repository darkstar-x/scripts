#!/bin/env bash

### COLORS
OFF='\e[0m'           # Text Reset

# Normal Colors
BLK='\e[0;30m'        # Black
RED='\e[0;31m'        # Red
GRN='\e[0;32m'        # Green
YLW='\e[0;33m'        # Yellow
BLU='\e[0;34m'        # Blue
PRL='\e[0;35m'        # Purple
CYN='\e[0;36m'        # Cyan
WHT='\e[0;37m'        # White

# Bold Colors
BLUB='\e[1;34m'        # Blue

### LOGO ASCII
printf "${BLUB}
 ____ ____ ____ ____ ___   ____ _ _    ____ 
|___ |__/ |  | [__   |    |___ | |    |___ 
|    |  \ |__| ___]  |    |    | |___ |___ ${OFF}"

### SETERS
PWD=$(pwd)
icon='-> '

### START
printf "\n\n${GRN}${icon}Find a folder. . .${OFF}\n"
cd ${HOME}/downloads
printf "${YLW}${icon}${PWD}${OFF}\n"
printf "${RED}${icon}Cleaning all downloads${OFF}\n"

mv -v *.jpg ~/.static_img | lolcat --24bit
mv -v *.png ~/.static_img | lolcat --24bit
mv -v *.jpeg ~/.static_img | lolcat --24bit
mv -v *.apk /ssf/compress/apk | lolcat --24bit
mv -v *.rar /ssf/compress/rar | lolcat --24bit
mv -v *.zip /ssf/compress/zip | lolcat --24bit

printf "${GRN}${icon}Exiting with code 0${OFF}\n"

