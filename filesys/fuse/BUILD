sedit 's:AM_ICONV::' configure.ac &&

autoreconf -fvi &&

OPTS+=" --enable-lib \
        --enable-util \
        --disable-static \
        --disable-example \
        --sbindir=/usr/bin"

export UDEV_RULES_PATH=/usr/lib/udev/rules.d
export MOUNT_FUSE_PATH=/usr/bin 

default_build  &&

if module_installed systemd; then
  rm -f /etc/init.d/fuse
fi
