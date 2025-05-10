sedit 's:AM_ICONV::' configure.ac &&

autoreconf -fvi &&

OPTS+=" --enable-lib \
        --enable-util \
        --disable-static \
        --disable-example \
        --sbindir=/usr/bin"

default_build &&

if module_installed systemd; then
  rm -f /etc/init.d/fuse
fi
