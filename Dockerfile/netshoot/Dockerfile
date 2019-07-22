FROM nicolaka/netshoot

COPY repositories /etc/apk/repositories

RUN set -ex \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
    sysstat procps

