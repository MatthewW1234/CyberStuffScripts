#!/bin/bash
echo "Running sysctl configs now..."
cat /etc/sysctl.conf
echo "Are there any settings you would like to change? y/n"
read response
if  [ $response = 'y' ] 
then
        echo "How many configs do you want changed?"
        read nums
        for i in $(seq 1 $nums)
        do
                echo "Type what config you want changed"
                read respo
                echo "Changing now"
                var=`cat SysctlConf.txt | grep $respo`
                sed -i 's/$respo/$var/' /etc/sysctl.conf
                sed -i '/$var/d' SysctlConf.txt
        done

                cat SysctlConf.txt >> /etc/sysctl.conf
		sysctl -p

fi


if  [ $response = 'n' ]
then
                cat SysctlConf.txt >> /etc/sysctl.conf
		sysctl -p
fi
echo "Configs Finished"
