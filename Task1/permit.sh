#!/bin/bash

#changing the home directory permissions
chmod 700 /home/ChiefCommander

#changing soldiers' home directory group to respective troop groups
for n in {1..50}
do
  chgrp army /home/army$n
  chgrp navy /home/navy$n
  chgrp airforce /home/airforce$n
done

echo "Permissions modified!"
