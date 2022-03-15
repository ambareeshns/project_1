#!/bin/bash
echo "enter the filename"
read name
n=1
while read line
do
	if [ $n -gt 1 ] ; then
		age=`echo $line | awk -F " " '{print $4}'`
		if [ $age -gt 60 ]
		then
			echo "$line" | awk -F " " '{print $1}'
		fi
	fi
	n=`expr $n + 1`
done < $name
