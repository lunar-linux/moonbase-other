mkdir -p /etc/bluetooth &&

if module_installed systemd; then
  OPTS+=" --enable-systemd --disable-udev"
else
  OPTS+=" --enable-udev --disable-systemd"
fi &&

OPTS+=" --enable-threads --enable-library --enable-tools" &&
OPTS+=" --libexecdir=/usr/bin" &&

default_build &&

install profiles/*/*.conf /etc/bluetooth/ &&
install src/main.conf /etc/bluetooth/ &&

# it does not exist for version 5.44
#install attrib/gatttool /usr/bin &&

if [[ "$ENABLE_EXPER" == "y" ]]; then
  install tools/hex2hcd /usr/bin/ &&
  install tools/btmgmt  /usr/bin/ &&
  install tools/bdaddr  /usr/bin/
fi &&

# Needed by libpcap
install lib/mgmt.h /usr/include/bluetooth &&

install -Dm644 $SCRIPT_DIRECTORY/bluetooth.modprobe /usr/lib/modprobe.d/bluetooth-usb.conf
