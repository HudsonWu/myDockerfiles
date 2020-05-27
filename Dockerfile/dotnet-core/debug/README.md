# debug

+ [参考文档](https://devblogs.microsoft.com/dotnet/collecting-net-core-linux-container-cpu-traces-from-a-sidecar-container/)

```
docker build . --target application -f Dockerfile -t application
docker build . --target sidecar -f Dockerfile -t sidecar
```
