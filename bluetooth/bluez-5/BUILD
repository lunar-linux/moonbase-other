mkdir -p /etc/bluetooth &&

if module_installed systemd; then
  OPTS+=" --enable-systemd"
else
  OPTS+=" --disable-systemd"
fi

OPTS+=" --enable-tools \
        --enable-library \
        --enable-threads \
        --enable-sixaxis"

default_build &&

mkdir -p /etc/bluetooth &&
install -Dm644 profiles/*/*.conf /etc/bluetooth/ &&
install -Dm644 src/main.conf /etc/bluetooth/ &&

# it does not exist for version 5.44
#install attrib/gatttool /usr/bin &&

if [[ "$ENABLE_EXPER" == "y" ]]; then
  install tools/hex2hcd /usr/bin/ &&
  install tools/btmgmt  /usr/bin/ &&
  install tools/bdaddr  /usr/bin/
fi &&

# Needed by libpcap
install lib/mgmt.h /usr/include/bluetooth &&

mkdir -p /usr/lib/modules-load.d &&
install -Dm644 $SCRIPT_DIRECTORY/bluez.conf /usr/lib/modules-load.d/ &&
install -Dm644 $SCRIPT_DIRECTORY/bluetooth-usb.conf /usr/lib/modprobe.d/
