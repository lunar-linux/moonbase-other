./configure --build=$BUILD \
            --prefix=/usr \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc \
            --mandir=/usr/share/man \
            --enable-local-rebuild \
            --local-rust-root=$SOURCE_DIRECTORY/install \
            &&

make ${MAKES:+-j$MAKES} &&

prepare_install &&

./x.py install -v &&

# cargo fails to build over here with libressl, so install the pre-built version
# that should not go in /usr/etc
sedit '/bash_completion/ d' ./standalone/cargo/manifest.in &&
./standalone/install.sh --prefix=/usr --components=cargo &&
install -Dm0644 standalone/cargo/etc/bash_completion.d/cargo /etc/bash_completion.d/
