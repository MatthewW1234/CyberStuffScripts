#!/bin/bash
awk -F: '{if($3>1000)print$1}' </etc/passwd >> userzFPass
grep -vxFf list_Users userzFPass >> usersToRem
for i in $(cat usersToRem);
do
        userdel -r $i
done