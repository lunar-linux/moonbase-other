# The two autotools jokers NEED to be run first. Closes BR278.
autoheader &&
autoconf &&

add_priv_user privoxy:privoxy &&

OPTS+=" --with-user=privoxy \
        --with-group=privoxy \
        --sysconfdir=/etc/privoxy \
        --enable-compression" &&

default_build
