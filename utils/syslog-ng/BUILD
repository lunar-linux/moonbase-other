OPTS+=" --prefix=/usr \
        --sysconfdir=/etc/syslog-ng \
        --localstatedir=/var/lib/syslog-ng \
        --datadir=/usr/share \
        --disable-amqp \
        --disable-java \
        --disable-riemann \
        --disable-spoof-source \
        --enable-ipv6 \
        --enable-manpages \
        --with-criterion=no \
        --with-pidfile-dir=/run \
        --with-embedded-crypto"

if module_installed systemd; then
   OPTS+="--enable-systemd --with-systemd-journal=system"
else
   OPTS+="--disable-systemd --with-systemd-journal=no"
fi

default_build &&

install -dm755 /var/lib/syslog-ng /etc/syslog-ng/patterndb.d &&
install -Dm644 $SCRIPT_DIRECTORY/syslog-ng.conf /etc/syslog-ng/syslog-ng.conf &&

# See http://lists.balabit.hu/pipermail/syslog-ng/2016-February/022667.html
rm -r /usr/share/syslog-ng/include/scl/cim
