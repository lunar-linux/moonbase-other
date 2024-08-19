_install_openrc_initd(){
    install -Dm755 $SCRIPT_DIRECTORY/openrc/init.d/* /etc/init.d/
}

_install_openrc_confd(){
    install -Dm644 $SCRIPT_DIRECTORY/openrc/conf.d/* /etc/conf.d/
}

CONF_DIR='/etc'

prepare_install &&

make DESTDIR=$CONF_DIR install &&

_install_openrc_confd &&
_install_openrc_initd &&

install -d /etc/runlevels/sysinit &&
ln -sf /etc/init.d/udev /etc/runlevels/sysinit/udev &&
ln -sf /etc/init.d/udev-trigger /etc/runlevels/sysinit/udev-trigger
