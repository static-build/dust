#! /usr/bin/env bash

. "$HOME/.cargo/env"

apt install -y wget make cmake

rustup target add x86_64-apple-darwin

(
    git clone https://github.com/tpoechtrager/osxcross --depth=1
    cd osxcross
    wget -nc https://s3.dockerproject.org/darwin/v2/MacOSX10.10.sdk.tar.xz
    mkdir tarballs
    mv MacOSX10.10.sdk.tar.xz tarballs/
)
