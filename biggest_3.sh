#!/bin/bash
num1=$1
num2=$2
num3=$3
count=`echo $#`
case $count in
3) if [ $num1 -gt $num2 -a $num1 -gt $num3 ]
   then
   	echo "$num1 is biggest"
   elif [ $num2 -gt $num1 -a $num2 -gt $num3 ]
   then
        echo "$num2 is biggest"
   else
        echo "$num3 is biggest"
   fi
;;
*) echo "please enter 3 values"
;;
esac
