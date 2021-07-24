#! /usr/bin/env bash

codedir=$(pwd)/code
image="multi:rust"

# docker run -it --rm -v "$codedir:/workdir" \
#     -e CROSS_TRIPLE=x86_64-apple-darwin \
#     "$image" \
#     bash

    # /root/.cargo/bin/cargo build --target x86_64-apple-darwin


docker run -it --rm -v "$codedir:/workdir" \
    --workdir /workdir \
    "multi:rust-darwin" \
    bash
    # /root/.cargo/bin/cargo build --target x86_64-apple-darwin

