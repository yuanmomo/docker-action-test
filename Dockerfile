FROM abiosoft/caddy:latest
LABEL maintainer yuanhongbin9090@gmail.com

ENV ACME_AGREE true

RUN apk --no-cache add bash

RUN mkdir -p /var/log/caddy/

EXPOSE 80


COPY Caddyfile /etc/Caddyfile

COPY  index.html /dist/

