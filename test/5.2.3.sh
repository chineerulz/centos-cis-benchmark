#!/bin/sh
# ** AUTO GENERATED **

#5.2.3 Ensure permissions on SSH public host key files are configured

for key in $(find /etc/ssh -xdev -type f -name 'ssh_host_*_key.pub')
do
stat -L -c "%a %u %g" $key | grep "600 0 0"
permission1=$?

stat -L -c "%a %u %g" $key | grep "640 0 0"
permission2=$?

stat -L -c "%a %u %g" $key | grep "644 0 0"
permission3=$?

if [ $permission1 -eq 1 ] && [ $permission2 -eq 1 ] && [ $permission3 -eq 1 ]
then
exit 1
fi

done