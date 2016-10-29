#!/bin/bash
# Check $1 in one, two, three. 
# Hao Zhang
# 2016.10.28  First release

function show_choice() {
  echo "Your choice is $1."
}

case $1 in
  "one")
    show_choice "one"
    exit 0
    ;;
  "two")
    show_choice "two"
    exit 0
    ;;
  "three")
    show_choice "three"
    exit 0
    ;;
  *)
    echo "Only acceptable arguments are 'one, two, and three'."
    exit -1
    ;;
esac
exit 0
