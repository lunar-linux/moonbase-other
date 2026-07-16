export RUSTUP_TOOLCHAIN=stable
cargo fetch --locked --target host-tuple &&

RUSTFLAGS="-C panic=abort" cargo build --frozen --release --features=capi

prepare_install &&

./install.sh --prefix=/usr --lib=/usr/lib
