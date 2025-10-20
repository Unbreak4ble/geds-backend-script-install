#!/bin/sh

set -e

echo "atualizando o sistema";

apt update -y && apt upgrade -y;

echo "instalando pacotes nescessarios";

for pkg in {"git","docker.io","docker-compose","nginx","firewalld"}; do
	apt install -y $pkg
done
