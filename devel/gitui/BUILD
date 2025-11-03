CFLAGS+=' -ffat-lto-objects'
export LIBGIT2_NO_VENDOR=1
export LIBSSH2_SYS_USE_PKG_CONFIG=1
export OPENSSL_NO_VENDOR=true

cargo fetch --locked --target "$(rustc -vV | sed -n 's/host: //p')" &&

CFLAGS+=" -ffat-lto-objects" &&
cargo build --frozen --release &&

prepare_install &&
install -Dm 755 target/release/gitui -t /usr/bin/ &&
install -Dm 644 {KEY_CONFIG,README,THEMES}.md -t /usr/share/doc/gitui
