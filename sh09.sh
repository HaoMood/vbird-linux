#!/bin/bash
# sh09.sh
# Check whether $1 is hello
# Hao Zhang
# 2016.10.28  Frist release

case $1 in
  "")
    echo "Run this script with one argument!"
    exit -1
    ;;
  "hello")
    echo "Hello, how are you?"
    exit 0
    ;;
  *)
    echo "The only acceptable argument is 'hello'!"
    exit -1
    ;;
esac
exit 0
