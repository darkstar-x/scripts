#!/usr/bin/env bash

arr=('\e[1;93m' '' '' '' '')
arr_=('\e[1;90m' '')

while true; do
  for x in "${arr[@]} ${arr_[@]}"; do
    echo -en "\r $x"
    sleep .1
  done
done
