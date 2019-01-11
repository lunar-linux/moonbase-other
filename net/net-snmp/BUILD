DEFAULTS="--with-defaults"
PERSISTENT="--with-persistent-directory=/var/net-snmp"
SYS_CONTACT="--with-sys-location='Unknown' \
             --with-sys-contact=root@`hostname -f`" &&

# This takes care of the cannot find libperl.so rebuild that
# happens on a lunar fix.
PERL_MAJ_VER="`lvu version perl |cut -c 1`" &&
PERL_VER="`lvu version perl`" &&
PERL_SO_PATH="/usr/lib/perl$PERL_MAJ_VER/$PERL_VER/`arch`-linux-thread-multi/CORE/" &&

# So lets put all that together.
LDFLAGS="$LDFLAGS -Wl,-rpath,${PERL_SO_PATH}" &&

OPTS+=" --disable-static \
        --enable-ucd-snmp-compatibility \
        --with-logfile=/var/log/snmpd.log \
        --with-mib-modules=host,tunnel,misc/ipfwacc,ucd-snmp/diskio,ucd-snmp/dlmod"

if module_installed systemd; then
 OPTS+=" --with-systemd"
fi

PYTHONPROG=/usr/bin/python2 \
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
