FROM centos:7

RUN yum update -y \
    && yum install epel-release -y \
    && yum install https://centos7.iuscommunity.org/ius-release.rpm -y

RUN yum install -y python36u python36u-libs python36u-devel python36u-pip \
    && ln -sf /bin/python3.6 /bin/python3 \
    && ln -sf /bin/pip3.6 /bin/pip3

RUN yum install -y \
    libtiff-devel libjpeg-devel libzip-devel \
    freetype-devel lcms2-devel libwebp-devel \
    tcl-devel tk-devel sshpass openldap-devel \
    libffi-devel openssh-clients \
    telnet openldap-clients mariadb-devel

RUN yum groupinstall "Development Tools" -y

COPY requirements.txt /tmp

RUN python3 -m pip install --upgrade pip \
    && python3 -m pip install --no-cache -r /tmp/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

RUN cd /opt && python3 -m venv --system-site-packages hello

COPY jumpserver /opt/jumpserver

COPY start.sh /opt

RUN yum -y groupinstall "Fonts" \
    && yum -y groupinstall "Input Methods"
COPY i18n /etc/sysconfig

WORKDIR /opt/jumpserver
