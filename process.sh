#!/bin/bash
read -p "enter process name: " P
mkdir $HOME/test 2> /dev/null || cd $HOME/test
date >> $HOME/test/processes.log;
echo "Current ${P} instances: " >> $HOME/test/processes.log;
ps aux | grep ${P} | awk '{ print $1,"", $2 }' >> $HOME/test/processes.log;
echo "" >> $HOME/test/processes.log
