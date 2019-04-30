# shadowsocksr

## 启动

```
docker run -d --name ssr -p 46176:46176 hudsonwu/ssr -p 46176 -k password -m chacha20-ietf -O auth_aes128_md5 -o tls1.2_ticket_fastauth start
```
