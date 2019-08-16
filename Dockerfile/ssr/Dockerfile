FROM alpine:3.10

LABEL maintainer="hudson <wuhaishui2013@126.com>"

COPY repositories /etc/apk/repositories

RUN apk update

RUN apk add --no-cache python python-dev \
    gcc musl-dev libffi-dev libressl-dev \
    git bash libsodium-dev

RUN apk add py-m2crypto --repository http://nl.alpinelinux.org/alpine/edge/testing/

ENV SERVER_ADDR=0.0.0.0 \
    SERVER_PORT=8087 \
    PASSWORD=HelloWorld \
    METHOD=chacha20-ietf \
    PROTOCOL=auth_aes128_md5 \
    OBFS=tls1.2_ticket_fastauth \
    START=/shadowsocksr/shadowsocks/server.py

# 获取shadowsocksr源代码
RUN cd / && git clone https://github.com/HudsonWu/shadowsocksr.git -b hudson

WORKDIR /shadowsocksr/shadowsocks

ENTRYPOINT ["/bin/sh", "-c", "$START -s ${SERVER_ADDR} -p ${SERVER_PORT} -k ${PASSWORD} -m ${METHOD} -O ${PROTOCOL} -o ${OBFS}"]
