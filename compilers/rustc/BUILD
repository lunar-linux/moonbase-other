OPTS+=" --enable-local-rebuild --local-rust-root=$SOURCE_DIRECTORY/install" &&
default_build &&
./x.py dist --install -v &&

# cargo fails to build over here with libressl, so install the pre-built version
# that should not go in /usr/etc
sedit '/bash_completions/ d' ./standalone/cargo/manifest.in &&
./standalone/install.sh --prefix=/usr --components=cargo &&
install -Dm0644 standalone/cargo/etc/bash_completions.d/cargo /etc/bash_completion.d/
