# https://pkgs.alpinelinux.org/packages
FROM alpine:latest

RUN apk add --no-cache bash

RUN apk add git

# add jq for creating json
RUN apk add jq

# add curl for pull requests via github api
RUN apk add curl

# add sed for whitespace trimming
RUN apk add sed

COPY entrypoint.sh /entrypoint.sh

RUN chmod 777 entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]