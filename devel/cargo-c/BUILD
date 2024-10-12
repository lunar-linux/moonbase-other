cp $SOURCE_CACHE/Cargo.lock $SOURCE_DIRECTORY &&

export CFLAGS+=' -ffat-lto-objects'
export RUSTUP_TOOLCHAIN='stable'
export CARGO_TARGET_DIR="target"
export LIBSSH2_SYS_USE_PKG_CONFIG=1
export LIBGIT2_SYS_USE_PKG_CONFIG=1


#ln -sf "../Cargo.lock Cargo.lock &&
cargo fetch --locked --target "$(rustc -vV | sed -n 's/host: //p')" --manifest-path=Cargo.toml &&
cargo build --release --frozen --manifest-path=Cargo.toml &&

prepare_install
find "target/release" -maxdepth 1 -type f -executable -exec install -D -m755 -t "/usr/bin" {} +
