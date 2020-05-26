#!/bin/bash
ip=`ifconfig | grep inet | awk -F ":" '{print $2}' | awk -F " " '{print $1}' | head -n 1`
Pbyte=`ifconfig | grep bajtů | head -n 1 | awk -F "(" '{print $2}' | awk -F ")" '{printf $1}'`
Obyte=`ifconfig | grep bajtů | head -n 1 | awk -F "(" '{print $3}' | awk -F ")" '{printf $1}'`
echo "Moje IP: "$ip
echo "Prijatych: "$Pbyte
echo "Odeslanych: "$Obyte
