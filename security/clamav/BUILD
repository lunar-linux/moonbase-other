add_priv_user clamav:clamav -s /bin/false -c "clamav"  &&

OPTS+=" --sysconfdir=/etc/clamav \
        --with-dbdir=/var/lib/clamav \
        --with-user-clamav  \
        --with-group=clamav \
        --disable-rpath"   &&

default_build &&

mkdir -p -m 0755 /var/lib/clamav &&

mkdir -p /etc/clamav &&
install -Dm644 $SCRIPT_DIRECTORY/clamd.conf /etc/clamav/clamd.conf &&
install -Dm644 $SCRIPT_DIRECTORY/freshclam.conf /etc/clamav/freshclam.conf &&

mkdir -p /usr/lib/tmpfiles.d &&
install -Dm644 $SCRIPT_DIRECTORY/tmpfiles.d /usr/lib/tmpfiles.d/clamav.conf &&

mkdir -p /etc/logrotate.d &&
install -Dm644 $SCRIPT_DIRECTORY/logrotate /etc/logrotate.d/clamav
