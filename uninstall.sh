#!/bin/bash

echo "desinstalando diretorios e containers do servidor"

rm -rf ~/server.git
rm -rf /var/tmp/server_install_files
rm -rf /srv/server
rm -rf /etc/server
sudo docker kill postgres
sudo docker rm postgres

echo "servidor desinstalado"