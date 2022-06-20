docker-compose \
    --file docker-compose.yaml \
    --file docker-compose-local.yaml \
    down \
    --remove-orphans

rm -rf data