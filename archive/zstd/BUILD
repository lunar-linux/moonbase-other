make &&
make zstdmt &&
make -C contrib/pzstd &&

prepare_install &&

make PREFIX=/usr install &&
install -Dm755 zstdmt /usr/bin/zstdmt &&
install -Dm755 contrib/pzstd/pzstd /usr/bin/pzstd
