#!/bin/bash

today=`date +%Y-%m-%d`

awk -v d=$today -v pattern=".*$today.*Army.*" '$0 ~ pattern {if($3=="YES") print d,$2}' ./attendance.log >> /home/ArmyGeneral/attendance_record.txt
awk -v d=$today -v pattern=".*$today.*Navy.*" '$0 ~ pattern {if($3=="YES") print d,$2}' ./attendance.log >> /home/NavyMarshal/attendance_record.txt
awk -v d=$today -v pattern=".*$today.*AirForce.*" '$0 ~ pattern {if($3=="YES") print d,$2}' ./attendance.log >> /home/AirForceChief/attendance_record.txt

echo "Attendance done!"
