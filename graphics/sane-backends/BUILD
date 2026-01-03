# Sed out git references.
sed \
-e "s/m4_esyscmd_s(\[git describe --dirty\])/${PV}/" \
-e '/^AM_MAINTAINER_MODE/d' \
-i configure.ac &&

# This leaks into pkgconf files
sed 's|@LDFLAGS@ ||' -i tools/*.pc.in

# create version files, so that autotools macros can use them:
# https://gitlab.com/sane-project/backends/-/issues/440
  echo "${VERSION}" > .tarball-version
  echo "${VERSION}" > .version

./autogen.sh &&


OPTS+=" --with-lockdir=/run/lock/sane \
        --sbindir=/usr/bin \
        --disable-rpath  \
        --enable-pthread \
        --with-poppler-glib \
        --with-usb \
        --with-libcurl \
        --with-pic"

add_priv_user scanner:scanner -d /var/lib/sane -s /usr/bin/false &&
default_config &&

# circumvent overlinking in libraries
sed -e 's/ -shared / -Wl,-O1,--as-needed\0/g' -i libtool &&
default_make &&

# their build system hoses the udev part
cd tools &&
CFLAGS+=" -I, -I../include -I/include ../sanei/sanei_config.c ../sanei/sanei_constrain_value.c ../sanei/sanei_init_debug.c ../tools/sane-desc.c -o sane-desc" &&
make  &&

prepare_install &&

make install &&
install -D -m0644 udev/libsane.rules /usr/lib/udev/rules.d/49-sane.rules &&
install -D -m0644 hotplug/libsane.usermap /usr/lib/udev/libsane.usermap &&
install $SCRIPT_DIRECTORY/66-saned.rules /usr/lib/udev/rules.d &&
install $SCRIPT_DIRECTORY/sane.sysusers /usr/lib/sysusers.d/sane-backends.conf &&

chmod -x /usr/lib/udev/rules.d/66-saned.rules &&

cd ../ &&
# generate udev udev+hwdb
./tools/sane-desc -m udev+hwdb -s doc/descriptions/ > /usr/lib/udev/rules.d/65-$MODULE.rules &&
./tools/sane-desc -m udev+hwdb -s doc/descriptions-external/ >> /usr/lib/udev/rules.d/65-$MODULE.rules &&

# generate udev hwdb
./tools/sane-desc -m hwdb -s doc/descriptions/ > /usr/lib/udev/hwdb.d/20-$MODULE.hwdb &&
# NOTE: an empty new line is required between the two .desc collections
printf "\n" >> /usr/lib/udev/hwdb.d/20-$MODULE.hwdb &&
./tools/sane-desc -m hwdb -s doc/descriptions-external/ >> /usr/lib/udev/hwdb.d/20-$MODULE.hwdb

