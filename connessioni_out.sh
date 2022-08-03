mkdir $HOME/test;
date >> $HOME/test/outconnections.log;
netstat -an | grep ESTABLISHED | awk '{ print $5 }' | xargs -I {} echo "{}" >> $HOME/test/outconnections.log;
echo " " >> $HOME/test/outconnections.log
