#!/bin/bash
size=`df -h . | awk '(NR>1) {print $(NF-1)}' | sed 's/%/ /g'`
if [ $size -gt 20 ]
then
	echo "memory reaches threshold value" | mail -s "disk usage" ambareeshns@gmail.com
fi
