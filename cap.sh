#!/bin/bash
echo "Configuring Capabilities"
getcap -r /usr 
getcap -r /bin
getcap -r /boot 
getcap -r /home
getcap -r /etc
getcap -r /opt
getcap -r /var

echo "Would you like to remove any capabilities? y/n"
read respo

if [ $respo = 'y' ]
then
    echo "Which file would you like to remove capabilities from?"
    read cap 
    setcap -r $cap
fi

if [ $respo = 'n' ]
then
    echo "Capabilites finished."
fi