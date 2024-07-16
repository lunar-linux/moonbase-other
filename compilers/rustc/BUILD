export PYTHONDONTWRITEBYTECODE=1
export LIBSSH2_SYS_USE_PKG_CONFIG=1

./configure --build=$BUILD \
            --prefix=/usr \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc \
            --mandir=/usr/share/man \
            --disable-docs \
            --disable-debug \
            --enable-extended &&

cp $SCRIPT_DIRECTORY/config.toml . &&

CARGO_BUILD_JOBS="${MAKES:-1}"
python3 ./x.py build --jobs $CARGO_BUILD_JOBS &&
make ${MAKES:+-j$MAKES} &&

prepare_install &&

python ./x.py install -j $CARGO_BUILD_JOBS -v
