#! /usr/bin/env bash

apt update

# https://dev.to/setevoy/docker-configure-tzdata-and-timezone-during-build-20bk
TZ=Asia/Shanghai
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

apt install -y \
    clang \
    gcc \
    g++ \
    zlib1g-dev \
    libmpc-dev \
    libmpfr-dev \
    libgmp-dev \
    libxml2-dev \
    libssl-dev \
    curl \
    git