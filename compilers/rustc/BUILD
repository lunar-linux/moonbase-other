sed '/MirOpt/d' -i src/bootstrap/src/core/builder.rs &&
sed 's/!path.ends_with("cargo")/true/' -i src/bootstrap/src/core/build_steps/tool.rs &&
sed 's/^.*build_wasm.*$/#[allow(unreachable_code)]&return false;/' -i src/bootstrap/src/lib.rs &&

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
# This value changes per version updates from the last ChangeInfo 
# change_id entry in; src/bootstrap/src/utils/change_tracker.rs
sedit '1i change-id = 129295' config.toml &&

python3 ./x.py build --jobs $CARGO_BUILD_JOBS &&

prepare_install &&
python3 ./x.py install -j $CARGO_BUILD_JOBS -v rustc std &&
python3 ./x.py install --stage=1 cargo clippy rustfmt
