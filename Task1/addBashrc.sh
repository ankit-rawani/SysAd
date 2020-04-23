#!/bin/bash

#specifying paths of the scripts (change to absolute path a/c the system)
ugen=./userGenerate.sh
per=./permit.sh
as=./autoSchedule.sh
att=./attendance.sh
rec=./record.sh
fa=./finalattendance.sh
near=./nearest.sh

#appending the aliases to the .bashrc file
echo "alias userGenerate=$ugen" >> ~/.bashrc
echo "alias permit=$per" >> ~/.bashrc
echo "alias autoSchedule=$as" >> ~/.bashrc
echo "alias attendance=$att" >> ~/.bashrc
echo "alias record=$rec $1" >> ~/.bashrc
echo "alias finalattendance=$fa" >> ~/.bashrc
echo "alias nearest=$near" >> ~/.bashrc
