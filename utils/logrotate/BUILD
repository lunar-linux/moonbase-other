(

  patch_it $SOURCE2 1 &&
  
  # Logrotate craps out without this
  unset CPP			     &&
  make                               &&
  prepare_install                    &&
  make install                       &&

  mkdir -p /etc/logrotate.d          &&
  mkdir -p /var/state/logrotate      &&
  mkdir -p /usr/share/doc/logrotate  &&

  if [ ! -e /etc/logrotate.conf ] ; then
    cp examples/logrotate-default /etc/logrotate.conf &&
    chmod 0644 /etc/logrotate.conf
  fi &&

  if [ -d /etc/cron.daily -a ! -e /etc/cron.daily/logrotate ]; then
    cp examples/logrotate.cron /etc/cron.daily/logrotate &&
    chmod 0755 /etc/cron.daily/logrotate
  fi &&

  if [ -d /usr/share/doc/logrotate ]; then
    cp -r examples /usr/share/doc/logrotate/
  fi &&

  chmod 0755 /usr/sbin/logrotate                        &&
  chmod 0644 /usr/share/man/man8/logrotate.8            &&
  chmod 0755 /etc/logrotate.d                           &&
  chmod 0755 /var/state/logrotate

) > $C_FIFO 2>&1
