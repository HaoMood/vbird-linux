#!/bin/bash
# sh11.sh
# Check how many days to demobilize.
# Hao Zhang
# 2016.10.28  First release

read -p "When do you demobilize, e.g. 20101001: " end
if [ -z "$end" ]; then
  echo "Input should not be empty!"
  exit -1
fi
check_end=`echo $end | grep '[0-9]\{8\}'`
if [ -z "$check_end" ]; then
  echo "Wrong input format!"
  exit -1
fi

end=`date --date=$end +%s`
today=`date +%s`
declare -i seconds="$end"-"$today"
if [ "$seconds" -le 0 ]; then
  echo "You have been demobilizied already!"
else
  declare -i days=$seconds/60/60/24
  echo "$days days left..." 
fi
exit 0
