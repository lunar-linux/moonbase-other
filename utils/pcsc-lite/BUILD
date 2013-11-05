OPTS+=" --enable-libudev \
--enable-ipcdir=/run/pcscd \
--enable-usbdropdir=/usr/lib/pcsc/drivers \
--with-systemdsystemunitdir=$(pkg-config systemd --variable=systemdsystemunitdir) \
--disable-maintainer-mode"

add_priv_user pcscd:pcscd -s /bin/false -d /run/pcscd &&
default_build &&
install -dm 0755 /usr/lib/pcsc/drivers &&
install -Dm 0644 $SCRIPT_DIRECTORY/99-pcscd-hotplug.rules /usr/lib/udev/rules.d/99-pcscd-hotplug.rules
