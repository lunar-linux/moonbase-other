OPTS+=" --prefix=/usr \
        --sbindir=/usr/bin \
        --sysconfdir=/etc \
        --with-drivedbdir \
        --with-libcap-ng=yes \
        --with-smartdscriptdir=/usr/share/smartmontools \
        --with-smartdplugindir=/usr/share/smartmontools/smartd_warning.d"

if module_installed systemd; then
   OPTS+=" --with-libsystemd \
           --with-systemdsystemunitdir=/usr/lib/systemd/system"
fi

default_build &&

if ! module_installed sysvinit; then
   rm -f /etc/init.d/smartd
   rm -f /etc/rc?.d/???smartd
fi

if module_installed cron-commom || module_installed cronie ; then
   mkdir -p /etc/cron.monthly
   install $SCRIPT_DIRECTORY/updatesmartdrivedb /etc/cron.monthly/
fi
