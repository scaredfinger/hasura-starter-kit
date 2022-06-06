mkdir --parents data
chmod 750 data 

docker-compose \
    --file docker-compose.yaml \
    --file docker-compose-local.yaml \
    up \
    --build \
    --remove-orphans