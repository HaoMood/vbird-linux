#!/bin/bash
# Repeat query until user input "yes".
# Hao Zhang
# 2016.10.28  First release

while [ "$ans" != "yes" ] && [ "$ans" != "YES" ] 
do
  read -p "Input yes to stop: " ans
done
exit 0
