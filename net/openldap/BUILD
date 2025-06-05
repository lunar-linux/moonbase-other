# change perms from 0644 to 0755
sed -i 's|-m 644 $(LIBRARY)|-m 755 $(LIBRARY)|' libraries/{liblber,libldap}/Makefile.in

# change rundir to /run/openldap
sed -i 's|#define LDAPI_SOCK LDAP_RUNDIR LDAP_DIRSEP "run" LDAP_DIRSEP "ldapi"|#define LDAPI_SOCK LDAP_DIRSEP "run" LDAP_DIRSEP "openldap" LDAP_DIRSEP "ldapi"|' include/ldap_defaults.h
sed -i 's|%LOCALSTATEDIR%/run|/run/openldap|' servers/slapd/slapd.{conf,ldif}
sed -i 's|-$(MKDIR) $(DESTDIR)$(localstatedir)/run|-$(MKDIR) $(DESTDIR)/run/openldap|' servers/slapd/Makefile.in

# modify upstream systemd service
sed -i -e "s|EnvironmentFile.*|EnvironmentFile=-/etc/conf.d/slapd|" -e "s/slapd -d 0/\0 -u ldap -g ldap/" servers/slapd/slapd.service

#bad_flags ALL
#export CPPFLAGS=-D_GNU_SOURCE

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
        --enable-ldap     \
        --enable-meta     \
        --enable-dnssrv   \
        --enable-null     \
        --enable-passwd   \
        --enable-ipv6     \
        --disable-wt      \
        --disable-sql     \
        --disable-static"

default_build &&

add_priv_user ldap:ldap
