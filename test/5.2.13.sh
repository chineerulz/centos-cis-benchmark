#!/bin/sh
# ** AUTO GENERATED **

# 5.2.13 Ensure only strong ciphers are used

WEAK_LIST="3des-cbc aes128-cbc aes192-cbc aes256-cbc arcfour arcfour128 arcfour256 blowfish-cbc cast128-cbc rijndael-cbc@lysator.liu.se"

LIST_CIPHERS=$(sshd -T | grep -i "ciphers" | awk {'print $2'})

for ciphers in $(echo $LIST_CIPHERS | sed "s/,/ /g")
do
echo $WEAK_LIST | grep $ciphers || exit 1

done