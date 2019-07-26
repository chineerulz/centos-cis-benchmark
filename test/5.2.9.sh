#!/bin/sh
# ** AUTO GENERATED **

# 5.2.9 - Ensure SSH HostbasedAuthentication is disabled (Scored)

grep "^\s*HostbasedAuthentication" /etc/ssh/sshd_config | grep -q "HostbasedAuthentication\s*no" || exit $?
