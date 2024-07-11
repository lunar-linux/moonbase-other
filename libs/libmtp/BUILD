if module_installed systemd; then
  OPTS+=" --with-udev=/usr/lib/udev --with-udev-group=plugdev --with-udev-mode=0660"
fi &&

OPTS+=" --disable-static --disable-doxygen"

default_build
