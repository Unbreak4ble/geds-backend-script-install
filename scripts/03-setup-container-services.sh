#!/bin/sh

fixed_dir=$(readlink -f ${0%/*})

echo "preparando containers nescessarios"

for script in $(ls $fixed_dir/container-services); do
	echo "running script for $fixed_dir/$script"
done
