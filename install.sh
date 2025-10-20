#!/bin/bash

set -e

target_dir=/var/tmp/server_install_files
source_files_url='https://github.com/Unbreak4ble/geds-backend-script-install/archive/refs/tags/v1.0.8.zip'

mkdir -p $target_dir

cd $target_dir

echo "Fazendo download dos arquivos"

wget -O source.zip $source_files_url

echo "Descomprimindo arquivos"

unzip source.zip

rm source.zip

cd *

echo "executando"

./root-wrapper.sh