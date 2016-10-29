#!/bin/bash
# sh18.sh
# Print the permission of files in one directory.
# Hao Zhang
# 2016.10.28  First release

read -p "Please input a directory: " dir_name
if [ ! -d "$dir_name" ]; then
  echo "Input is invalid!"
  exit -1
fi

for file_name in `ls $dir_name`
do 
  test -r "$file_name" && echo "$file_name has r permission."
  test -w "$file_name" && echo "$file_name has w permission."
  test -x "$file_name" && echo "$file_name has x permission."
done
exit 0
