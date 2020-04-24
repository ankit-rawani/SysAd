#!/bin/bash

#creating attendance_report.txt in home dir of ChiefCommander if not present
#if present, then replacing the whole text inside with the updated one
#taking the attendance_record fromm home directory of troop chiefs and adding it to attendance_report.txt

echo "Attendance report of soldiers present at their positions - " > /home/ChiefCommander/attendance_report.txt

echo ""
echo "Army attendance report - " >> /home/ChiefCommander/attendance_report.txt
cat /home/ArmyChief/attendance_record.txt >> /home/ChiefCommander/attendance_report.txt

echo "Navy attendance report - " >> /home/ChiefCommander/attendance_report.txt
cat /home/NavyMarshal/attendance_record.txt >> /home/ChiefCommander/attendance_report.txt

echo "AirForce attendance report - " >> /home/ChiefCommander/attendance_report.txt
cat /home/AirForceChief/attendance_record.txt >> /home/ChiefCommander/attendance_report.txt
