OPTS+=" --prefix=/usr \
        --with-drivedbdir \
        --with-libcap-ng=yes \
        --with-initscriptdir=/etc/init.d \
        --with-smartdscriptdir=/usr/share/smartmontools \
        --with-smartdplugindir=/usr/share/smartmontools/smartd_warning.d"

if module_installed systemd; then
   OPTS+=" --with-libsystemd \
           --with-systemdsystemunitdir=/usr/lib/systemd/system"
fi

default_build &&

if module_installed sysvinit; then
    rm -f /etc/init.d/smartd
    rm -f /etc/rc?.d/???smartd
fi
