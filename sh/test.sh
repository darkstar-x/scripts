#!/usr/bin/env bash

arr=('\033[0;31m' '' '' '\033[0;33m' '' '' '' '\033[0;32m' '' '' '' )
while true;do
  for x in "${arr[@]}";do
    echo -en "\r $x"
    sleep .3
  done
done
