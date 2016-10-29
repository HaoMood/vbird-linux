#!/bin/bash
# Let user input Y/N, then check it.
# Hao Zhang
# 2016.10.28  First release

read -p "Please input Y/N: " choice
if [ "$choice" == "Y" ] || [ "$choice" == "y" ]; then
  echo "OK, continue."
  exit 0
elif [ "$choice" == "N" ] || [ "$choice" == "n" ]; then
  echo "Oh, interrupt!"
  exit 0
else
  echo "I do not know what your choice is."
  exit -1
fi
