OPTS+=" --prefix=/usr \
        --sysconfdir=/etc/syslog-ng \
        --localstatedir=/var/lib/syslog-ng \
        --datadir=/usr/share \
        --with-ivykis=system \
        --disable-amqp \
        --disable-java \
        --disable-kafka \
        --disable-riemann \
        --disable-spoof-source \
        --enable-ipv6 \
        --enable-manpages \
        --with-python=3 \
        --with-criterion=no \
        --with-embedded-crypto \
        --with-pidfile-dir=/run"

if module_installed systemd; then
   OPTS+=" --enable-systemd --with-systemd-journal=system"
else
   OPTS+=" --disable-systemd --with-systemd-journal=no"
fi

default_build &&

install -dm755 /var/lib/syslog-ng /etc/syslog-ng/patterndb.d &&
install -Dm644 $SCRIPT_DIRECTORY/syslog-ng.conf /etc/syslog-ng/syslog-ng.conf &&

# See http://lists.balabit.hu/pipermail/syslog-ng/2016-February/022667.html
rm -r /usr/share/syslog-ng/include/scl/cim &&

add_priv_group log
