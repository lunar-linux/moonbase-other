(

  ./autogen.sh --build=$BUILD                      \
               --prefix=$MODULE_PREFIX             \
               --sysconfdir=/etc                   \
               --localstatedir=/var                \
               --infodir=$MODULE_PREFIX/share/info \
               --mandir=$MOUDLE_PREFIX/share/man   \
               --with-x                            \
               $OPTS                               &&

   default_build

) > $C_FIFO 2>&1
