#!/bin/bash

set -e

echo "preparando servidor git"

target_dir="/home/$1"
git_dir_name="server.git"

echo "direcionando diretorio atual de trabalho para $target_dir"
cd $target_dir;

echo "criando ambiente git"
mkdir $git_dir_name
cd $git_dir_name
git init --bare

echo "ambiente git criado em $target_dir/$git_dir_name"

echo "criando diretorio worktree"

mkdir -p /srv/server

echo "diretorio worktree criado em /srv/server"