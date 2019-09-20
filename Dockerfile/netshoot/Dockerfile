FROM nicolaka/netshoot

COPY repositories /etc/apk/repositories

COPY localtime /etc/localtime

RUN set -ex \
    && apk update \
    && apk upgrade

RUN apk add --no-cache \
    sysstat procps

RUN apk add --no-cache \
    perf git

