#!/bin/bash
# sh16.sh
# Use id, finger to check system accounts' info.
# Hao Zhang
# 2016.10.28  First release

for user in `cat /etc/passwd | cut -d ':' -f 1`
do
  id $user
done
exit 0
