(

  ./configure  --build=$BUILD                      \
               --prefix=$MODULE_PREFIX             \
               --sysconfdir=/etc                   \
               --localstatedir=/var                \
               --infodir=$MODULE_PREFIX/share/info \
               --mandir=$MODULE_PREFIX/share/man   \
               --with-user-guide                   \
               --with-samples                      \
               --with-escputil                     \
               $OPTS                               &&
  default_build

) > $C_FIFO 2>&1
