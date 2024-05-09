autoreconf -if &&

DEFAULTS="--with-defaults"
PERSISTENT="--with-persistent-directory=/var/net-snmp"
SYS_CONTACT="--with-sys-location='Unknown' \
             --with-sys-contact=root@`hostname -f`" &&

OPTS+=" --disable-static \
        --with-default-snmp-version=3 \
        --enable-ucd-snmp-compatibility \
        --with-logfile=/var/log/snmpd.log \
        --with-mib-modules=host,tunnel,misc/ipfwacc,ucd-snmp/diskio,ucd-snmp/dlmod"

if module_installed systemd; then
 OPTS+=" --with-systemd"
fi

export PYTHONDONTWRITEBYTECODE=1 &&

PYTHONPROG=/usr/bin/python3 \
           ./configure --prefix=/usr \
           --sysconfdir=/etc  \
           --localstatedir=/var \
           $SYS_CONTACT \
           $PERSISTENT \
           $DEFAULTS \
           $OPTS &&

sedit "s:DESTDIR         =:DESTDIR         = /:" Makefile &&

default_make &&

if [ ! -e /etc/config.d/snmpd ]; then
  install -m644 $SCRIPT_DIRECTORY/snmpd /etc/config.d/snmpd
fi &&

mkdir -p /var/state/ucd-snmp
