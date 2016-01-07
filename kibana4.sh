#!/bin/bash
#Author : Madhu Akula (http://www.madhuakula.com)
# Description: Kibana Start Stop Restart
# chkconfig: 234 20 80
# Replace "KIBANA_HOME" with your kibana location
KIBANA_HOME=/opt/kibana-4.0.1-linux-x64/bin

start_fun()
{
nohup $KIBANA_HOME/kibana &
}

stop_fun()
{
ps -eaf | grep kibana.js | grep -v grep | awk '{print $2}' | xargs kill -9
}

case $1 in
start)
start_fun
;;
stop)
stop_fun
;;
restart)
stop_fun
start_fun
;;
esac
exit
