 # Change to use python2
SAVEIFS=${IFS}
IFS=$(echo -en "\n\b")
PYTHON_CALLERS="$(find . -name '*.py')
                $(find . -name 'wscript*')
                $(find . -name 'configure.ac')
                $(find . -name 'upgrade_from_s3')
                $(find ./buildtools -type f)
                $(find ./source4/scripting -type f)"
sed -i -e "s|/usr/bin/env python$|/usr/bin/env python2|" \
       -e "s|python-config|python2-config|" \
       -e "s|bin/python|bin/python2|" \
       ${PYTHON_CALLERS}
IFS=${SAVEIFS}
export PYTHON=/usr/bin/python2 &&

#For now this skirts around runtime error: file file:/usr/share/sgml/docbook/xsl-stylesheets-1.79.2/lib/lib.xsl line 56 element variable
#xsltApplySequenceConstructor: A potential infinite template recursion was detected; thus tanking the build.
#The current default is 3000 and apparently not enough 
XSLTPROC="xsltproc --maxdepth 15000" &&
export XSLTPROC &&

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
