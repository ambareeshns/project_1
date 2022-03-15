#!/bin/bash
server=`sshd jenkins"
for i in $server
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "$i is stopped" | mail -s "service stopped" ambareeshns@gmail.com
	fi
done
