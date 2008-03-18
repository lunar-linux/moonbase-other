(

  add_priv_user amavis:amavis -d /var/amavis -s /bin/true  &&

  prepare_install  &&

  install -m0755 amavisd /usr/sbin/  &&

  if ! [ -d /var/amavis ] ; then
      mkdir -m750 -p /var/amavis
      chown amavis:amavis /var/amavis
  fi  &&

  if ! [ -e /etc/amavisd.conf ] ; then
    install -m0644 amavisd.conf /etc/
  fi
   
) > $C_FIFO
