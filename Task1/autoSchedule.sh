#!/bin/bash

today=`date +%Y-%m-%d`

for i in {1..50}
do
  awk -v d=$today -v pattern=".*$today.*Army$i .*" '$0 ~ pattern {print d,$3,$4}' ./position.log >> /home/army$i/post_alloted.txt
  awk -v d=$today -v pattern=".*$today.*Navy$i .*" '$0 ~ pattern {print d,$3,$4}' ./position.log >> /home/navy$i/post_alloted.txt
  awk -v d=$today -v pattern=".*$today.*AirForce$i .*" '$0 ~ pattern {print d,$3,$4}' ./position.log >> /home/airforce$i/post_alloted.txt
done

echo "Positions alloted!"
