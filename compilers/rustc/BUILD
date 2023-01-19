export RUSTFLAGS="$RUSTFLAGS -C link-args=-lffi" &&
export RUST_BACKTRACE=full &&

./configure --build=$BUILD \
            --prefix=/usr \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc \
            --mandir=/usr/share/man &&

if in_depends $MODULE lld; then
  sedit 's:#link-shared = false:link-shared = true:' config.toml &&
  sedit '683i llvm-config = "/usr/bin/llvm-config"'
fi &&

sedit 's:#extended = false:extended = true:' config.toml &&

sedit 's:#codegen-tests = true:codegen-tests = false:' config.toml &&

sedit '416i codegen-units-std = 1' config.toml &&

# disable docs because it broke the build
sedit 's|#docs = true|docs = false|' config.toml &&

CARGO_BUILD_JOBS="${MAKES}"
python3 ./x.py build --exclude miri --jobs ${MAKES} &&
make ${MAKES:+-j$MAKES} &&

prepare_install &&

python ./x.py install -v
