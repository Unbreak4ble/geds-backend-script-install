#!/bin/bash

fixed_dir=$(readlink -f ${0%/*})

echo "configurando firewall do docker"

iptables -t nat -F
iptables -t nat -X DOCKER
iptables -t nat -N DOCKER
iptables -t nat -A PREROUTING -m addrtype --dst-type LOCAL -j DOCKER
iptables -t nat -A OUTPUT ! -d 127.0.0.0/8 -m addrtype --dst-type LOCAL -j DOCKER
iptables -t nat -A DOCKER -i docker0 -j RETURN

systemctl restart docker

echo "preparando containers nescessarios"

for script in $(ls $fixed_dir/container-services | grep ".sh"); do
	bash $fixed_dir/container-services/$script
	ret_status=$?
	if ! [ "$ret_status" = "0" ]; then
		exit 1;
	fi;
done

sleep 10

echo "containers inicializados"