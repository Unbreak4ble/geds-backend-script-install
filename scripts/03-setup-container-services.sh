#!/bin/bash

set -e

fixed_dir=$(readlink -f ${0%/*})

echo "preparando containers nescessarios"

for script in $(ls $fixed_dir/container-services); do
	bash $fixed_dir/container-services/$script
	ret_status=$?
	if ! [ "$ret_status" = "0" ]; then
		exit 1;
	fi;
done

echo "containers inicializados"