add_priv_user netdata:netdata &&

sedit "s:/usr/sbin:/usr/bin:" system/netdata.service.v235.in &&

OPTS+=" --sbindir=/usr/bin \
        --sysconfdir=/etc \
        --with-zlib \
        --with-math \
        --without-bundled-protobuf \
        --with-user=netdata"

default_build &&

if [ ! -f "/etc/netdata/netdata.conf" ];then
  install -Dm644 system/netdata.conf /etc/netdata/netdata.conf &&
  install -Dm644 system/netdata.conf /etc/netdata/netdata.conf.default
fi &&

install -Dm0644 "system/netdata.logrotate" "/etc/logrotate.d/netdata" &&

if module_installed systemd; then
   install -Dm0644 system/netdata.service.v235 /usr/lib/systemd/system/netdata.service
fi
