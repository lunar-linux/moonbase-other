(

  PS_CONF='#define  CONFIG_FILE "/etc/portsentry/portsentry.conf"'

  cp    portsentry_config.h  portsentry_config.h.original
  grep  -v  "CONFIG_FILE"    portsentry_config.h.original  \
                          >  portsentry_config.h
  echo  $PS_CONF         >>  portsentry_config.h

  sedit "s/CFLAGS = -O -Wall/CFLAGS := -O -Wall \$\(CFLAGS\)/"  \
        Makefile

  make linux                       &&
  prepare_install                  &&
  cp portsentry /usr/sbin          &&
  mkdir -p /etc/portsentry         &&
  chmod 700 /etc/portsentry        &&

  if ! [ -f /etc/portsentry/portsentry.conf ] ; then
    sedit "s:/usr/local/psionic:/etc:" portsentry.conf
    install -m600 portsentry.conf /etc/portsentry
  fi &&

  if ! [ -f /etc/portsentry/portsentry.ignore ] ; then
    install -m600 portsentry.ignore /etc/portsentry/portsentry.ignore
  fi &&

  if [ ! -f /etc/portsentry/portsentry.modes ] ; then
    echo -e "# default portsentry modes:\natcp\naudp" > /etc/portsentry/portsentry.modes
    chmod 600 /etc/portsentry/portsentry.modes
  fi

) > $C_FIFO 2>&1
