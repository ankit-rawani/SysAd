#!/bin/bash

chiefLat=28.7041
chiefLong=77.1025

while IFS=  read -r date soldier
do
  #saving the positions of current soldier temporarily
  "$(awk -v sol=$soldier '{if($2==sol) print $3, $4}' ./position.log)" > ./temp.txt
  read -r solLat solLong < ./temp.txt
  solLat=$(echo $solLat | cut -c 3-)
  solLong=$(echo $solLong | cut -c 3-)

  #this is not the actual distance, but this is enough for comparison purpose as the actual distance will just be the root of a multiple of this
  dist=$((((chiefLat-solLat))*((chiefLat-solLat))+((chiefLong-solLong))*((chiefLong-solLong))))
  echo "$date $soldier $dist" >> distance.txt
done < /home/ArmyChief/attendance_record.txt

#updates the nearest10 file everyday as per the /home/ArmyChief/attendance_record.txt
sort -k 3 -n distance.txt | head > nearest10.txt

#removing unnecessary files
rm distance.txt
rm temp.txt
