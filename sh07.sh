#!/bin/bash
# sh07.sh
# Show arguments and check whether # arguments < 2.
# Hao Zhang
# 2016.10.28  First release

echo "Program name: $0"
echo "# arguments: $#"
if [ $# -lt 2 ]; then
  echo "Too few arguments!"
  exit -1
fi
echo "All arguments: $@"
echo "Argument 1: $1"
echo "Argument 2: $2"
exit 0
