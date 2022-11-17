#!/usr/bin/env bash

##########################################
# Author: s4ymon                         #
#  Description: This program is a menu   #
#  for package manger XBPS on Void Linux #
##########################################
#

source colors
clear

echo -e "$GreenFXBPS $Off Menu\n"

echo -e " 1 - Install packge\n 2 - Remove packes\n 3 - Update System\n\n"

read -r -p "-> " user_options

echo -e "Ok $user_options \n"

### Conditions
case "$user_options" in
  1)
    echo "Please your package name: "
    read option1
    echo -e "$Green Installing $option1 $Off "
esac
