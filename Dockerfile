FROM backplane/json-server:latest

RUN apk add --no-cache \
    inotify-tools

WORKDIR /work
ENTRYPOINT ["/entrypoint.sh"]