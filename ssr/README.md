# shadowsocksr

+ <https://github.com/mritd/dockerfile>
+ <https://www.fingertc.com/archives/239/>
+ <https://hub.docker.com/r/teddysun/shadowsocks-r>
+ <https://hub.docker.com/r/breakwa11/shadowsocksr/>

## 启动

```
docker run -d --name ssr -p 46176:46176 hudsonwu/ssr -p 46176 -k password -m chacha20-ietf -O auth_aes128_md5 -o tls1.2_ticket_fastauth start
```

