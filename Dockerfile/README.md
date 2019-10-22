# Dockerfile

构建docker镜像时, Dockerfile文件示例, 随时取用

### 非交互模式

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

### sudo权限

```
RUN apt-get update \
  && apt-get install -y sudo \
  && rm -rf /var/lib/apt/lists/*

# 给予用户sudo权限
RUN echo "username ALL=NOPASSWD: ALL" >> /etc/sudoers
```

## References

+ <https://github.com/mritd/dockerfile>
+ <https://www.fingertc.com/archives/239/>
+ <https://hub.docker.com/r/teddysun/shadowsocks-r>
+ <https://hub.docker.com/r/breakwa11/shadowsocksr/>

