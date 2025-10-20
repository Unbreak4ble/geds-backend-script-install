#!/bin/sh

set -e

echo "configurando ambiente git"

target_dir=/home/$1/server.git

cd $target_dir

git config receive.denyNonFastforwards false
git config receive.shallowUpdate true

echo "ambiente git configurado"
