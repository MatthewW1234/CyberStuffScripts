#!/bin/bash
find / -iname '*.mp3' >> media_List
find / -iname '*.mp4' >> media_List
find / -iname '*.mp2' >> media_List
cat media_List
sed -i '/permission/d' media_List
for i in $(cat media_List);
do
	chattr -i $i
	rm -rf $i
done

