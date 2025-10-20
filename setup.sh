#!/bin/bash

username=$1

fixed_dir=$(readlink -f ${0%/*});

if ! [ "$USER" = "root" ]; then
	echo "execute com acesso root";
	exit 1;
fi

echo "instalando servidor na maquina no usuario $username";

for script in $(ls ./scripts); do
	bash $fixed_dir/scripts/$script $username;
	ret_status=$?
	if ! [ "$ret_status" = "0" ]; then
		echo "falha no script";
		exit 1;
	fi;
done;
