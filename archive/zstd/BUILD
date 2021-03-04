make &&
make zstdmt &&
make -C contrib/pzstd &&

prepare_install &&

make PREFIX=/usr install &&
ln -f /usr/bin/zstd /usr/bin/zstdmt &&
install -Dm755 contrib/pzstd/pzstd /usr/bin/pzstd
