#!/bin/sh
# ** AUTO GENERATED **

# 2.2.2 - Ensure rsh client is not installed (Scored)

rpm -q rsh | grep -E "package rsh is not installed" || exit $1
