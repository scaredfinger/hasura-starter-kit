mkdir --parents data/storage
mkdir --parents data/schema-export
chmod -R 777 data/storage

export LOCAL_USER="$(id -u $USER):$(id -g $GROUP)"

docker-compose \
    --file docker-compose.yaml \
    --file docker-compose-local.yaml \
    run schema-exporter

docker-compose \
    --file docker-compose.yaml \
    --file docker-compose-local.yaml \
    run permissions-fixer