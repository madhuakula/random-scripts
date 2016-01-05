#!/bin/bash
#Author: Madhu Akula (http://www.madhuakula.com)
# IP command gives interface name and ipv4 ip
# Only tested on Ubuntu
# Inspired from https://github.com/anantshri/script-collection/blob/master/ip

for interface in `ifconfig | grep "encap:" | awk '{print $1}'`; do
	ip=$(ifconfig $interface | grep "inet " | awk '{print $2}' | cut -d ':' -f2)
	if [ ! -z $ip ]; then
	echo "$interface : $ip"
	fi
done
