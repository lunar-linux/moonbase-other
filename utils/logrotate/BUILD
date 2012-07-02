(

  # Logrotate craps out without this
  unset CPP

  patch_it $SOURCE2 1 &&

  # A few fixes for logrotate.conf
  sedit 's:^dateext:#&:;s:^#compress:compress:;/^compress/acompresscmd /usr/bin/bzip2' examples/logrotate-default &&
  sedit '/^compresscmd/acompressext .bz2' examples/logrotate-default &&

  make RPM_OPT_FLAGS="${CFLAGS}"     &&

  # We don't want the status file tracked
  touch /var/lib/logrotate.status    &&

  prepare_install                    &&
  make install                       &&

  mkdir -p /etc/logrotate.d          &&

  if [ ! -e /etc/logrotate.conf ]; then
    install -m 0644 examples/logrotate-default /etc/logrotate.conf
  fi &&

  gather_docs examples

) > $C_FIFO 2>&1
