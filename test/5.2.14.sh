#!/bin/sh
# ** AUTO GENERATED **

# 5.2.14 - Ensure only approved MAC algorithms are used (Scored)

WEAK_LIST="hmac-md5 hmac-md5-96 hmac-ripemd160 hmac-sha1 hmac-sha1-96 umac-64@openssh.com umac-128@openssh.com hmac-md5-etm@openssh.com hmac-md5-96-etm@openssh.com hmac-ripemd160-etm@openssh.com hmac-sha1-etm@openssh.com hmac-sha1-96-etm@openssh.com umac-64-etm@openssh.com umac-128-etm@openssh.com"

LIST_MAC=$(sshd -T | grep -i "MACs" | awk {'print $2'})

for mac in $(echo $LIST_MAC | sed "s/,/ /g")
do
echo $WEAK_LIST | grep $mac || exit 1

done