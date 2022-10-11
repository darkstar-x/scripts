#!/usr/bin/env bash

arr=('-' '\' '|' '/')

while true; do
  for x in "${arr[@]}"; do
    echo -en "\r $x"
    sleep .1
  done
done
