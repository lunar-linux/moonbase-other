export PYTHONDONTWRITEBYTECODE=1
export LIBSSH2_SYS_USE_PKG_CONFIG=1
export LIBSQLITE3_SYS_USE_PKG_CONFIG=1
CARGO_BUILD_JOBS="${MAKES:-1}"

OPTS+=" --build=$BUILD \
        --prefix=/usr \
        --enable-extended \
        --enable-vendor \
        --sysconfdir=/etc \
        --docdir=/usr/share/doc \
        --mandir=/usr/share/man \
        --disable-docs \
        --disable-debug \
        --tools=cargo,clippy,rustdoc,rustfmt, \
        --release-channel=stable"

# A config.toml will get created and placed in the source dir
./configure $OPTS &&

python3 ./x.py build --jobs $CARGO_BUILD_JOBS &&

prepare_install &&
python3 ./x.py install -j $CARGO_BUILD_JOBS -v rustc std &&
python3 ./x.py install --stage=1 cargo clippy rustfmt
