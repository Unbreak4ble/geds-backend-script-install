#!/bin/sh

set -e

dbname="gerenciador_tarefas_pessoais"

fixed_dir=$(readlink -f ${0%/*})
ddl_file="$fixed_dir/../assets/containers/postgresql/spring_session_ddl.sql"

echo "Criando tabela session para o spring boot";

docker cp $ddl_file postgres:/spring_session_ddl.sql &&\
docker exec -it postgres /bin/bash -c "psql -U postgres -d ${dbname} -f ./spring_session_ddl.sql" &&\
echo "Tabela criada"