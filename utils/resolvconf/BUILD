(

  # move the package to /usr
  sedit "s@\(PATH=.*\)@\1:/usr/bin@" bin/resolvconf &&
  sedit "s@\(PATH=/sbin:/bin\)@\1:/usr/bin@" etc/resolvconf/update.d/libc &&
  sedit "s@\(/lib/resolvconf/list-records\)@/usr\1@" etc/resolvconf/update.d/* &&

  prepare_install &&

  install -Dm0755 bin/resolvconf /usr/bin/ &&
  install -Dm0755 bin/list-records /usr/lib/resolvconf/list-records &&

  cp -rv etc/resolvconf /etc/ &&
  ln -sf /run/resolvconf/ /etc/resolvconf/run &&

  # backup original resolv.conf
  if [ ! -e /etc/resolv.conf ] || [ ! -L /etc/resolv.conf ]; then
     if [ -e /etc/resolv.conf ]; then
        mv /etc/resolv.conf /etc/resolvconf/resolv.conf.d/original
     fi &&
     # /etc/resolv.conf is protected and will not be listed in install
     ln -s /etc/resolvconf/run/resolv.conf /etc/resolv.conf
  fi &&

  install -m644 man/resolvconf.8 /usr/share/man/man8/ &&
  install -m644 man/interface-order.5 /usr/share/man/man5/

) > $C_FIFO 2>&1
