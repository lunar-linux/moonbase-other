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

  gather_docs examples

) > $C_FIFO 2>&1
