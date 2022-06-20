FROM node:12

WORKDIR /src
RUN git clone https://github.com/hasura/graphql-engine.git
WORKDIR /src/graphql-engine

ARG VERSION
RUN git checkout ${VERSION}
WORKDIR /src/graphql-engine/console
RUN npm ci