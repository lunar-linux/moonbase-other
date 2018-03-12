prepare_install &&

OPTS+=" --prefix=/usr \
        --sysconfdir=/etc/syslog-ng \
        --localstatedir=/var/lib/syslog-ng \
        --datadir=/usr/share \
        --with-pidfile-dir=/run \
        --disable-amqp \
        --disable-java \
        --disable-fava-modules \
        --disable-spoof-source \
        --enable-ipv6 \
        --enable-manpages" &&

default_build &&

install -dm755 /var/lib/syslog-ng /etc/syslog-ng/{conf,patterndb}.d &&
install -Dm644 $SCRIPT_DIRECTORY/syslog-ng.conf /etc/syslog-ng/syslog-ng.conf &&

# See http://lists.balabit.hu/pipermail/syslog-ng/2016-February/022667.html
rm -r /usr/share/syslog-ng/include/scl/cim
