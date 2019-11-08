# FROM hudsonwu/dotnetsdk:2.2
# FROM mcr.microsoft.com/dotnet/core/sdk:2.1
# FROM mcr.microsoft.com/dotnet/core/sdk:2.2
FROM mcr.microsoft.com/dotnet/core/sdk:3.0

# 2.x
# COPY sources.stretch.list /etc/apt/sources.list

# 3.0
COPY sources.buster.list /etc/apt/sources.list

RUN apt-get update \
    && apt-get install -y \
       binutils \
       curl \
       htop \
       procps \
       liblttng-ust-dev \
       linux-tools \
       lttng-tools \
       lldb \
       zip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tools

COPY perfcollect /tools
COPY crossgen /tools

# perfcollect expects to find crossgen along side libcoreclr.so
RUN cp /tools/crossgen $(dirname `find /usr/share/dotnet/ -name libcoreclr.so`)

# ENTRYPOINT ["/bin/bash"]
