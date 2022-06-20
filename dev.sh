mkdir --parents data/storage
mkdir --parents data/schema-export
chmod -R 777 data

export LOCAL_USER="$(id -u $USER):$(id -g $GROUP)"

docker-compose \
    --file docker-compose.yaml \
    --file docker-compose-local.yaml \
    up \
    --build \
    --remove-orphans

docker-compose \
    --file docker-compose.yaml \
    --file docker-compose-local.yaml \
    run permissions-fixer