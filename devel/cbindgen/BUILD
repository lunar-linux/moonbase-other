cargo build --release &&

prepare_install &&

install -Dm755 target/release/cbindgen /usr/bin/ &&
install -Dt "/usr/share/doc/$MODULE" -m644 README.md
