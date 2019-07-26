#!/bin/sh
# ** AUTO GENERATED **

# 5.3.1 - Ensure password creation requirements are configured (Scored)

grep pam_pwquality.so /etc/pam.d/password-auth | grep "retry=3" || exit $?
grep pam_pwquality.so /etc/pam.d/password-auth | grep "try_first_pass" || exit $?

min_length=$(grep ^minlen /etc/security/pwquality.conf | awk {'print $3'})
if [ -z $min_length ]
then
echo "exiting 1"
exit 1
fi

if [ $min_length -lt 14 ]
then
echo "less than 14"
exit 1
fi

grep ^dcredit /etc/security/pwquality.conf | grep "dcredit = 1" || exit $?

grep ^lcredit /etc/security/pwquality.conf | grep "lcredit = -1" || exit $?

grep ^ocredit /etc/security/pwquality.conf | grep "ocredit = -1" || exit $?

grep ^ucredit /etc/security/pwquality.conf | grep "ucredit = -1" || exit $?

