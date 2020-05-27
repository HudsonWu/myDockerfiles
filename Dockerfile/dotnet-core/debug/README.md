# debug

+ [参考文档](https://devblogs.microsoft.com/dotnet/collecting-net-core-linux-container-cpu-traces-from-a-sidecar-container/)

```
# 构建镜像
docker build . --target application -f Dockerfile -t application
docker build . --target sidecar -f Dockerfile -t sidecar

# 抓取
./perfcollect collect sample -nolttng -pid 1
# 查看
./perfcollect view sample.trace.zip
```
