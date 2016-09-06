FROM alpine:latest

RUN   apk update \
 &&   apk add ca-certificates pwgen bash curl \
 &&   update-ca-certificates

RUN curl -L 'https://cli.run.pivotal.io/stable?release=linux64-binary&source=github' | tar -zx -C /usr/local/bin/

