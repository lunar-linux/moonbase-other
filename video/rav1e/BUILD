export LDFLAGS+=' -lgit2'

cargo build --release --frozen --manifest-path Cargo.toml &&
cargo cbuild --release --frozen --prefix=/usr --manifest-path Cargo.toml &&

prepare_install &&
cargo install --frozen --offline --no-track --path . --root /usr &&
cargo cinstall --release --frozen --prefix /usr
