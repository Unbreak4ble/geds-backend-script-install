#!/bin/bash

echo "desinstalando diretorios e containers do servidor"

sudo rm -rf ~/server.git
sudo rm -rf /var/tmp/server_install_files
sudo rm -rf /srv/server
sudo rm -rf /etc/server
sudo docker kill postgres
sudo docker rm postgres
sudo systemctl stop server
sudo systemctl disable server
sudo rm /etc/systemd/system/server.service

echo "servidor desinstalado"