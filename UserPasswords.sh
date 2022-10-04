#!/bin/bash

#Inputs
cat /opt/aeacus/assets/ReadMe.html
echo "starting userScript"
beginning=`grep -n '<pre>' /opt/aeacus/assets/ReadMe.html | cut -f1 -d":"`
end=`grep -n '</pre>' /opt/aeacus/assets/ReadMe.html | cut -f1 -d":"`

sed -n "$beginning"','"$end"'p;'"$end"'q' /opt/aeacus/assets/ReadMe.html >> list_Users
sed -i '/pass/d' list_Users
sed -i '/Auth/d' list_Users
sed -i '/pre/d' list_Users
sed -i '/<y>/d' list_Users
sed -i '/:/d' list_Users
sed 's/./\u&/' list_Users >> capitalized
cp -f capitalized list_Users
#region end
#REMEMBER TO ADD A FUNCTION THAT GETS RID OF YOUR USER FROM LIST_USERS
#chpasswd func

for i in $(cat list_Users);
do
	echo "$i"
	echo "$i":"CyberPatriot1!" | sudo chpasswd
done
echo "All passwords changed! :)"