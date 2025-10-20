#!/bin/bash

set -e

fixed_dir=$(readlink -f ${0%/*})
username=$1

echo "copiando arquivos nescessarios do servidor"

cp -rf $fixed_dir/../assets/server/ /etc/

echo "arquivos copiados para /etc/server"