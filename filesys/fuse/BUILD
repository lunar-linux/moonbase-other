OPTS+=" --enable-lib \
        --enable-util \
        --disable-static \
        --disable-example \
        --sbindir=/usr/bin" &&

default_build &&

if ! module_installed sysvinit; then
  rm -f /etc/init.d/fuse
fi
