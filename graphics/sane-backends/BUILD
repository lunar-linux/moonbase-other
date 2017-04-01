OPTS+=" --with-docdir=/usr/share/doc/$MODULE \
        --with-lockdir=/run/lock/sane \
        --with-group=usb \
        --disable-rpath  \
        --enable-pthread" &&

default_build &&

# their build system hoses the udev part
cd tools &&
CFLAGS+=" -I, -I../include -I/include ../sanei/sanei_config.c ../sanei/sanei_constrain_value.c ../sanei/sanei_init_debug.c ../tools/sane-desc.c -o sane-desc" &&
make  &&

prepare_install &&

make install &&
install -D -m0644 udev/libsane.rules /usr/lib/udev/rules.d/49-sane.rules &&
install -D -m0644 hotplug/libsane.usermap /usr/lib/udev/libsane.usermap
