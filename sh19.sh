#!/bin/bash
# sh19.sh
# User input N, compute 1+2+3+...+N.
# Hao Zhang

read -p "Input N: " N
if [ -z "$N" ]; then
  echo "Wrong input!"
  exit -1
fi
check_N=`echo "$N" | egrep '[0-9]+'`
if [ ! check_N ]; then
  echo "Wrong input!"
  exit -1
fi

declare -i result=0
for ((i=1; i<=$N; i=i+1))
do
  result=$result+$i
done
echo $result
exit 0
