OPTS+=" --with-smartdplugindir=/usr/share/smartmontools/smartd_warning.d \
        --with-smartdscriptdir=/usr/share/smartmontools \
        --with-drivedbdir \
        --prefix=/usr" &&

sed -i -e "s:sysconfig/smartmontools:conf.d/smartd:g" smartd.service.in &&
sed -i -e "s:smartd_opts:SMARTD_ARGS:g" smartd.service.in &&

default_build &&

install -Dm644 smartd.conf /etc/conf.d/smartd
