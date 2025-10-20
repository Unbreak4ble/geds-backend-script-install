#!/bin/bash

set -e

echo "atualizando o sistema";

apt update -y && apt upgrade -y;

echo "instalando pacotes nescessarios";

for pkg in {"git","docker.io","docker-compose","nginx","firewalld","openjdk-17-jdk-headless","openjdk-17-jre-headless"}; do
	apt install -y $pkg
done