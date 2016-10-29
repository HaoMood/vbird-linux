#!/bin/bash
# sh14.sh
# Compute 1+2+3+...+100
# Hao Zhang
# 2016.10.28  First release

declare -i i=1
declare -i result=0

while [ "$i" -le 100 ]
do
  result=$result+$i
  i=$i+1
done

echo $result
exit 0
