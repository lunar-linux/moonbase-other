OPTS+=" --disable-qt3 \
        --disable-static \
        --enable-new-hpcups \
        --enable-cups-drv-install \
        --enable-cups-ppd-install \
        --enable-hpijs-install   \
        --disable-foomatic-ppd-install \
        --disable-foomatic-drv-install" &&

if module_installed systemd; then
  OPTS+=" --enable-udev_sysfs_rules"
fi &&

default_build &&

# HAL is no more
rm -rf /usr/share/hal &&

# It should live there
mv -f /etc/udev/rules.d/56-hpmud_sysfs.rules /usr/lib/udev/rules.d
