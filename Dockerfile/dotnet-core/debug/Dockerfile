FROM hudsonwu/dotnetsdk:2.2

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

ENTRYPOINT ["/bin/bash"]
