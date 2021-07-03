make &&

pushd cli &&
cargo build --release --locked --all-features
popd &&

prepare_install &&

make PREFIX=/usr install &&

install -Dm 755 target/release/${MODULE} -t /usr/bin/
