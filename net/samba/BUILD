#For now this skirts around runtime error: file file:/usr/share/sgml/docbook/xsl-stylesheets-1.79.2/lib/lib.xsl line 56 element variable
#xsltApplySequenceConstructor: A potential infinite template recursion was detected; thus tanking the build.
#The current default is 3000 and apparently not enough 
XSLTPROC="xsltproc --maxdepth 15000" &&
export XSLTPROC &&

# Samba build will break if talloc is installed
if module_installed talloc; then
  lrm talloc
  export TALLOC=installed
fi &&

mkdir -p /etc/samba /usr/share/samba /var/log/samba &&

LDFLAGS+=" -Wl,--no-as-needed" &&

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
install -m644 examples/smb.conf.default /etc/samba/smb.conf.default &&

# fix logrotate
sedit 's|log.%m|%m.log|g' /etc/samba/smb.conf.default &&

if module_installed cups; then
  ln -sf /usr/bin/smbspool /usr/lib/cups/backend/smb
fi
