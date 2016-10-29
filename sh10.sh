#!/bin/bash
# sh10.sh
# Check 21, 22, 25, 80 port
# Hao Zhang
# 2016.10.28  First release

ftp_open=`netstat -tuln | grep ':21'`
if [ "$ftp_open" ]; then
  echo "ftp is open."
fi

ssh_open=`netstat -tuln | grep ':22'`
if [ "$ssh_open" ]; then
  echo "ssh is open."
fi

mail_open=`netstat -tuln | grep ':25'`
if [ "$mail_open" ]; then
  echo "mail is open."
fi

www_open=`netstat -tuln | grep ':80'`
if [ "$www_open" ]; then
  echo "www is open."
fi
exit 0
