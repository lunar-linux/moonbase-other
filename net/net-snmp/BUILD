SYS_CONTACT="--with-sys-contact=root@`hostname -f`" &&
PERSISTENT="--with-persistent-directory=/var/state/ucd-snmp" &&
DEFAULTS="--with-defaults" &&

# This takes care of the cannot find libperl.so rebuild that
# happens on a lunar fix.
PERL_MAJ_VER="`lvu version perl |cut -c 1`" &&
PERL_VER="`lvu version perl`" &&
PERL_SO_PATH="/usr/lib/perl$PERL_MAJ_VER/$PERL_VER/`arch`-linux-thread-multi/CORE/" &&

# So lets put all that together.
LDFLAGS="$LDFLAGS -Wl,-rpath,${PERL_SO_PATH}" &&

OPTS+=" --disable-static"

PYTHONPROG=/usr/bin/python2 \
           ./configure --prefix=/usr \
           --sysconfdir=/etc     \
           --localstatedir=/var  \
           --with-python-modules \
           $SYS_CONTACT          \
           $PERSISTENT           \
           $DEFAULTS             \
           $OPTS                &&

sedit "s:install --basedir=\$\$dir:install --basedir=\$\$dir --root=/usr:" Makefile &&

default_make &&

if [ ! -e /etc/config.d/snmpd ]; then
  install -m644 $SCRIPT_DIRECTORY/snmpd /etc/config.d/snmpd
fi &&

mkdir -p /var/state/ucd-snmp
