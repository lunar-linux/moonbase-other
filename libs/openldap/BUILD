autoconf &&

bad_flags ALL
export CPPFLAGS=-D_GNU_SOURCE

OPTS+=" --build=$BUILD    \
        --prefix=/usr     \
        --sysconfdir=/etc \
        --mandir=/usr/share/man   \
        --infodir=/usr/share/info \
        --localstatedir=/var/lib/openldap \
        --with-gnu-ld     \
        --with-threads    \
        --enable-local    \
        --enable-slapd    \
        --enable-modules  \
        --enable-crypt    \
        --enable-dynamic  \
        --enable-backends \
        --enable-syslog   \
        --enable-shared   \
        --enable-rewrite  \
        --enable-ldap     \
        --enable-meta     \
        --enable-monitor  \
        --enable-null     \
        --enable-passwd   \
        --enable-shell    \
        --enable-ipv6     \
        --enable-dnssrv   \
        --enable-ndb=no   \
        --enable-sql=no   \
        --enable-bdb=yes  \
        --disable-static" &&

default_build &&

add_priv_user ldap:ldap
