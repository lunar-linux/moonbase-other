UDEV_DIR=/usr/lib/udev/rules.d
if module_installed systemd; then
  OPTS+=" --with-udev-rules-dir=$UDEV_DIR \
          --with-systemdsystemunitdir=/usr/lib/systemd/system"
fi

OPTS+=" --exec-prefix=/usr \
        --disable-alsaconf"

default_build &&

install -m0644 $SCRIPT_DIRECTORY/40-alsa-mixer.rules ${UDEV_DIR}/
