#!/bin/bash
#Author: Madhu Akula (http://www.madhuakula.com)
# IP command gives interface name and ipv4 ip
# Works for Linux and Mac.
# Inspired from https://github.com/anantshri/script-collection/blob/master/ip

systemname=`uname`
valuename="Darwin"

if [ "$systemname" == "$valuename" ]
then
	for interface in `ifconfig | grep ": flags" | cut -f1 -d":"`; do
		ip=$(ifconfig $interface | grep "inet " | cut -f2 -d" ")
		if [ ! -z $ip ]; then
	    		echo "$interface : $ip"
		fi
	done
else
	for interface in `ifconfig | grep "encap:" | awk '{print $1}'`; do
		ip=$(ifconfig $interface | grep "inet " | awk '{print $2}' | cut -d ':' -f2)
		if [ ! -z $ip ]; then
			echo "$interface : $ip"
		fi
	done
fi
