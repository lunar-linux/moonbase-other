export RUST_BACKTRACE=full
export LDFLAGS+=' -lgit2'
export CARGO_PROFILE_RELEASE_BUILD_OVERRIDE_DEBUG=true 

cargo fetch &&
cargo build --release --frozen --locked &&
#cargo cbuild --release &&

prepare_install &&
cargo install --offline --no-track --path . --root /usr
#cargo cinstall --release --frozen --prefix /usr
