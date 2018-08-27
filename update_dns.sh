#!/bin/bash
#k92
#FreeDNS updater script

USERNAME=username
PASSWORD=password
HOST=www.example.com

CACHED_IP=$(cat current_ip)
CURRENT_IP=$(curl ifconfig.io)

if [[ $CACHED_IP == $CURRENT_IP ]]; then
	echo 'ip still the same'
	exit 0
fi

curl "https://$USERNAME:$PASSWORD@freedns.afraid.org/nic/update?hostname=$HOST&myip=$CURRENT_IP"

echo "$CURRENT_IP" > current_ip
