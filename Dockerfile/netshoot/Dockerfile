FROM nicolaka/netshoot

COPY repositories /etc/apk/repositories

RUN set -ex \
    && apk update \
    && apk upgrade

RUN apk add --no-cache \
    sysstat procps screen \
    perf

