
if [ ! -f Cargo.toml ]; then
    echo "Cargo.toml undetected. Exit. Please get into the rust project root folder." >&2
    exit 1
fi

cat >.cargo/config <<A
[target.x86_64-apple-darwin]
linker = "x86_64-apple-darwin14-clang"
ar = "x86_64-apple-darwin14-ar"
A

PATH="$(pwd)/osxcross/target/bin:$PATH" \
cargo build --target x86_64-apple-darwin ${1:+"$@"}
