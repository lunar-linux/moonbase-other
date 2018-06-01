OPTS+=" --with-initdir=/etc/init.d \
        --disable-xmltoman \
        --disable-subversion"

default_build &&

install -m0750 $SCRIPT_DIRECTORY/ifplugd-lunar.action /etc/ifplugd/ &&
install -m0755 $SCRIPT_DIRECTORY/ifplugd-daemon /usr/bin/ifplugd-daemon &&

if module_installed systemd; then
  install -m0644 $SCRIPT_DIRECTORY/systemd.d/ifplugd@.service /usr/lib/systemd/system/ifplugd@.service
fi
