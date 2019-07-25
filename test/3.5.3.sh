#!/bin/sh
# ** AUTO GENERATED **

# 3.5.3 - Ensure iptables is installed (Scored)

rpm -q iptables |grep -E "iptables-" || exit $?