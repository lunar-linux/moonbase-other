# Samba build will break if talloc is installed
if module_installed talloc; then
  lrm talloc
  export TALLOC=installed
fi &&

mkdir -p /etc/samba /usr/share/samba /var/log/samba &&

LDFLAGS+=" -Wl,--no-as-needed" &&

OPTS+=" --libexecdir=/usr/lib" &&

./buildtools/bin/waf configure \
       --prefix=/usr           \
       --sysconfdir=/etc       \
       --localstatedir=/var    \
       --with-piddir=/var/run  \
       --mandir=/usr/share/man \
       --enable-fhs            \
       --disable-rpath-install \
       --with-piddir=/var/run  \
       --with-configdir=/etc/samba \
       --with-lockdir=/var/cache/samba \
       --with-sockets-dir=/var/run/samba \
       --with-pammodulesdir=/usr/lib/security \
       $OPTS &&

default_make &&

# install sample smb.conf
install -m644 packaging/LSB/smb.conf /etc/samba/smb.conf.default &&

# fix logrotate
sedit 's|log.%m|%m.log|g' /etc/samba/smb.conf.default &&

if module_installed cups; then
  ln -sf /usr/bin/smbspool /usr/lib/cups/backend/smb
fi
