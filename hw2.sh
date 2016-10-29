#!/bin/bash
# hw2.sh
# Check how many days to my birthday.
# Hao Zhang
# 2016.10.28  First release

current_year=`date +%Y`
today=`date +%m%d`
today=`date --date=$current_year$today +%m%d`
read -p "When is your birthday, e.g. 20150101? " birthday
if [ -z "$birthday" ]; then
  echo "Wrong format!"
  exit -1
fi
check_birthday=`echo $birthday | grep '[0-9]\{8\}'`
if [ -z "$check_birthday" ]; then
  echo "Wrong format!"
  exit -1
fi
birthday=`date --date=$birthday +%m%d`

if [ "$today" -eq "$birthday" ]; then
  echo "Today is your birthday!" 
  exit 0
fi

today_sec=`date +%s`
if [ "$birthday" -gt "$today" ]; then
  birthday_sec=`date --date=$current_year$birthday +%s`
  declare -i days=($birthday_sec-$today_sec)/60/60/24
  echo "$days days to the next birthday..." 
else
  declare -i next_year=$current_year+1
  birthday_sec=`date --date=$next_year$birthday +%s`
  declare -i days=($birthday_sec-$today_sec)/60/60/24
  echo "$days days to the next birthday..." 
fi
exit 0
