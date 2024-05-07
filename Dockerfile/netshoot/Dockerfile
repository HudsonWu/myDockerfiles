FROM nicolaka/netshoot

# COPY repositories /etc/apk/repositories
# COPY localtime /etc/localtime

RUN set -ex \
    && apk update \
    && apk add --no-cache sysstat \
    procps perf git gdb ca-certificates wget \
    musl musl-utils musl-locales tzdata

# RUN echo 'export LC_ALL=zh_CN.UTF-8' >> /etc/profile.d/locale.sh && \
#   sed -i 's|LANG=C.UTF-8|LANG=zh_CN.UTF-8|' /etc/profile.d/locale.sh

ENV TZ=Asia/Shanghai \
    LANG=zh_CN.UTF-8 \
    LC_ALL=zh_CN.UTF-8

