find -name Makefile.in -exec sed -i "s/-Werror//" {} \; &&

OPTS+=" --prefix=/usr \
        --with-python3  \
        --disable-static \
        --without-gtk-doc \
        --without-lvm_dbus \
        --without-mpath"

default_build
