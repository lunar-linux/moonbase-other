add_priv_user netdata:netdata &&

OPTS+=" --sbindir=/usr/bin \
        --sysconfdir=/etc \
        --libexecdir=/usr/lib \
        --localstatedir=/var \
        --with-zlib \
        --with-math \
        --without-bundled-protobuf \
        --with-user=netdata"

default_build &&

if [ ! -f "/etc/netdata/netdata.conf" ];then
  install -Dm644 system/netdata.conf /etc/netdata/netdata.conf &&
  install -Dm644 system/netdata.conf /etc/netdata/netdata.conf.default
fi &&

install -Dm0644 "system/logrotate/netdata" "/etc/logrotate.d/netdata" &&

if module_installed systemd; then
   install -Dm0644 system/systemd/netdata.service.v235 /usr/lib/systemd/system/netdata.service &&
   install -Dm0644 system/systemd/netdata-updater.service /usr/lib/systemd/system/netdata-updater.service &&
   install -Dm0644 $SCRIPT_DIRECTORY/sysusers.d/netdata.conf /usr/lib/sysusers.d/netdata.conf
fi
