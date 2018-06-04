FROM alpine:latest

RUN apk --no-cache add openssl curl git && \
    git clone https://github.com/Neilpang/acme.sh && \
    apk --no-cahe del git

VOLUME ["/acme.sh/.acme.sh"]
ENTRYPOINT ["/acme.sh/acme.sh", "--home", "/acme.sh/.acme.sh"]
