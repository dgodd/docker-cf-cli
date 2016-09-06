FROM alpine:latest

RUN   apk update \
 &&   apk add ca-certificates wget pwgen bash \
 &&   update-ca-certificates

RUN wget 'https://cli.run.pivotal.io/stable?release=linux64-binary&source=github' \
  && mv 'stable?release=linux64-binary&source=github' cf.tar.gz \
  && tar -xf cf.tar.gz -C /usr/local/bin/ \
  && rm cf.tar.gz

