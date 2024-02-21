cargo fetch &&
CFLAGS+=" -ffat-lto-objects" &&
cargo build --release &&

prepare_install &&
install -Dm 755 target/release/gitui -t /usr/bin/ &&
install -Dm 644 {KEY_CONFIG,README,THEMES}.md -t /usr/share/doc/gitui
