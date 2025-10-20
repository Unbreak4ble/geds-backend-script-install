#!/bin/sh

fixed_dir=$(readlink -f ${0%/*})

echo "inicializando container postgresql"

docker run -d --name postgres -u postgres \
    --volume postgres_vol:/var/lib/postgresql/data \
    -e POSTGRES_DB=gerenciador_tarefas_pessoais \
    -e POSTGRES_PASSWORD=root \
    -e POSTGRES_USER=postgres \
    -p 5432:5432 \
    postgres:latest

echo "postgresql iniciado"