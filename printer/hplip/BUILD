export AUTOMAKE='automake --foreign' &&
autoreconf --force --install &&

# Fix build with python 3.8
export CFLAGS+=" $(python3-config --includes)" &&

if module_installed qt5; then
  OPTS+=" --enable-qt5"
fi &&

OPTS+=" --disable-qt4 \
        --disable-static \
        --enable-new-hpcups \
        --enable-cups-drv-install \
        --enable-cups-ppd-install \
        --disable-foomatic-ppd-install \
        --disable-foomatic-drv-install"

if module_installed systemd; then
  OPTS+=" --enable-udev_sysfs_rules"
fi

export CFLAGS+=" $(python3-config --includes)" # Fix build with python 3.8
default_build &&

# HAL is no more
rm -rf /usr/share/hal &&

if [ -f /etc/udev/rules.d/56-hpmud_sysfs.rules ]; then
   mv -f /etc/udev/rules.d/56-hpmud_sysfs.rules /usr/lib/udev/rules.d
fi
