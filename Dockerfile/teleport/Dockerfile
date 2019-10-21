FROM debian

LABEL maintainer="wuhaishui <wuhaishui1234@gmail.com>"

ENV TELEPORT_VERSION 3.2.2

RUN apt-get update -y && apt-get install procps -y

COPY teleport-server-linux-x64-3.2.2 /tmp/teleport

RUN /bin/bash /tmp/teleport/setup.sh

RUN rm -rf /tmp/teleport

COPY config/web.ini /usr/local/teleport/data/etc
COPY config/core.ini /usr/local/teleport/data/etc
COPY startup /startup

RUN mkdir -p /teleport/log && touch /teleport/log/tpcore.log && touch /teleport/log/tpweb.log

RUN chmod +x startup/*.sh

EXPOSE 7190 52089 52189 52389

CMD [ "/startup/allstart.sh" ]
