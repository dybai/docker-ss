FROM ubuntu:18.04

MAINTAINER bdy1234567@126.com

# docker build -t ss:1.0 .
# docker run -p host_port:container_port -d ss:1.0

# Install dependent packages.
RUN apt-get update
RUN apt-get install -y apt-utils vim curl net-tools iputils-ping ssh git make zip unattended-upgrades
RUN unattended-upgrade -d

RUN apt-get install -y python-pip
RUN pip install setuptools
RUN pip install git+https://github.com/shadowsocks/shadowsocks.git@master

COPY config.json /etc/shadowsocks/config.json
COPY start_ssserver.sh /root/start_ssserver.sh

CMD /bin/bash -c /root/start_ssserver.sh
