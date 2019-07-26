#!/bin/sh
# ** AUTO GENERATED **

# 6.1.12 - Ensure no ungrouped files or directories exist (Scored)

files=$(df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -nogroup | tr -d '\n')

if [ -n $files ]
then
exit 1
fi