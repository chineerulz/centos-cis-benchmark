#!/bin/sh
# ** AUTO GENERATED **

# 5.2.15 Ensure that strong Key Exchange algorithms are used

WEAK_LIST="diffie-hellman-group1-sha1 diffie-hellman-group14-sha1 diffie-hellman-group-exchange-sha1"

LIST_KEY=$(sshd -T | grep -i "kexalgorithms" | awk {'print $2'})

for key in $(echo $LIST_KEY | sed "s/,/ /g")
do
echo $WEAK_LIST | grep $key || exit 1

done