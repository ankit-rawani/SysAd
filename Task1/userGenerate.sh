#!/bin/bash

#adding groups for each troop
addgroup army
addgroup navy
addgroup airforce

#setting default file permission as 770
umask 007

#adding users

#chiefcommander in every group
useradd -p chiefcommander -d ChiefCommander -G army,navy,airforce ChiefCommander

#troop chiefs in respective groups
useradd -p armygeneral -d ArmyGeneral -g army ArmyGeneral
useradd -p navymarshal -d NavyMarshal -g navy NavyMarshal
useradd -p airforcechief -d AirForceChief -g airforce AirForceChief

#adding the soldiers
for n in {1..50}
do
  useradd -p "army$n" -u "a$n" -d "army$n" "Army$n"
  useradd -p "navy$n" -u "n$n" -d "navy$n" "Navy$n"
  useradd -p "airforce$n" -u "af$n" -d "airforce$n" "AirForce$n"
done

echo "Everyone added!"
