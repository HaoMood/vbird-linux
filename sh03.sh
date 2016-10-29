#!/bin/bash
# sh03.sh
# Touch three files, like backup_20090212.txt, backup_20090213.txt, 
#   and backup_20090214.txt.
# Hao Zhang
# 2016.10.27  *Version 1.0  First release

read -p "Please input a file name prefix [default: 'backup']: " prefix
if [ -z "$prefix" ]; then
  prefix="backup"
fi

if [ ! -d "sh03" ];  then
  mkdir "sh03"
fi

date_2_days_ago=`date --date='2 days ago' +%Y%m%d`
date_1_days_ago=`date --date='1 days ago' +%Y%m%d`
date_today=`date +%Y%m%d`
touch "sh03/${prefix}_${date_2_days_ago}.txt"
touch "sh03/${prefix}_${date_1_days_ago}.txt"
touch "sh03/${prefix}_${date_today}.txt"
exit 0
