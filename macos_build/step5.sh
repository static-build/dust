
cat >.cargo/config <<A
[target.x86_64-apple-darwin]
linker = "x86_64-apple-darwin14-clang"
ar = "x86_64-apple-darwin14-ar"
A

PATH="$(pwd)/osxcross/target/bin:$PATH"
