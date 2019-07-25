#!/bin/sh
# ** AUTO GENERATED **

# 1.2.2 - Ensure GPG keys are configured (Not Scored)

rpm -q gpg-pubkey --qf '%{name}-%{version}-%{release} --> %{summary}\n' | grep 'gpg-pubkey' | grep 'amazon-linux@amazon.com' || exit $?
