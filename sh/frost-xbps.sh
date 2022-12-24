#!/usr/bin/env bash

#########################################
# Author: Leonardi Melo                 #
# Github: darkstar-x                    #
# Youtube: Darkstar                     #
# Description: This program is a menu   #
# for package manger XBPS on Void Linux #
#########################################

# COLORS
RED=$'\e[0;31m'
GRN=$'\e[0;32m'
YLW=$'\e[0;33m'
BLU=$'\e[0;34m'
MAG=$'\e[0;35m'
CYN=$'\e[0;46m'
RST=$'\e[0m'

# Performance for UTF-8
export LC_ALL=C
export LANG=C

MAIN_SCREEN() {
  clear
  cat << EOF
  ${GRN}FXBPS Cli-menu${RST}
    0 - Install packges
    1 - Remove packges
    2 - Update packges
    3 - Remove orphans packges
    4 - Update system
    5 - Quit
EOF

  CHECK_OPTIONS
}

CHECK_OPTIONS() {
  read -r -p "Chose your option: " chose_user
  read -r -p "Verbose (Y)es or (N)o? " verbose_mode 

  if [ $verbose_mode == "Y" ]; do
    verbose="true"
  fi

  case $chose_user in
    1)
      echo -e "install-info"
}

MAIN_SCREEN
