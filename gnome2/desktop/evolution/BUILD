(

 ./configure  --prefix=${GNOME210_PREFIX:-/usr}                 \
               --sysconfdir=/etc                                \
               --localstatedir=/var                             \
               --mandir=${GNOME210_PREFIX:-/usr}/share/man      \
               --infodir=${GNOME210_PREFIX:-/usr}/share/info    \
               --enable-ipv6=yes                                \
               --enable-nntp=yes                                \
               --enable-imap4                                   \
               $OPTS                                            &&
  default_make                                                  &&

  if ! grep -q '/usr/lib/bonobo/servers' /etc/bonobo-activation/bonobo-activation-config.xml ; then
    sedit "s:<searchpath>:<searchpath>\n\t<item>/usr/lib/bonobo/servers</item>:" /etc/bonobo-activation/bonobo-activation-config.xml
  fi

) > $C_FIFO 2>&1
