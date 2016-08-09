if module_installed systemd; then
  UDEV_DIR=/usr/lib/udev/rules.d
  OPTS+=" --with-udev-rules-dir=$UDEV_DIR"
else
  UDEV_DIR=/lib/udev/rules.d
fi &&

OPTS+=" --exec-prefix=/usr --sbindir=/usr/sbin" &&

default_build &&

install -m0644 $SCRIPT_DIRECTORY/40-alsa-mixer.rules ${UDEV_DIR}/
