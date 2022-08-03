mkdir $HOME/test 2> /dev/null || cd $HOME/test;
date >> $HOME/test/listdir;
echo $PWD >> $HOME/test/listdir;
ls -l --block-size=M | awk '{ print $5,"", $9 }' | tail +2 >> $HOME/test/listdir;
echo "" >> $HOME/test/listdir;