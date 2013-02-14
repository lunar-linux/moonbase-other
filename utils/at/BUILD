OPTS+=" --with-jobdir=/var/spool/atd \
        --with-atspool=/var/spool/atd" &&

default_config &&
make &&
prepare_install &&
make docdir=/usr/share/doc install &&

if [ ! -e /etc/at.deny ]; then
   install -m644 at.deny /etc/
fi
