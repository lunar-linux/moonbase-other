add_priv_user clamav:clamav -s /bin/false -c "clamav" &&

OPTS+=" --sbindir=/usr/bin \
        --sysconfdir=/etc/clamav \
        --with-dbdir=/var/lib/clamav \
        --with-user-clamav  \
        --with-group=clamav \
        --disable-rpath \
        --disable-llvm \
        --enable-clamdtop \
        --enable-zlib-vcheck" &&

default_build &&

mkdir -p -m 0755 /var/lib/clamav &&

mkdir -p /etc/clamav &&
install -Dm644 $SCRIPT_DIRECTORY/clamd.conf /etc/clamav/clamd.conf &&
install -Dm644 $SCRIPT_DIRECTORY/freshclam.conf /etc/clamav/freshclam.conf &&
install -Dm644 $SCRIPT_DIRECTORY/sysusers.d/clamav.conf /usr/lib/sysusers.d/clamav.conf
