#/bin/bash
df -h | grep -v ^none | ( read header ; echo "$header" ; sort -rn -k 5) > /tmp/fsusage
sed -i '1d' /tmp/fsusage
#cat /tmp/fsusage
cat /tmp/fsusage | while read line 
do
   #echo $line
   echo $line | awk '{print $6}'
   exit
done
