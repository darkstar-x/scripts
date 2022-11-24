#!/usr/bin/env bash

##########################################
# Author: L3ON4RDI                       #
#  Description: This program is a menu   #
#  for package manger XBPS on Void Linux #
##########################################
#

source colors
clear

echo -e "${Green} FXBPS${Off} Menu\n"

echo -e " 1 - Install packge\n 2 - Remove packes\n 3 - Search Package\n 4 - Update System\n 5 - Quit"

read -r -p "-> " user_options

### Conditions
case "$user_options" in
  1)
    read -r -p "Verbose mode (y)es or (n)o ? " verbose_mode
    read -r -p "Please your package name: " package_name
    if [[ ${verbose_mode} = "y" || ${verbose_mode} = "Y" ]]; then
      echo -e "$Green Installing ${package_name} $Off "
      echo "====> VB on"
      #sudo xbps-install -Suvy ${package_name}
    else
      echo -e "$Green Installing ${package_name} $Off "
      #sudo xbps-install --Suy ${package_name}
    fi
  ;;
  2)
    echo "Two option"
  ;;
  3)
    echo "three option"
  ;;
  4)
    echo "Fuour option"
  ;;
  5)
    echo "Exiting ..."
    exit 0
  ;;
esac
