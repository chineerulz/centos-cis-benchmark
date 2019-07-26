#!/bin/sh
# ** AUTO GENERATED **

# 5.2.2 - Ensure permissions on SSH private host key files are configured
#(Scored)

for key in $(find /etc/ssh -xdev -type f -name 'ssh_host_*_key')
do
stat -L -c "%a %u %g" $key | grep "600 0 998"
permission1=$?

stat -L -c "%a %u %g" $key | grep "640 0 998"
permission2=$?

if [ $permission1 -eq 1 ] && [ $permission2 -eq 1 ]
then
exit 1
fi

done