autoreconf -fi &&

mkdir -p /etc/bluetooth &&

if module_installed systemd; then
  OPTS+=" --enable-systemd"
else
  OPTS+=" --disable-systemd"
fi

#--enable-library: This switch enables building the BlueZ 4 compatibility library which is required by some applications
OPTS+=" --enable-mesh \
        --enable-tools \
        --enable-threads \
        --enable-library \
        --enable-hid2hci \
        --enable-sixaxis \
        --disable-manpages"

default_build &&

mkdir -p /etc/bluetooth &&
# bluetooth.service wants ConfigurationDirectoryMode=0555
chmod -v 555 /etc/bluetooth &&

install -Dm644 profiles/*/*.conf /etc/bluetooth/ &&
install -Dm644 src/main.conf /etc/bluetooth/ &&

# it does not exist for version 5.44
#install attrib/gatttool /usr/bin &&

if [[ "$ENABLE_EXPER" == "y" ]]; then
  install tools/hex2hcd /usr/bin/ &&
  install tools/btmgmt  /usr/bin/ &&
  install tools/bdaddr  /usr/bin/
fi &&

#bluez systemd service fails without localstatedir present
mkdir -p /var/lib/bluetooth

mkdir -p /usr/lib/modules-load.d &&
install -Dm644 $SCRIPT_DIRECTORY/bluez.conf /usr/lib/modules-load.d/ &&
install -Dm644 $SCRIPT_DIRECTORY/bluetooth-usb.conf /usr/lib/modprobe.d/
