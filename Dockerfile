FROM backplane/json-server:latest

RUN apk add --no-cache \
    inotify-tools

WORKDIR /
COPY /entrypoint.sh /

WORKDIR /work
ENTRYPOINT ["/entrypoint.sh"]
