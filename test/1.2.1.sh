#!/bin/sh
# ** AUTO GENERATED **

# 1.2.1 - Ensure package manager repositories are configured

core_repo=$(yum repolist | grep "Amazon Linux 2 core repository" | echo $?)

docker_repo=$(yum repolist | grep "Amazon Extras repo for docker" | echo $?)

if [ $core_repo -eq 0 ] && [ $docker_repo -eq 0 ]; then
   exit 0
else
   exit 1
fi

