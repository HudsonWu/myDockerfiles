# 基础镜像, 根据需要选择dotnet core版本
#
## 使用aspnet
# FROM mcr.microsoft.com/dotnet/core/aspnet:2.1
# FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
## dotnet sdk
# FROM mcr.microsoft.com/dotnet/core/sdk:1.1-stretch
# FROM mcr.microsoft.com/dotnet/core/sdk:2.1
# FROM mcr.microsoft.com/dotnet/core/sdk:2.2

ARG DEBIAN_FRONTEND=noninteractive

# debian stretch
COPY sources.stretch.list /etc/apt/sources.list

RUN apt-get update -y && RUN apt-get -y install vim

# 解决Asp.Net Core 使用System.Drawing.Common部署到docker报错问题
# https://www.cnblogs.com/sunnytrudeau/p/9384620.html
RUN ln -s /lib/x86_64-linux-gnu/libdl-2.24.so /lib/x86_64-linux-gnu/libdl.so
RUN apt-get install libfontconfig1 -y
RUN apt-get install libgdiplus -y && ln -s libgdiplus.so gdiplus.dll

# wkhtmltopdf
COPY ./wkhtmltopdf/wkhtmltox_0.12.5-1.stretch_amd64.deb /tmp

RUN apt-get install -y fontconfig libfontenc1 libxfont1 x11-common xfonts-75dpi xfonts-base xfonts-encodings xfonts-utils

RUN dpkg -i /tmp/wkhtmltox_0.12.5-1.stretch_amd64.deb
RUN wkhtmltopdf -V

# Fonts
COPY ./fonts/msyhbd.ttc /usr/share/fonts
COPY ./fonts/msyhl.ttc /usr/share/fonts
COPY ./fonts/msyh.ttc /usr/share/fonts
COPY ./fonts/simsunb.ttf /usr/share/fonts
COPY ./fonts/simsun.ttc /usr/share/fonts
