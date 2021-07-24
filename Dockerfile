FROM multiarch/crossbuild

# RUN git clone https://github.com/bit-spark/objective-c-hello-world
# ENV CROSS_TRIPLE=x86_64-apple-darwin

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > install_rust.sh
RUN bash install_rust.sh -y

ADD init-rust.sh /root/dev/init-rust.sh
RUN bash /root/dev/init-rust.sh

ENV PATH="$HOME/.cargo/bin:$PATH"


