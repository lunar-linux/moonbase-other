(
   
  mkdir -p /etc/logrotate.d          &&
  mkdir -p /etc/cron.daily           &&
  mkdir -p /var/lib                  &&
  cd $SOURCE_DIRECTORY               &&
  make                               &&
  prepare_install                    &&
  make install                       &&
  cp examples/logrotate-default /etc/logrotate.conf     &&
  cp examples/logrotate.cron /etc/cron.daily/logrotate  &&
  chmod 0755 /usr/sbin/logrotate                        &&
  chmod 0644 /usr/share/man/man8/logrotate.8            &&
  chmod 0755 /etc/cron.daily/logrotate                  &&
  chmod 0644 /etc/logrotate.conf                        &&
  chmod 0755 /etc/logrotate.d                           &&
  touch /var/lib/logrotate.status                       &&
  chmod 0644 /var/lib/logrotate.status

) > $C_FIFO 2>&1
