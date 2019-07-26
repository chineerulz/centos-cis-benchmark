#!/bin/sh
# ** AUTO GENERATED **

# 5.2.19 - Ensure SSH warning banner is configured (Scored)

grep -qE "^Banner\s+" /etc/ssh/sshd_config || exit $?
