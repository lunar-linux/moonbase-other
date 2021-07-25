# create version files, so that autotools macros can use them:
# https://gitlab.com/sane-project/backends/-/issues/440
  echo "${VERSION}" > .tarball-version
  echo "${VERSION}" > .version

./autogen.sh &&

# circumvent overlinking in libraries
sed -e 's/ -shared / -Wl,-O1,--as-needed\0/g' -i libtool &&

OPTS+=" --with-lockdir=/run/lock/sane \
        --with-group=usb \
        --disable-rpath  \
        --enable-pthread"

add_priv_user scanner:scanner -d /var/lib/sane -s /usr/bin/false &&
default_build &&

# their build system hoses the udev part
cd tools &&
CFLAGS+=" -I, -I../include -I/include ../sanei/sanei_config.c ../sanei/sanei_constrain_value.c ../sanei/sanei_init_debug.c ../tools/sane-desc.c -o sane-desc" &&
make  &&

prepare_install &&

make install &&
install -D -m0644 udev/libsane.rules /usr/lib/udev/rules.d/49-sane.rules &&
install -D -m0644 hotplug/libsane.usermap /usr/lib/udev/libsane.usermap
