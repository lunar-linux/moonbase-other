export OCAMLPATH="$(camlp5 -where)"&&

autoreconf -fi &&

OPTS+=" --prefix=/usr  \
        --disable-static \
        --disable-gtktest \
        --without-gl \
        --with-threads=system \
        --without-gnomeui \
        --without-gnomecanvas \
        --without-panel \
        --without-gtksourceview \
        --without-gtksourceview2" &&

default_config &&

make world &&
make opt CFLAGS="${CFLAGS}" &&

prepare_install &&
make install
