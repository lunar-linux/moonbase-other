./configure --build=$BUILD \
            --prefix=/usr \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc \
            --mandir=/usr/share/man \
            --disable-docs \
            --disable-debug \
            --disable-lld \
            --enable-extended &&

sedit 's:#download-ci-llvm = "if-available":download-ci-llvm = false:' config.toml &&

CARGO_BUILD_JOBS="${MAKES:-1}"
python3 ./x.py build --exclude miri --jobs $CARGO_BUILD_JOBS &&
make ${MAKES:+-j$MAKES} &&

prepare_install &&

python ./x.py install -v
