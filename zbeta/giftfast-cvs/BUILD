(
  sedit "s:AC_CONFIG_AUX_DIR::" configure.ac

  ./autogen.sh
 
  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --sysconfdir=/etc         \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               $OPTS                     &&

  make                                   &&
  prepare_install                        &&
  PREFIX=/usr/lib/giFT  make install

) > $C_FIFO 2>&1
