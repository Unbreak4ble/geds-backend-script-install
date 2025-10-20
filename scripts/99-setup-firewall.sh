#!/bin/sh

set -e

echo "preparando firewall"

firewall-cmd --zone=public --add-masquerade

# TODO resolver aqui
firewall-cmd --zone=public --add-forward-port=port=80:proto=tcp:toport=3000:toaddr=10.0.0.57

echo "firewall pronto ?"
