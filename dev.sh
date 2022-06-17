mkdir --parents data/storage
chmod -R 777 data/storage

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