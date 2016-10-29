#!/bin/bash
# sh05.sh
# Input a file name, check the information about that file.
# Hao Zhang
# 2016.10.28  First release

read -p "Please input a filename: " filename
if [ -z "$filename" ]; then
  echo "Please input a filename!"
  exit -1
fi
if [ ! -e "$filename" ]; then
  echo "Filename does not exist."
  exit -1
fi

if [ -f "$filename" ]; then
  echo "$filename is a regular file."
elif [-d "$filename" ]; then
  echo "$filename is a directory."
else
  echo "$filename is neither a regular file or a directory."
fi

if [ -r "$filename" ]; then
  echo "$filename has r permission."
fi
if [ -w "$filename" ]; then
  echo "$filename has w permission."
fi
if [ -x "$filename" ]; then
  echo "$filename has x permission."
fi

exit 0
