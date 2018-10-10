export OCAMLPATH="$(camlp5 -where)"&&

autoreconf &&

OPTS+=" --prefix=/usr  \
        --disable-static \
        --without-gnomeui \
        --without-gnomecanvas \
        --without-panel \
        --without-gtksourceview \
        --without-gtksourceview2" &&

default_config &&

make world &&
make opt &&

prepare_install &&
make install
