#!/bin/bash
#k92
#FreeDNS updater script

USERNAME=username
PASSWORD=password
HOSTS=(www1.example.com www2.example.com)

CACHED_IP=$(cat current_ip)
CURRENT_IP=$(curl ifconfig.io)

if [[ $CACHED_IP == $CURRENT_IP ]]; then
	echo 'ip still the same'
	exit 0
fi

for index in ${!HOSTS[*]}
do
	curl "https://$USERNAME:$PASSWORD@freedns.afraid.org/nic/update?hostname=${HOSTS[$INDEX]}&myip=$CURRENT_IP"
done

echo "$CURRENT_IP" > current_ip
