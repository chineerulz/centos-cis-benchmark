#!/bin/sh
# ** AUTO GENERATED **

# 3.5.2.1 - Ensure IPv6 default deny firewall policy (Scored)

ip6tables -L | egrep -q "Chain[[:space:]]+INPUT[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || exit 1
ip6tables -L | egrep -q "Chain[[:space:]]+FORWARD[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || exit 1
ip6tables -L | egrep -q "Chain[[:space:]]+OUTPUT[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || exit 1
