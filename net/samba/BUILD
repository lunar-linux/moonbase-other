export XML_CATALOG_FILES=/etc/xml/catalog
#For now this skirts around runtime error: file file:/usr/share/sgml/docbook/xsl-stylesheets-1.79.2/lib/lib.xsl line 56 element variable
#xsltApplySequenceConstructor: A potential infinite template recursion was detected; thus tanking the build.
#The current default is 3000 and apparently not enough
export XSLTPROC="xsltproc --maxdepth 15000" &&

LDFLAGS+=" -Wl,--no-as-needed" &&
BUNDLED_LIBRARIES="!talloc,!pytalloc-popt,!popt"

if in_depends $MODULE tdb; then
  BUNDLED_LIBRARIES+=",!tdb"
fi

if module_installed systemd; then
   OPTS+=" --with-systemd --systemd-install-services"
fi

./configure \
       --prefix=/usr           \
       --sysconfdir=/etc       \
       --localstatedir=/var    \
       --mandir=/usr/share/man \
       --disable-rpath-install \
       --enable-fhs            \
       --with-piddir=/run      \
       --with-configdir=/etc/samba \
       --with-sockets-dir=/run/samba \
       --with-lockdir=/var/cache/samba \
       --with-pammodulesdir=/usr/lib/security \
       --bundled-libraries=$BUNDLED_LIBRARIES \
       $OPTS &&

default_make &&

# install sample smb.conf
install -m644 examples/smb.conf.default /etc/samba/smb.conf.default &&
install -dm1777 /var/spool/samba &&
install -dm700 /etc/samba/private &&
mkdir -p /var/log/samba &&

# fix logrotate
sedit 's|log.%m|%m.log|g' /etc/samba/smb.conf.default &&

if module_installed cups; then
  ln -sf /usr/bin/smbspool /usr/lib/cups/backend/smb
fi
