(
  sedit "s/usr\/local\/lib\/ladspa/usr\/lib\/ladspa/" Makefile.am

  ./configure  --prefix=/usr         \
               --exec-prefix=/usr    \
               --bindir=/usr/bin     \
               --sbindir=/usr/sbin   \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               --libdir=/usr/lib     \
               $OPTS                 &&
  make                               &&
  prepare_install                    &&
  make    install                    &&
  echo " "                           &&
  echo "If automake was installed $MODULE's BUILD removed it." &&
  echo "So be sure and reinstall it if you need it!"           &&
  echo " "

) > $C_FIFO 2>&1
