
OPTS+=" --with-jobdir=/var/spool/atd \
        --with-atspool=/var/spool/atd"

default_config &&
make &&
prepare_install &&
make docdir=/usr/share/doc install &&

[ -e /etc/at.deny ] || install -m644 at.deny /etc/
