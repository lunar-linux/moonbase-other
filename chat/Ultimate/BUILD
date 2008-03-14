(

  add_priv_user ultimate:ultimate "-m -s /bin/sh -d /var/lib/ultimateircd" &&

  if [ "$IPV6" == "y" ]; then 
      OPTS="$OPTS --enable-ipv6"
  fi
  if [ "$Acebot" == "y" ]; then 
      OPTS="$OPTS --enable-acebot-rejection"
  fi
  if [ "$Chinese" == "y" ]; then 
      OPTS="$OPTS --enable-chinese-nick"
  fi
  if [ "$Crypt" == "y" ]; then 
      OPTS="$OPTS --disable-crypted-oper-password"
  fi
  if [ "$Chanops" == "y" ]; then 
      OPTS="$OPTS --disable-no-chanops-when-split"
  fi
  
  # We don't need the lame default start/stop/rehash scripts
  sedit "/^SCRIPTS/ s;=.*;=;" tools/Makefile.in &&

  # Ugly fix for retarded write_pid function
  sedit "/ircsprint.*getpid/ s:%5d:%d:" src/s_bsd.c &&

  # Fix some paths that are oddly harcoded
  sedit "/^#define.*ETCPATH/ s;IRCD_PREFIX.*;\"/etc/ultimateircd\";" include/config.h &&
  sedit "/^#define.*LOGPATH/ s;IRCD_PREFIX.*;\"/var/log/ultimateircd\";" include/config.h &&
  sedit "/^#define.*PPATH/ s;ETCPATH.*;\"/var/run/ircd.pid\";" include/config.h &&

  ./configure      --prefix=/usr   \
                   --sysconfdir=/etc/ultimateircd \
                   --mandir=/usr/share/man   \
                   --infodir=/usr/share/info \
                   --localstatedir=/var/lib/ultimateircd \
                   --with-maxclients=$[`ulimit -n`-20]   \
                   $OPTS                     &&
  make  &&
  prepare_install &&
  make install &&
  
  # Rename mkpasswd
  mv -f /usr/bin/mkpasswd /usr/bin/ultimatemkpasswd &&
  chown -R ultimate:ultimate /var/lib/ultimateircd &&
  ln -sf /var/lib/ultimateircd/logs /var/log/ultimateircd
 
) > $C_FIFO 2>&1
