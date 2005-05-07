(

  prepare_install &&

  cp amavisd /usr/sbin/amavisd &&
  chown 755 /usr/sbin/amavisd &&

  add_priv_user amavis:amavis -d /var/amavis -s /bin/true

  if [ ! -e /var/amavis ]; then
      mkdir /var/amavis &&
      chown amavis:amavis /var/amavis &&
      chmod 750 /var/amavis
  fi
  if [ ! -e /etc/amavisd.conf ] ; then
    install -m0644 amavisd.conf /etc/
  fi
   
) > $C_FIFO
