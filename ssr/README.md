# shadowsocksr

## 镜像构建命令

```
docker build -f Dockerfile -t hudsonwu/ssr .
docker build -f file_Dockerfile -t hudsonwu/ssr:file .
```

## 启动方式

```
# Server端
docker run --name ssr-server -p 46176:46176 -d hudsonwu/ssr

# Client端
docker run --name ssr-client -p 1080:1080 -e START=local.py -d hudsonwu/ssr
```

### 环境变量支持

开启容器时, 可以通过传递environment的方式更改启动参数

|环境变量|含义|取值|
|--------|----|----|
|SERVER_ADDR|服务器地址|...|
|SERVER_PORT|服务器端口号|...|
|PASSWORD|密码|...|
|METHOD|加密方式|...|
|PROTOCOL|协议|...|
|OBFS|混淆|...|
|START|启动类型|`server.py`, `local.py`|

## DEBIAN_FRONTEND=noninteractive

```
# ARG
ARG DEBIAN_FRONTEND=noninteractive

# ENV
ENV DEBIAN_FRONTEND noninteractive
...
ENV DEBIAN_FRONTEND teletype

# on-the-fly
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -qq install {your-package}
```

## References

+ <https://github.com/mritd/dockerfile>
+ <https://www.fingertc.com/archives/239/>
+ <https://hub.docker.com/r/teddysun/shadowsocks-r>
+ <https://hub.docker.com/r/breakwa11/shadowsocksr/>

