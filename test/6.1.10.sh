#!/bin/sh
# ** AUTO GENERATED **

# 6.1.10 - Ensure no world writable files exist (Scored)

files=$(df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type f -perm -0002 | tr -d '\n')

if [ -n $files ]
then
exit 1
fi
