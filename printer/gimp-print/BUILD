(

  # from the README: it is not compatible with the GIMP 1.3 or 2.0
  ./configure  --build=$BUILD                      \
               --prefix=$MODULE_PREFIX             \
               --sysconfdir=/etc                   \
               --localstatedir=/var                \
               --infodir=$MODULE_PREFIX/share/info \
               --mandir=$MODULE_PREFIX/share/man   \
               --without-gimp                      \
               $OPTS                               &&
  default_build

) > $C_FIFO 2>&1
