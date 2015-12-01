mkdir -p /etc/bluetooth &&

if in_depends $MODULE systemd ; then
  OPTS+=" --enable-systemd --disable-udev"
else
  OPTS+=" --enable-udev --disable-systemd"
fi &&
OPTS+=" --enable-threads --enable-library --enable-tools" &&

default_build &&

install profiles/*/*.conf /etc/bluetooth/ &&
install src/main.conf /etc/bluetooth/ &&
install attrib/gatttool /usr/bin &&

# Just to make sure all the tools get installed
if [[ "$ENABLE_EXPER" == "y" ]]; then
  for files in `find tools/ -type f -perm -755` ; do
   filename=$(basename $files)
   install -Dm755 tools/$filename /usr/bin/$filename
  done
#  install tools/hex2hcd /usr/bin/ &&
#  install tools/btmgmt /usr/bin/ &&
#  install tools/bdaddr /usr/bin/
fi &&

# Needed by libpcap
install lib/mgmt.h /usr/include/bluetooth
