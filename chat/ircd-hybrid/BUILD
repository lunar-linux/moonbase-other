(

  ./configure --build=$BUILD            \
              --prefix=/usr             \
              --sysconfdir=/etc         \
              --localstatedir=/var      \
              --infodir=/usr/share/info \
              --mandir=/usr/share/man   \
	      --datadir=/usr/share/ircd \
	      --libexecdir=/usr/libexec/ircd \
              $OPTS

  sedit "s:/usr/modules:/usr/libexec/ircd/modules:g" modules/Makefile &&
  sedit "s:\${prefix}/help:\${prefix}/share/ircd/help:g" help/Makefile &&
  sedit "s:/usr/man8:/usr/share/man/man8:g" doc/Makefile &&
  sedit "s:/usr/messages:/usr/share/locale:g" messages/Makefile &&
  make            &&
  prepare_install &&
  mkdir -p /usr/libexec/ircd/modules /usr/share/ircd/help/users \
           /usr/share/ircd/help/opers &&
  make install

) > $C_FIFO 2>&1
