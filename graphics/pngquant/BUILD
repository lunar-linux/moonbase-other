sed -i 's|, path = "lib/imagequant-sys"||' Cargo.toml &&
cargo fetch --target "$CARCH-unknown-linux-gnu" &&

export RUSTUP_TOOLCHAIN=stable
export CARGO_TARGET_DIR=target
cargo build --release &&

prepare_install &&
install -Dm755 target/release/pngquant /usr/bin/pngquant
