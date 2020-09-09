#!/bin/bash
# find the number of real cores/cpus in a system and ignore hyperthreading

if [ ! -r /proc/cpuinfo ]; then
	echo "Cannot find or read /proc/cpuinfo"
	exit 1
fi

num_of_cores=`grep 'core id' /proc/cpuinfo | sort -u | wc -l`

if [ $num_of_cores -eq 0 ]; then
	# This system is an old SMP system or single CPU so count the processors
	
	num_of_cores=`grep '^processor' /proc/cpuinfo | sort -u | wc -l`
fi

echo $num_of_cores
