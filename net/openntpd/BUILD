add_priv_user ntp:ntp -d /var/empty &&

OPTS+=" --with-privsep-user=ntp \
        --with-privsep-path=/run/openntpd \
        --localstatedir=/var/lib/ntp" &&

default_build
