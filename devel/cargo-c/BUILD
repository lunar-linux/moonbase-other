export CFLAGS+=' -ffat-lto-objects'
export RUSTUP_TOOLCHAIN='stable'
export CARGO_TARGET_DIR="target"
export LIBSSH2_SYS_USE_PKG_CONFIG=1
export LIBGIT2_SYS_USE_PKG_CONFIG=1

cargo build --release --all-features --manifest-path=Cargo.toml &&

prepare_install &&

cargo install --offline --no-track --path . --root /usr
