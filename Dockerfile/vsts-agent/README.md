# vsts-agent

+ [docker镜像来源](https://github.com/Lambda3/docker-azure-pipelines-agent)

因为网络原因, vsts-agent无法自动更新, 需要手动下载agent重新构建镜像

```
# 下载vsts-agent
vsts-agent-linux-x64-2.159.2.tar.gz

# 构建镜像
docker build -t hudsonwu/vsts-agent .
```
