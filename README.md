Omnidata Starter

## Geting Started

1. Create a `.env` file

```
ADMIN_SECRET=admin
DATA=./data
VERSION=v2.6.2
IMAGE=hasura/graphql-engine:${VERSION}.cli-migrations-v3.debian

PORT_GRAPHQL_ENGINE=48080
PORT_CONSOLE=48081
PORT_CONSOLE_API=48082
```

2. Run

```
./run.sh
```

3. Enjoy

## Pitfalls

Make sure `src` folder does not exist the first time you plan to execute. The project
initializer needs to create it from scratch.