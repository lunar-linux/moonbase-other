(

  sedit "s:/var/lib/logrotate.status:/var/state/logrotate:g" config.h &&
  
  make                               &&
  prepare_install                    &&
  make install                       &&

  mkdir -p /etc/logrotate.d          &&
  mkdir -p /etc/cron.daily           &&
  
  if [ ! -e /etc/logrotate.conf ] ; then
    cp examples/logrotate-default /etc/logrotate.conf
  fi                                                    &&
  cp examples/logrotate.cron /etc/cron.daily/logrotate  &&
  chmod 0755 /usr/sbin/logrotate                        &&
  chmod 0644 /usr/share/man/man8/logrotate.8            &&
  chmod 0755 /etc/cron.daily/logrotate                  &&
  chmod 0644 /etc/logrotate.conf                        &&
  chmod 0755 /etc/logrotate.d

) > $C_FIFO 2>&1
