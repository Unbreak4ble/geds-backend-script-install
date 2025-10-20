#!/bin/bash

set -e

fixed_dir=$(readlink -f ${0%/*})
username=$1

echo "copiando arquivos git hooks"

cp -rf $fixed_dir/../assets/git_hooks/* /home/$username/server.git/hooks/

echo "arquivos copiados"