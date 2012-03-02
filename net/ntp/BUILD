(
#if you're gonna change something in here make doggone sure you
#eyeball the init script too!

  sedit "s: | MOD_NANO::"  ntpd/ntp_loopfilter.c  &&

  ./configure   --build=$BUILD               \
                --prefix=/usr                \
                --bindir=/usr/sbin           \
                --sbindir=/usr/sbin          \
                --datadir=/usr/share         \
                --infodir=/usr/share/info    \
                --mandir=/usr/share/man      \
                --sysconfdir=/etc            \
                --enable-linuxcaps           \
                --localstatedir=/var/cache  &&
  default_make                              &&

  if [ -e "/etc/init.d/ntp.sh" ]; then
     rm -f /etc/init.d/ntp.sh
  fi  &&

  if [ -e "/etc/rc?.d/*ntp.sh" ]; then
     rm -f /etc/rc?.d/*ntp.sh
  fi  &&

  gather_docs html &&

  if [ ! -e /etc/ntp.conf ]; then
    install -m644 $SCRIPT_DIRECTORY/ntp.conf /etc
  fi

) > $C_FIFO 2>&1
