find -name Makefile.in -exec sed -i "s/-Werror//" {} \; &&

OPTS+=" --prefix=/usr \
        --with-python3  \
        --disable-static \
        --without-gtk-doc \
        --without-lvm_dbus \
        --without-mpath"

default_config &&

# prevent libtool from overlinking everything
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make
