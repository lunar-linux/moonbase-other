(
  
  ./configure  --build=$BUILD                      \
               --prefix=$MODULE_PREFIX             \
               --sysconfdir=/etc                   \
               --localstatedir=/var                \
               --infodir=$MODULE_PREFIX/share/info \
               --mandir=$MODULE_PREFIX/share/man   \
               --with-x                            \
               --enable-fsstd                      \
               --enable-hints-ewmh                 \
               --enable-zoom                       \
               --enable-xrandr                     &&
  default_make

) > $C_FIFO 2>&1
