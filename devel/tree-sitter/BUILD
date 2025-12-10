make &&

pushd crates/cli &&
cargo build --release --locked --all-features
popd &&

prepare_install &&

make PREFIX=/usr install &&
install -Dvm 0755 target/release/tree-sitter /usr/bin/ &&

rm /usr/lib/libtree-sitter.a
