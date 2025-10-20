#!/bin/sh

set -e

fixed_dir=$(readlink -f ${0%/*});

echo "copiando .services"

cp -f $fixed_dir/../assets/systemd/server.service /etc/systemd/system/

echo "ativando serviços"

systemctl enable server
systemctl start server

echo "serviços ativados"
