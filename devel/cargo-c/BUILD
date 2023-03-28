export CFLAGS+=' -ffat-lto-objects'
    export RUSTUP_TOOLCHAIN='stable'
    export CARGO_TARGET_DIR="target"
    cargo build --release --frozen --all-features --manifest-path=Cargo.toml &&

#cargo build -r  --features=vendored-openssl &&

prepare_install &&

find target/release -maxdepth 1 -type f -executable -exec install -D -m755 -t /usr/bin {} +

#cargo install --path . --features=vendored-openssl
