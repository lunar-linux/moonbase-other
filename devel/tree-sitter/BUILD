make &&

pushd cli &&
cargo build --release --locked --all-features
popd &&

prepare_install &&

make PREFIX=/usr install &&

rm /usr/lib/libtree-sitter.a
