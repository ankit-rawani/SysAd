#!/bin/bash

today=`date +%Y-%m-%d`
day=`date +%a`

case "$day" in
  "Mon") days=$(($1+1))
  "Tue") days=$(($1+2))
  "Wed") days=$(($1+3))
  "Thu") days=$(($1+4))
  "Fri") days=$(($1+5))
  "Sat") days=$(($1+6))
  "Sun") days=$(($1+7))
esac

queriedDate=$(date --date="${today} -${days} day" +%Y-%m-%d)

me=$(whoami)

awk '{if($1=="${queriedDate}" print $1,$2}' /home/$me/attendance_record.txt
