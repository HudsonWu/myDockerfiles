# shadowsocksr

## 镜像构建命令

```
docker build -f Dockerfile -t hudson/ssr .
```

## 启动方式

```
# Server端
docker run --name ssr-server -p 46176:46176 -d hudsonwu/ssr

# Client端
docker run --name ssr-client -p 1080:1080 -e CMD=/shadowsocksr/shadowsocks/local.py -d hudsonwu/ssr
```

### 自定义参数

开启容器时, 可以通过传递environment的方式更改启动参数
```
SERVER_ADDR    # 服务器地址
SERVER_PORT    # 服务器端口号
PASSWORD       # 密码
METHOD         # 加密方式
PROTOCOL       # 协议
OBFS           # 混淆
CMD    # 启动local.py或者server.py
```

## References

+ <https://github.com/mritd/dockerfile>
+ <https://www.fingertc.com/archives/239/>
+ <https://hub.docker.com/r/teddysun/shadowsocks-r>
+ <https://hub.docker.com/r/breakwa11/shadowsocksr/>

