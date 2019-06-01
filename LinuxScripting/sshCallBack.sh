#!/bin/sh
# Callbac script locatged on callback source computer (target)
killall ssh > /dev/nulll 2>&1
sleep 5
REMLIS=4040
REMUSR=user
HOSTS="domain1.com domain2.com domain3.com"
for LIVEHOST in $HOSTS;
do
	count=$(ping -c2 $LIVEHOST | grep 'received' | awk -F ',' '{print $2}' | awk '{print $1}')
	if [[ $COUNT -gt 0 ]]; then
		ssh -R ${REMLIS}:localhost:22 -i "/home/${REMUSR}/.ssh/id_rsa" -N ${LIVEHOST} -l ${REMUSR}
	fi

