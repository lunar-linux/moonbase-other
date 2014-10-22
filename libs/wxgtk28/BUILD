OPTS+=" --with-gtk=2 \
        --enable-shared \
        --disable-optimize \
        --with-regex=builtin \
        --disable-precomp-headers"

default_config &&
make &&
make -C locale allmo &&
make -C contrib/src &&
prepare_install &&
make install &&
make -C contrib/src install
