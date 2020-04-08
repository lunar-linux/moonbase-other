add_priv_user netdata:netdata &&

OPTS+=" --sbindir=/usr/bin \
        --with-zlib \
        --with-math \
        --with-user=netdata"

default_build &&

install -Dm0644 "system/netdata.logrotate" "/etc/logrotate.d/netdata" &&
if module_installed systemd; then
   install -Dm0644 "system/netdata.service.v235" "/usr/lib/systemd/system/netdata.service"
fi
