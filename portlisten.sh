#!/bin/bash
mkdir $HOME/test 2> /dev/null || cd $HOME/test;
date >> $HOME/test/listenports.log;
ip a show | grep 192.168 | awk '{ print $2 }' | cut -c 1-12 >> $HOME/test/listenports.log;
netstat -an | grep -w  LISTEN | grep -v tcp6 | awk '{ print $4 }' | cut -d ":" -f2 | xargs -I {} grep -i {} /etc/services >> $HOME/test/listenports.log;
echo "" >> $HOME/test/listenports.log;
