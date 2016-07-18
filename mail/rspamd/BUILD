add_priv_user _rspamd:rspamd &&

OPTS+=" -DNO_SHARED=ON \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCONFDIR=/etc/rspamd \
        -DRUNDIR=/run/rspamd \
        -DLOGDIR=/var/log/rspamd \
        -DRSPAMD_USER='_rspamd' \
        -DDBDIR=/var/lib/rspamd \
        -DWANT_SYSTEMD_UNITS=ON" &&

default_cmake_build &&

rm -fr /usr/share/examples

