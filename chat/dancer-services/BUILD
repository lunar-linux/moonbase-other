(

  export DANCER_OPTS="PREFIX=/usr BINDIR=/usr/bin CONFDIR=/etc LIBS= HELPDIR=/usr/share/dancer-services/help SETPATH=/etc/dancer-services"

  sedit "s:AC_PREFIX_DEFAULT(/usr/local):AC_PREFIX_DEFAULT(/usr):" configure.ac
  sedit "s:/usr/local/:/usr/:g" configure.ac

  default_cvs_config
  default_config
  
  sedit "s:/usr/dancer-services/settings.conf:/etc/dancer-services/settings.conf:" include/config.h

  make $DANCER_OPTS depend
  make $DANCER_OPTS all
  
  prepare_install

  mkdir -p /usr/share/dancer-services/help
  
  make $DANCER_OPTS install

  if [ ! -e /etc/dancer-services ] ; then
    mkdir -p /etc/dancer-services
    install -m644 bin/motd.dcc /etc/dancer-services
    install -m644 bin/motd.global /etc/dancer-services
    install -m644 bin/settings.conf /etc/dancer-services
  fi
  

) > $C_FIFO 2>&1
