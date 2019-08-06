FROM alpine:3.10

COPY repositories /etc/apk/repositories

RUN apk upgrade --no-cache \
    && apk add --no-cache \
    musl \
    build-base \
    python3 \
    python3-dev \
    bash \
    && pip3 install --no-cache-dir --upgrade pip

RUN cd /usr/bin \
    && ln -sf python3 python \
    && ln -sf pip3 pip


COPY requirements.txt /tmp

COPY alpine_requirements.txt /tmp

RUN apk add --no-cache $(cat /tmp/alpine_requirements.txt)

RUN pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip3 install --no-cache -r /tmp/requirements.txt

RUN rm -rf /var/cache/* \
    && rm -rf /root/.cache/*

COPY jumpserver /opt/jumpserver
