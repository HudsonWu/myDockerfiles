FROM nicolaka/netshoot

RUN set -ex \
    && echo "http://mirrors.aliyun.com/alpine/v3.9/main/" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.9/community/" >> /etc/apk/repositories \
    && echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && echo "http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
    sysstat

