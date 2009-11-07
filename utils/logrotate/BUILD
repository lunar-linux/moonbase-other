(

  # Logrotate craps out without this
  unset CPP

  make RPM_OPT_FLAGS="${CFLAGS}"     &&
  prepare_install                    &&
  make install                       &&

  mkdir -p /etc/logrotate.d \
           /var/lib/logrotate &&

  if [ ! -e /etc/logrotate.conf ] ; then
    install -m 0644 examples/logrotate-default /etc/logrotate.conf
  fi &&

  if [ ! -d /etc/cron.daily ]; then 
    mkdir -p /etc/cron.daily
  fi &&

  if [ ! -e /etc/cron.daily/logrotate ]; then
    install -m 0644 examples/logrotate.cron /etc/cron.daily/logrotate
  fi &&

  gather_docs examples

) > $C_FIFO 2>&1
