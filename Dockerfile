# shadowsocks
#
# VERSION 0.0.3

FROM ubuntu:16.04
MAINTAINER Zhen Kyle <zhenkyle@gmail.com>

RUN apt-get update && \
    apt-get install -y git python-pip libsodium18
RUN pip install -e git+https://github.com/shadowsocks/shadowsocks.git@master#egg=shadowsocks

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/sslocal"]
