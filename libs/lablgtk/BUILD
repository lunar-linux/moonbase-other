autoupdate -f &&
export OCAMLPATH="$(camlp5 -where)"&&
export GTKCFLAGS+=" -fcommon"
#autoreconf -fi &&

OPTS+=" --prefix=/usr  \
        --disable-gtktest \
        --without-gl \
        --with-threads=system \
        --without-gnomeui \
        --without-gnomecanvas \
        --without-panel \
        --without-glade \
        --without-gtkspell \
        --without-gtksourceview \
        --without-gtksourceview2" &&

sed -e "s|-O|$CFLAGS|" \
    -e "s|-shared|& -ccopt \"$LDFLAGS\"|" \
    -e "s|(CAMLMKLIB)|& -ldopt \"$LDFLAGS\"|" \
    -i src/Makefile &&

default_config &&

make world &&
make opt CFLAGS="${CFLAGS}" &&

prepare_install &&
make install
