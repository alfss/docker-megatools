#!/bin/bash
set -e


export DEBIAN_FRONTEND=noninteractive
echo "deb http://ftp.ru.debian.org/debian/ unstable main non-free contrib" >> /etc/apt/sources.list

apt-get update
apt-get upgrade -y
apt-get install -y megatools wget cron vim curl

#clear cache
apt-get autoremove
apt-get autoclean
apt-get clean
apt-get purge
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

touch /var/log/cron.log

