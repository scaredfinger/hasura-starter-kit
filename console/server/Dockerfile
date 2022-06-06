FROM debian

RUN apt update \
    && apt install -y curl

RUN curl -L https://github.com/hasura/graphql-engine/raw/stable/cli/get.sh | bash
