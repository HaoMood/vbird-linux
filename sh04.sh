#!/bin/bash
# sh04.sh
# Input a and b, output a*b.
# Hao Zhang
# 2016.10.27  *Version 1.0  First release

read -p "Please input a number: " a
read -p "Please input another number: " b
echo $a  # Debug
echo $b  # Debug
if [ -z "$a" ] || [ -z "$b" ]; then
  echo "You should input two numbers!"
  exit -1
fi

check_a=`echo $a | grep '[a-zA-Z]'`
check_b=`echo $b | grep '[a-zA-Z]'`
if [ "$check_a" ] || [ "$check_b" ]; then
  echo "You should input two numbers!"
  exit -1
fi

declare -i result=$a*$b
echo "The product is: $result"
exit 0
