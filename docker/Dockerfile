FROM ubuntu:18.04

ENV HUB_VERSION 2.6.0

RUN apt-get update && \
    apt-get install -y git wget && \
    wget -O /tmp/hub-linux-amd64-$HUB_VERSION.tgz "https://github.com/github/hub/releases/download/v$HUB_VERSION/hub-linux-amd64-$HUB_VERSION.tgz" && \
    tar -C /tmp -zxf "/tmp/hub-linux-amd64-$HUB_VERSION.tgz" && \
    mv /tmp/hub-linux-amd64-$HUB_VERSION/bin/hub /usr/local/bin/ && \
    rm -rf /tmp/*