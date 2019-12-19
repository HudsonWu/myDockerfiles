# FROM hudsonwu/dotnetsdk:2.2
# FROM mcr.microsoft.com/dotnet/core/sdk:2.1
# FROM mcr.microsoft.com/dotnet/core/sdk:2.2
# FROM mcr.microsoft.com/dotnet/core/sdk:3.0
# FROM mcr.microsoft.com/dotnet/core/sdk:3.1
FROM registry-vpc.cn-shenzhen.aliyuncs.com/mytools/dotnetsdk:3.0

# 2.x
# COPY sources.stretch.list /etc/apt/sources.list

# 3.x
COPY sources.buster.list /etc/apt/sources.list

# 2.x: linux-tools, 3.x: linux-perf
RUN apt-get update \
    && apt-get install -y \
       binutils \
       curl \
       htop \
       procps \
       liblttng-ust-dev \
       linux-perf \
       lttng-tools \
       lldb \
       zip \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="$PATH:/root/.dotnet/tools"
RUN dotnet tool install --global dotnet-trace

WORKDIR /tools

COPY perfcollect /tools
COPY crossgen /tools

# perfcollect expects to find crossgen along side libcoreclr.so
RUN cp /tools/crossgen $(dirname `find /usr/share/dotnet/ -name libcoreclr.so`)

