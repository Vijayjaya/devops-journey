#!/bin/bash

usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [[ $usage -gt 80 ]]
then
	echo "Disk usage is high: $usage%"
else
	echo "Disk usage is low: $usage%"
fi

