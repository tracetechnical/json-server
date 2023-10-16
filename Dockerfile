FROM backplane/json-server:latest

RUN apk add --no-cache \
    inotify-tools

WORKDIR /
COPY /entrypoint.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]

WORKDIR /work
ENTRYPOINT ["/entrypoint.sh"]
