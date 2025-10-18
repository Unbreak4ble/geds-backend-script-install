#!/bin/sh

echo "copiando .services"

cp -f ../assets/systemd/server.service /usr/lib/systemd/system/

echo "ativando serviços"

systemctl enable server
systemctl start server

echo "serviços prontos"
