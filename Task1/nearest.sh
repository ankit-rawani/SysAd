#!/bin/bash

chiefLat=28.7041
chiefLong=77.1025

while IFS=  read -r date soldier
do
  awk -v pattern='{print $3, $4}' ./position.log
