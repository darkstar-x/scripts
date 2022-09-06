#!/usr/bin/env bash

# Setters
default='leo'

# Check
echo 'Enter a word: '
read word

test "$word" = "$default"

if [ "$?" != "1" ]; then
  echo 'This word is true'
else
  echo 'This word is false'
fi

sleep 3s

echo 'Exiting. . .'
