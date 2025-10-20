#!/bin/bash

echo "desinstalando diretorios e containers do servidor"

sudo rm -rf ~/server.git
sudo rm -rf /var/tmp/server_install_files
sudo rm -rf /srv/server
sudo rm -rf /etc/server
sudo docker kill postgres
sudo docker rm postgres

echo "servidor desinstalado"