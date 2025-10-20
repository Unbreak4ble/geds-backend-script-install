#!/bin/sh

username=$1
target_dirs={"/home/$username/server.git","/srv/server","/etc/server"}

echo "transferindo permissões para o usuario $username"

for target_dir in $target_dirs; do;
    chown -R $username:$username $target_dir
    echo "$username -> $target_dir"
done;

echo "permissões transferidas"