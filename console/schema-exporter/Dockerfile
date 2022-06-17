FROM node:16

VOLUME /output
RUN npm install -g graphqurl

CMD gq $GRAPHQL_SCHEMA_HOST_AND_PORT/v1/graphql \
  -H "X-Hasura-Admin-Secret: $ADMIN_SECRET" --introspect > /output/schema.graphql