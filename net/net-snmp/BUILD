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
               $OPTS                 &&
  make                               &&
  prepare_install                    &&
  make    install                    &&
  if [ ! -e /etc/config.d/snmpd ]; then
      cp $SCRIPT_DIRECTORY/snmpd /etc/config.d/snmpd
  fi

) > $C_FIFO 2>&1
