#!/bin/sh
# ** AUTO GENERATED **

# 3.5.2.4 - Ensure IPv6 firewall rules exist for all open ports (Not Scored)

# tcp
for port in $(netstat -lnt |grep ^tcp | grep LISTEN | awk {'print $4'} | cut -d":" -f2); do
        echo open tcp port $port

        ip6tables -L INPUT -v -n | grep "ACCEPT\s*tcp.*:$port" || exit $?
done

# udp
for port in $(netstat -lnt |grep ^udp | grep LISTEN | awk {'print $4'} | cut -d":" -f2); do
        echo open udp port $port

        ip6tables -L INPUT -v -n | grep "ACCEPT\s*udp.*:$port" || exit $?
done
