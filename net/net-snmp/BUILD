(

  SYS_CONTACT="--with-sys-contact=root@`hostname -f`"
  PERSISTENT="--with-persistent-directory=/var/state/ucd-snmp"
  DEFAULTS="--with-defaults"

  ./configure  --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               $SYS_CONTACT          \
               $PERSISTENT           \
               $DEFAULTS             \
               $OPTS                &&
  default_make                      &&
  if [ ! -e /etc/config.d/snmpd ] ; then
      install -m644 $SCRIPT_DIRECTORY/snmpd /etc/config.d/snmpd
  fi  &&

  mkdir -p /var/state/ucd-snmp

) > $C_FIFO 2>&1
