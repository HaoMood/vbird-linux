#!/bin/bash
# sh17.sh
# ping 192.168.1.1 - 192.168.1.100
# Hao Zhang
# 2016.10.28  First release

for addr in `seq 1 100`
do
  full_addr="192.168.1.$addr"
  ping -c 1 -w 1 $full_addr &> /dev/null && success="yes" \
    || success="no"
  if [ "$success" == "yes" ]; then
    echo "$full_addr is on."
  else
    echo "$full_addr is off."
  fi
done
exit 0
