#!/bin/bash
echo"_____     _      _____           _        _____            _____ _          _____         _      _____     _   _   _"
echo"|   __|___| |_   | __  |___ ___ _| |_ _   |   __|___ ___   |_   _| |_ ___   |   | |___ _ _| |_   | __  |___| |_| |_| |___" 
echo"|  |  | -_|  _|  |    -| -_| .'| . | | |  |   __| . |  _|    | | |   | -_|  | | | | -_|_'_|  _|  | __ -| .'|  _|  _| | -_|"
echo"|_____|___|_|    |__|__|___|__,|___|_  |  |__|  |___|_|      |_| |_|_|___|  |_|___|___|_,_|_|    |_____|__,|_| |_| |_|___|"
echo"                                   |___|                                                                                  "

#Prep
echo "Prep"
chmod +x UserConf.sh
chmod +x UserPasswords.sh
chmod +x SysctlApplications.sh
chmod +x MediaFiles.sh
chmod +x generalWPerms.sh
chmod +x CronJobs.sh

#Users
echo "Configuring Users.... :)"
./UserPasswords.sh
./UserConf.sh
echo"Users Done!"

#Sysctl Confs
./SysctlApplications.sh

#General Files/perms
./generalWPerms.sh

#Cronjobs
./CronJobs.sh

#Capabilities
./cap.sh