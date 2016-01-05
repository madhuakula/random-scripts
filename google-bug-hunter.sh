#!/bin/bash
#Author : Madhu Akula (http://www.madhuakula.com)
#Google Bughunters list. Please change the seq number as per the requirement ($pagecount replace with number) 
pagecount=`curl https://bughunter.withgoogle.com/characterlist 2>/dev/null | grep -F '</b>' | awk '{print $NF}' | cut -d '>' -f2 | cut -d '<' -f1`
for i in `seq 1 $pagecount`
do

	echo "###############################################"
	echo "Characterlist" $i "Contails the following users"
	echo "###############################################"
	echo
	curl https://bughunter.withgoogle.com/characterlist/$i 2>/dev/null | grep -F '<center><h2>' | cut -d '<' -f3 | cut -d '>' -f2
	echo
done
