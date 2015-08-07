mkdir -p /etc/bluetooth &&

if in_depends $MODULE systemd ; then
  OPTS+=" --enable-systemd --disable-udev --enable-threads --enable-library --enable-tools"
else
  OPTS+=" --enable-udev --disable-systemd --enable-threads --enable-library --enable-tools"
fi &&

sedit "s:_SERVICE:_SERVICE CAP_NET_RAW:" src/bluetooth.service.in &&
default_build &&

install profiles/*/*.conf /etc/bluetooth/ &&
install src/main.conf /etc/bluetooth/ &&
install attrib/gatttool /usr/bin &&

if [[ "$ENABLE_EXPER" == "y" ]]; then
  install tools/hex2hcd /usr/bin/ &&
  install tools/btmgmt /usr/bin/ &&
  install tools/bdaddr /usr/bin/
fi &&

# Needed by libpcap
install lib/mgmt.h /usr/include/bluetooth
