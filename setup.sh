#!/bin/sh

username=$1

if ! [ "$USER" == "root" ]; then
	echo "execute com acesso root";
	exit 1;
fi

echo "instalando servidor na maquina no usuario $username";
