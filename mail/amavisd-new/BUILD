(

  sedit "s@'vscan';@'amavis';@" amavisd.conf &&
  add_priv_user amavis:amavis -d /var/amavis -s /bin/true  &&

  prepare_install  &&

  install -m0755 amavisd /usr/sbin/  &&

  mkdir -m750 -p /var/amavis/{tmp,db} &&
  chown -R amavis:amavis /var/amavis &&

  if ! [ -e /etc/amavisd.conf ] ; then
    install -m0644 amavisd.conf /etc/
  fi

) > $C_FIFO
