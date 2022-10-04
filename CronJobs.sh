#!/bin/bash

#Looking through cron files
echo "Cron Jobs..."
echo "Contents of /etc/crontab:"
strings /etc/crontab
echo " "
echo "Contents of /var/spool/cron/crontabs"
strings /var/spool/cron/crontabs
echo ""
echo "Files inside of cron.d"
ls -al /etc/cron.d 
echo ""

#What file would you like to edit
echo "Would you like to edit any of these files? y/n"
read yeOno

if [ $yeOno = 'y' ]
then
    echo "What file would you like to edit? Give file path"
    read respo
    cat -b $respo
    echo "Enter the characters of the line you want to remove?"
    read lineNum
    sed -i '/'$lineNum'/d' $respo
fi 

if [ $yeOno = 'n' ]
then
    echo "Okay crons are finished"
fi