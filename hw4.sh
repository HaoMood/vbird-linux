#!/bin/bash
# hw4.sh
# Check ~/logical, mkdir, and delete it.
# Hao Zhang
# 2016.10.28  First release

if [ ! -e ~/logical ]; then
  touch ~/logical
  exit 0
fi

if [ -f ~/logical ]; then
  rm ~/logical
  mkdir ~/logical
  exit 0
fi

if [ -d ~/logical ]; then
  rmdir ~/logical
  exit 0
fi
