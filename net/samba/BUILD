LDFLAGS+=" -Wl,--no-as-needed" &&

OPTS+=" --libexecdir=/usr/lib" &&

BUNDLED_LIBRARIES="!talloc,!pytalloc-util,!popt" &&

if in_depends $MODULE tdb; then
  BUNDLED_LIBRARIES+=",!tdb"
fi &&

./configure \
       --enable-fhs            \
       --prefix=/usr           \
       --sbindir=/usr/bin      \
       --libdir=/usr/lib       \
       --libexecdir=/usr/lib/samba \
       --sysconfdir=/etc       \
       --localstatedir=/var    \
       --mandir=/usr/share/man \
       --enable-fhs            \
       --disable-rpath-install \
       --with-piddir=/var/run  \
       --with-configdir=/etc/samba \
       --with-lockdir=/var/cache/samba \
       --with-sockets-dir=/var/run/samba \
       --with-pammodulesdir=/usr/lib/security \
       --bundled-libraries=$BUNDLED_LIBRARIES \
       --disable-rpath-install \
       $OPTS &&

default_make &&

# install sample smb.conf
install -m644 packaging/LSB/smb.conf /etc/samba/smb.conf.default &&
install -dm1777 /var/spool/samba &&
install -dm700 /etc/samba/private &&

# fix logrotate
sedit 's|log.%m|%m.log|g' /etc/samba/smb.conf.default &&

if in_depends $MODULE cups; then
  ln -sf /usr/bin/smbspool /usr/lib/cups/backend/smb
fi
