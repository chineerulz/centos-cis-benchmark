#!/bin/sh
# ** AUTO GENERATED **

# 5.2.18 - Ensure SSH access is limited (Scored)

grep -qE "^AllowUsers|^AllowGroups|^DenyUsers|^DenyGroups" /etc/ssh/sshd_config || exit $?
