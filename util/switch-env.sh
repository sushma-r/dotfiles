## script to switch to different environments easily

if [ $1 = 'local' ];then
sed -Ee 's/^(#)(.+)local.learnwithflip$/\2local.learnwithflip/' -e 's/^(#)(.+)test.learnwithflip$/\1\2test.learnwithflip/' -e 's/^[^#](.+)test.learnwithflip$/#1\1test.learnwithflip/' -e 's/^(#)(.+)digi.learnwithflip$/\1\2digi.learnwithflip/' -e 's/^[^#](.+)digi.learnwithflip$/#1\1digi.learnwithflip/' -i /etc/hosts

elif [ $1 = 'test' ]
then
sed -Ee 's/^(#)(.+)test.learnwithflip$/\2test.learnwithflip/' -e 's/^(#)(.+)local.learnwithflip$/\1\2local.learnwithflip/' -e 's/^[^#](.+)local.learnwithflip$/#1\1local.learnwithflip/' -e 's/^(#)(.+)digi.learnwithflip$/\1\2digi.learnwithflip/' -e 's/^[^#](.+)digi.learnwithflip$/#1\1digi.learnwithflip/' -i /etc/hosts


elif [ $1 = 'digi' ]
then
sed -Ee 's/^(#)(.+)digi.learnwithflip$/\2digi.learnwithflip/' -e 's/^(#)(.+)local.learnwithflip$/\1\2local.learnwithflip/' -e 's/^[^#](.+)local.learnwithflip$/#1\1local.learnwithflip/' -e 's/^(#)(.+)test.learnwithflip$/\1\2test.learnwithflip/' -e 's/^[^#](.+)test.learnwithflip$/#1\1test.learnwithflip/' -i /etc/hosts

else 
echo 'Invalid usage'
fi

