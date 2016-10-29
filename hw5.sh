#!/bin/bash
# hw5.sh
# Hao Zhang
# 2016.10.28  First release

declare -i i=1
for user_name in `cat /etc/passwd | cut -d ':' -f 1`
do
  echo "The $i account is \"$user_name\""
  i=$i+1
done
exit 0
